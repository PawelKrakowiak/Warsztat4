<form action="/Warsztat4/src/index.php/products/add" method="post"  
      enctype="multipart/form-data" class = form-inline>
    Nazwa:<br>
    <input type="text" name="name">
    <br>
    Liczba:<br>
    <input type="text" name="amount">
    <br>
    Cena:<br>
    <input type="text" name="price">
    <br>
    Krótki opis:<br>
    <input type="text" name="short_description">
    <br>
    Pełny opis:<br>
    <textarea name='long_description'></textarea>
    <br>
    Zdjęcia:<br>
    <input type="file" name="images[]" multiple>
    <br><br>
    <input type="submit" value="Dodaj">
</form> 
