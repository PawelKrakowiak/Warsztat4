<?php

class Image extends General {
  
  private $productId;
  private $src;
  
  static public function addImagesToProduct($productId, $files) {
    
    $images = $files['images'];
    
    for ($i = 0; $i < count($images['name']); $i++) {
      
      $uploaddir = __DIR__ . '/img/';
      $uploadfile = $uploaddir . basename($_FILES['images']['name'][$i]);
   
      if (move_uploaded_file($_FILES['images']['tmp_name'][$i], $uploadfile)) {
        
        $img = new Image();
        $img->setProductId($productId);
        $img->setSrc("/../../Warsztat4/src/Image/img/" . 
                      basename($_FILES['images']['name'][$i]));
        $img->save();        
        
      }
      
    }
  }
  
  static public function getProductImages($productId, $conn) {
    
    $sql = "SELECT src FROM Images WHERE product_id = $productId";
    
    $result = $conn->query($sql);
    
    if ($result == true)
    {    
      $images = [];
      
      while($img = mysqli_fetch_assoc($result)) {
        $images[] = $img["src"];
      }
      
//      var_dump($productId);
//      exit();
//      
      return $images;
    }
    
    return false;
  }
  
  public function save()
  {
      $conn = $this->getConnection();
              
      $sql = "INSERT INTO Images (product_id, src)
              VALUES ($this->productId, '$this->src')";
      
      $result = $conn->query($sql);
      
      if (!$result)
      {
        echo $conn->error;
        exit();
      }
  }
  
    
  public function getProductId() {
    return $this->productId;
  }

  public function getSrc() {
    return $this->src;
  }

  public function setProductId($productId) {
    $this->productId = $productId;
  }

  public function setSrc($src) {
    $this->src = $src;
  }


  
  
  
  
  
  
  
  
}
