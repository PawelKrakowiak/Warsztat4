
<div class='container'>
    <div class='row'>
        <div class='col-md-12'>
            <div style='text-align: right; margin: 20px 0'>
              <a href='add' class='btn btn-info' style='padding:5px'>Dodaj produkt</a>
            </div>
            <table class='table table-condensed table-hover'>
                <tr>
                    <th>Nazwa</th>
                    <th>Opis</th>
                    <th>Cena</th>
                </tr>
                <?php
                $data = General::getData();
                foreach ($data['Products'] as $product) {
                  echo"<tr>
                        <td>".$product['name']."</td>
                        <td>".$product['short_description']."</td>
                        <td>".$product['price']."</td>
                        <td>
                          <a href='view?id=".$product['id']."' 
                            class='btn btn-primary' style='padding:5px'>
                            Szczegóły oferty
                          </a>
                        </td>";
                  
//                  if ($_SESSION["permissions"] == 2) { // 2 -> admin
                    echo "<td>
                            <a href='#' 
                              class='btn btn-success' style='padding:5px'>
                              Do koszyka
                            </a>
                          </td>
                          <td>
                            <a href='edit?id=".$product['id']."' 
                              class='btn btn-info' style='padding:5px'>
                              Edytuj
                            </a>
                          </td>
                          <td>
                            <a href='delete?id=".$product['id']."' 
                              class='btn btn-danger' style='padding:5px'>
                              Usuń
                            </a>
                          </td>";
//                  }
                  
                  echo "</tr>";
                }
                ?>
            </table>
        </div>
    </div>
</div>

