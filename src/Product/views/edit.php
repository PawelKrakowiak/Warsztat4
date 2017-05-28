<?php
  $product = General::getData();
  $id = $product['id'];
  $name = $product['name'];
  $amount = $product['amount'];
  $price = $product['price'];
  $shortDesc = $product['short_description'];
  $longDesc = $product['long_description'];
?>

<form action="/Warsztat4/src/index.php/products/edit?id='<?php echo $id ?>'" method="post"  
      enctype="multipart/form-data" class = form-inline>
    Nazwa:<br>
    <input type="text" name="name" value="<?php echo $name; ?>">
    <br>
    Liczba:<br>
    <input type="text" name="amount" value="<?php echo $amount; ?>">
    <br>
    Cena:<br>
    <input type="text" name="price" value="<?php echo $price; ?>">
    <br>
    Krótki opis:<br>
    <input type="text" name="short_description" value="<?php echo $shortDesc; ?>">
    <br>
    Pełny opis:<br>
    <textarea name='long_description'><?php echo $longDesc; ?></textarea>
    <br><br>
    <input type="submit" value="Dodaj">
</form> 
