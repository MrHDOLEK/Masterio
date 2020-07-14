<!DOCTYPE html>
<html lang="en">
<head>
  <title>Masterio</title>
   <?php
      include 'conn.php';  
    ?>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="style_forum.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="loader.css">
</head>
<body onload="myFunction()" oncontextmenu="return false">
  <div id="loader"></div>
  <?php

      
      $nick = $_GET['inputNick'];
      $email = $_GET['inputEmail'];
      //szyfrowanie
    	
    	$haslo = $_GET['inputPassword'];
    	
      //UPDATE nowego rekordu
      $sql = "UPDATE user_login SET nick='$nick',email='$email',pass='$haslo' WHERE nick='$nick'";
      $result=$conn->query($sql);
      echo '<div class="alert alert-success" role="alert"> <strong>';
      echo "Dane zostały zmienione </strong>";
      echo "</div>";
      header("Refresh: 2; URL=user_profil.php");
  ?>
  <script type="text/javascript" src="loader.js"></script>
</body>
</html>