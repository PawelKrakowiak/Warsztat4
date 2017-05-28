
    <div class='container'>
	<div class='row'>
            <div class='col-md-9'>
                <table class='table table-condensed table-hover'>
                    <tr>
                        <th>Nazwa</th>
                        <th>Opis</th>
                        <th>Cena</th>
                    </tr>
<?php
$data = General::getData();
foreach($data['Products'] as $product){
                echo"<tr>
                        <td>$product[1]</td>
                        <td>$product[4]</td>
                        <td>$product[3]</td>
                    </tr>";
}
?>
                </table>
            </div>
            <div class ='col-md-3' style='padding-top:9px;'><br>
<?php
for($i = 0; $i<count($data['Products']); $i++){
        echo "  <a href='#' class='btn btn-primary' style='padding:5px'>Szczegóły oferty</a>
                <a href='#' class='btn btn-success' style='padding:5px'>Do koszyka</a> <br>";
}
?>
            </div>
        </div>
    </div>

        