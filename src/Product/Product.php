<?php

class Product extends General
{
    const VIEW_PATH = 'Product/views/';

    public function add(){

        if ($this->is_post()){

            if ($this->addProductValidation()){


                $name = $this->post['name'];
                $amount = $this->post['amount'];
                $price = $this->post['price'];
                $shortDescription = $this->post['short_description'];
                $longDescription = $this->post['long_description'];
                
                $sqlStatement = "INSERT INTO Products(name, amount, price, short_description, long_description) "
                              . "VALUES ('$name', '$amount', '$price', '$shortDescription', '$longDescription')";

                $conn = $this->getConnection();
                $result = $conn->query($sqlStatement);

                if ($result === true) {
                  $productId = $conn->insert_id;
                  
                  Image::addImagesToProduct($productId, $this->files);
                  
                  $this->redirect('Warsztat4/src/index.php/products/index');
                } else {
                    echo $conn->error;
                }

            }

            return false;
        }

        $this->render(Product::VIEW_PATH . 'add.php');
    }

    public function view() {

      if (isset($this->get['id']))
      {
        $sql = "SELECT * FROM Products WHERE id =" . $this->get['id'];
        
        $conn = $this->getConnection();
        $result = $conn->query($sql);
 
        if ($result == true && $result->num_rows) {
            $product = mysqli_fetch_assoc($result);
            
            $images = Image::getProductImages($this->get['id'], $conn);
            
            $product["images"] = $images;
            
            $this->render(Product::VIEW_PATH . "view.php", $product);
        } else {
            echo $conn->error;
        }
        
        
      }
      
      return false;
      
    }
    
    public function edit() {
      
      if ($this->is_post() && isset($this->get['id'])) {
        
        if ($this->addProductValidation()) {
          
          
          $name = $this->post['name'];
          $amount = $this->post['amount'];
          $price = $this->post['price'];
          $shortDescription = $this->post['short_description'];
          $longDescription = $this->post['long_description'];

          $sql = "UPDATE Products SET 
                  name='$name', amount='$amount', price='$price', 
                  short_description='$shortDescription', long_description='$longDescription' 
                  WHERE id = " . $this->get['id'];


          $conn = $this->getConnection();
          $result = $conn->query($sql);

          if ($result === true) {
            $this->redirect('Warsztat4/src/index.php/products/view?id=' . $this->get['id']);
          } else {
              echo $conn->error;
          }
        }
        return false;
      }
      else if (isset($this->get['id'])) {
        $sql = "SELECT * FROM Products WHERE id =" . $this->get['id'];
        
        $conn = $this->getConnection();
        $result = $conn->query($sql);
 
        if ($result == true && $result->num_rows) {
            $product = mysqli_fetch_assoc($result);
                                    
            $this->render(Product::VIEW_PATH . "edit.php", $product);
        } else {
            echo $conn->error;
        }
      }
    }

    public function delete() {
        if (isset($this->get['id'])) {
          $sql = "DELETE FROM Products WHERE id = " . $this->get['id'];
          
          $conn = $this->getConnection();
          $result = $conn->query($sql);
          
          if ($result === true) {
            $this->redirect('Warsztat4/src/index.php/products/index');
          } else {
              echo $conn->error;
          }         
        }
    }

    public function index(){

        $result = $this->getConnection()->query('SELECT * FROM Products');

        while ($row = mysqli_fetch_assoc($result)) {
            $data['Products'][] = $row;
        }

       $this->render(Product::VIEW_PATH . 'index.php',  $data);
    }

    private function addProductValidation()
    {
        return true;
    }


}