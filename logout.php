<?php
		           if(isset($_POST['wyloguj']))
                  {
                              session_destroy();
                              header("Location: index.php");
                      
                  } 

 ?>