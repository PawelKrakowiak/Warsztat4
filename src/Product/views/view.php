<div class="container" style="width: 60%">
    <?php
    $product = General::getData();
    $id = $product['id'];
    $name = $product['name'];
    $price = $product['price'];
    $images = $product['images'];
    $amount = $product['amount'];
    $longDesc = $product['long_description'];
    
    echo "<h2>$name <small>$price zł</small></h2>";
    ?> 

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">

            <?php
            foreach ($images as $key => $img) {
              
              $class = !!$key ? '' : 'active';
              echo "<li data-target='#myCarousel' data-slide-to='$key' class='$class'></li>";
            }
            ?>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <?php
            foreach ($images as $key => $img) {
              
              $class = !!$key ? 'item' : 'item active';
              echo "<div class='$class'>" .
              "<img src='$img' alt='' style='width:100%'></div>";
            }
            ?>
            
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div>
        <a href='index' class='btn btn-primary' style='padding:5px'>Wróć do listy produktów</a>
        <a href='#' class='btn btn-success' style='padding:5px'>Do koszyka</a>
        
        <?php 
//        if ($_SESSION["permissions"] == 2) { // 2 -> admin
          echo "<a href='edit?id=".$id."' class='btn btn-info' style='padding:5px'>Edytuj</a>
          <a href='delete?id=".$id."' class='btn btn-danger' style='padding:5px'>Usuń</a>";     
//        }
        ?>
    </div>

    <?php
    echo "<p>$longDesc</p>
        <p><small>Dostępne: $amount sztuk</small></p>";
    ?>

</div>