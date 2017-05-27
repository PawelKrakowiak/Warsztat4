<?php

class Product extends General
{
    const VIEW_PATH = 'Product/views/';

    public function add(){

        if($this->is_post()){

            if($this->addProductValidation()){


                $name = $this->post['name'];
                $amount = $this->post['amount'];
                $price = $this->post['price'];
                $shortDescription = $this->post['short_description'];
                $longDescription = $this->post['lon_description'];

                $sqlStatement = "INSERT INTO Products(name, amount, price, short_description, long_description) "
                              . "VALUES ('$name', '$amount', '$price', '$shortDescription', '$longDescription')";

                $result = $this->getConnection()->query($sqlStatement);

                if ($result === true) {
                    $this->redirect('Warsztat4/src/index.php/products/index');
                }else{
                    echo $this->getConnection()->error;
                }

            }

            return false;
        }

        $this->render(Product::VIEW_PATH . 'add.html');
    }

    public function edit(string $id) {

    }

    public function delete(string $id) {

    }

    public function index(){

        $result = $this->getConnection()->query('SELECT * FROM Products');

        while ($row = mysqli_fetch_row($result)) {
            $data['Products'][] = $row;
        }

       $this->render(Product::VIEW_PATH . 'index.php',  $data);
    }

    private function addProductValidation()
    {
        return true;
    }


}