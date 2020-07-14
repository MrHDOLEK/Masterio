<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Loader</title>
    <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!--Robots Google -->
      <!-- plik robots.txt zawiera to -->
      <!--CSS Boostrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!--JS boostrap -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   <link rel="stylesheet" type="text/css" href="loader.css">
    
  </head>
<body onload="myFunction()" style="margin:0;">
  <div id="loader"></div>
  <?php
   include 'conn.php';
   $email = $_GET['inputEmail'];
   $sql = "SELECT * FROM user_login WHERE email = '$email'";
   $result=$conn->query($sql);
   $row = $result->fetch_assoc();
   if($result->num_rows == 0) {
              echo "<script type=\"text/javascript\">window.alert('Nie znaleziono takiego użytkownika');</script>";
              header("refresh:0;URL=index.php");
          } 
          else 
          {
            $password = $_GET['inputPassword'];
              if($password == $row["pass"]) {
              	if(isset($_GET['zapamietaj']))
                  {
                  	//ustawianie waznosci ciastka na 30 dni
                  	setcookie("Cookie", "masterio", time()+ (86400 * 30));
                       
                  }
                  //odczyt nicku użytkownika i id
                  $id = $row["id"];
                  $nick = $row["nick"]; 
                  //odczyt id rangi
                $zapytanie_ranga = "SELECT * FROM user_ranga WHERE id_u = '$id'";
                 $wynik_ranga = $conn->query($zapytanie_ranga);
                 if($wynik_ranga->num_rows > 0)
                      {
                        while ($row = $wynik_ranga -> fetch_assoc())
                        {
                          $id_r=$row['id_r'];
                        }
                    }
                  //Wyszukiwanie po id_r nazwy rangi
                 $zapytanie_nazwa = "SELECT * FROM ranga WHERE id = '$id_r'";
                 $wynik_nazwa = $conn->query($zapytanie_nazwa);
                 if($wynik_ranga->num_rows > 0)
                      {
                        while ($row = $wynik_nazwa -> fetch_assoc())
                        {
                          $n_ranga=$row['nazwa'];
                          
                        }
                    }
              	

              	//Wpisywanie wartosci do sesji
		           $_SESSION["nick"] = $nick;
		           $_SESSION["id"] = $id;
		           $_SESSION["zalogowany"] = true;
               $_SESSION["ranga"] = $n_ranga;
                header("refresh:3;URL=main_page.php");
                echo "<div class=\"alert alert-success\" role=\"alert\">
                        Witamy w aplikacji Masterio
                      </div>";
                echo "<script type=\"text/javascript\">window.alert('zalogowano');</script>";

              }
          }


?>
<script type="text/javascript" src="loader.js"></script>
</body>
</html>
