<!DOCTYPE html>
<html lang="en">
<head>
	<title>Strona główna</title>
	<head>
		<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<?php
    	 include 'conn.php';
    	?>
    	<!--Robots Google -->
    	<!-- plik robots.txt zawiera to -->
    	<!--CSS Boostrap -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<!--JS boostrap -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		 <style>
	      
		 	
	     @media (min-width: 992px) and (max-width: 1199.98px) { ... }
	    </style>
	    <link rel="stylesheet" type="text/css" href="cookies_style.css">
</head>
	<body oncontextmenu="return false" >
<?php
if (isset($_SESSION["zalogowany"])) 
  {
?>
		<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
		  <a class="navbar-brand" href="#">Masterio</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarNavDropdown">
		    <ul class="navbar-nav">
		      <li class="nav-item active">
		        <a class="nav-link" href="/main_page.php">Start<span class="sr-only">(current)</span></a>
		      </li>
		      <!-- menu pojawiające sie po prawej kopiuj -->
		      <li class="nav-item dropright">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Konto
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
		          <a class="dropdown-item" href="/user_setings.php">Ustawienia</a>
		          <a class="dropdown-item" href="user_profil.php">Dane konta</a>
		          <form method="post"  action="/logout.php">
		         	 <button class="dropdown-item bg-danger"  role="alert" type="submit" name="wyloguj">Wyloguj się</button>
		          </form>
		        
		        </div>
		      </li>
		    </ul>
		  </div>
		</nav>
	 

    <!-- Sidebar -->
    <div class="d-flex" id="wrapper">
	    <div class="bg-dark border-right" id="sidebar-wrapper">
	      
	      <div class="list-group list-group-flush">
	      	<a href="/classifieds.php" class="list-group-item list-group-item-action bg-dark text-white">Ogłoszenia</a>
	        <a href="/calendar_page.php" class="list-group-item list-group-item-action bg-dark text-white">Kalendarz</a>
	        <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Projekty</a>
	        <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Poczta</a>
	      </div>
	    </div>
		    <div class="p-2  flex-fill d-flex justify-content-center">
	      	<?php
		      	
			?>
			
	      </div> 
	</div>

    <!-- /#sidebar-wrapper -->

      <!--start content -->
      <footer id="sticky-footer" class="py-4 bg-dark text-white-50">
	    <div class="container text-center">
	      <small>©Aleksander Kowalski 2019 'mrhdolek'</small>
	    </div>
	  </footer>
	  <div id="cookies-message-container"><div id="cookies-message">Ta strona używa ciasteczek (cookies), dzięki którym nasz serwis może działać lepiej.<a href="javascript:WHCloseCookiesWindow();" id="accept-cookies-checkbox">Rozumiem</a></div></div>

     <script type="text/javascript" src="cookies.js"></script>


        
    <?php
      }
      else
      {
      	echo "<script type=\"text/javascript\">window.alert('Proszę się zalogować!');</script>";
      	header("refresh:0;URL=index.php");
      }
    ?>
</body>
</html>
