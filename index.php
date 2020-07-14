<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Panel Logowania</title>
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
	 <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    
  </head>
  <body class="text-center bg-dark" style="color:white;">
  	<div class="container" >
		  <form class="form-signin" method="GET" id="Logowanie" action="./loader_login.php">
		  	<!--Ikona aplikacji -->
		  <img class="mb-4" src="https://cdn.pixabay.com/photo/2017/03/30/13/33/html-2188441_960_720.png" alt="ikona" width="72" height="72">
		  <h1 class="h3 mb-3 font-weight-normal">Proszę sie zalogować</h1>
		  <label for="inputEmail" class="sr-only">Email</label>
		  <input type="email" name="inputEmail" class="form-control" placeholder="Email:" required="" autofocus="">
		  <label for="inputPassword" class="sr-only">Hasło</label>
		  <input type="password" name="inputPassword" class="form-control" placeholder="Hasło:" required="">
		  <div class="checkbox mb-3">
		    <label>
		      <br /><input type="checkbox" name="zapmietaj"value="remember-me"> Zapamietaj mnie
		    </label>
		  </div>
		  <button class="btn btn-lg btn-primary btn-block" type="submit">Zaloguj</button>
		  <p class="mt-5 mb-3 text-muted">©Aleksander Kowalski 2019 'mrhdolek'</p>
		</form>
	</div>
	</body>
</html>
