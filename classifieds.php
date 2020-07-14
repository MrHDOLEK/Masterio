<!DOCTYPE html>
<html lang="en">
<head>
	<title>Ogłoszenia</title>
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
		<div class="p-2  flex-fill">
		     <script type="text/javascript" src="news_style.js"></script>
	      	 <?php
      		 if ($_SESSION["ranga"] == "admin" | "lider_zespołu")
           	 {
               echo ' <div id="article" class="col-xs-1 text-center">
                
                <article>'
                ?>
                	<a href="/" onClick="op('wyswietl_2'); return false;" class="btn btn-primary btn-lg btn-block">Dodaj ogłoszenie</a>
              		<div id="wyswietl_2" style="display:none">
              			<script src="ckeditor/ckeditor.js"></script>
              			<form method="post" id="newsy" action="/classifieds.php">
              			<br /><textarea class="form-control" name="tytul" id="tytul" rows="1" cols="70" placeholder="Tytuł ogłoszenia"></textarea>	
              			<br /><textarea name="news_edi" id="news_edi" rows="10" cols="80" >Treść ogłoszenia</textarea>
              			<br /><button type="submit" class="btn btn-info">Dodaj ogłoszenie</button>
			            </form>
			            <script>
			                CKEDITOR.replace( 'news_edi' );
			            </script>
              		</div>
                <?php
                //dodawanie do bazy z newsami
                if ($_SERVER['REQUEST_METHOD'] == 'POST') 
			      {
			      	if($result->num_rows == 0) 
			      	{
			                 $tytul = $_POST['tytul'];
			                 $tresc = $_POST['news_edi'];
			                 $_SESSION[$nick] = $nick;
			                 $data = date('Y-m-d');

			                 $zapytanie_dod_news = "INSERT INTO news (tytul,tresc,autor,data)
			            	VALUES ('$tytul','$tresc','$autor','$data')";
			            	if ($conn->query($zapytanie_dod_news) === TRUE) 
				            {
				            	header("refresh:0;URL=index.php");
				            	echo "<script type=\"text/javascript\">window.alert('Dodano nowe ogłoszenie');</script>";

				           } 
				           else 
				           {
				            echo "Error: " . $zapytanie_dod_news . "<br>" . $conn->error;
				           }
				            $conn->close();
				          
				           exit;
			            }

       			 }

                echo '</article>
                </div>';
            }
            
         $zapytanie_news = "SELECT * FROM news ORDER BY id DESC";
          $wynik_news = $conn->query($zapytanie_news);
                    if($wynik_news->num_rows > 0)
                    {
                    
	                      while ($row = $wynik_news -> fetch_assoc())
	                      {
	                       if (empty($row["tytul"])) 
	                       {
	                       	echo '</div>';
	                       }
	                       else
	                       {
				             echo '<br /><div class="row-md-6">
				                       		<div class="row no-gutters border rounded    ">
												          <div class="col p-4   position-relative">
												          
												          <h3 class="mb-0">'.$row["tytul"].'</h3>
												          <div class="mb-1 text-muted">'.$row["data"].'</div>
													          <p class="mb-auto">'.$row["tresc"].'</p>
													          <strong class="d-inline-block mb-2 text-success">'.$row["autor"].'</strong>
													          <br /><a href="#" class="stretched-link">Czytaj dalej</a>
											        	  
											        	</div>
										        	</div>
										        </div>';
							        
		                     
		                    }

	                      }
	                      

                  }
          
        ?>

    		</div>	
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
