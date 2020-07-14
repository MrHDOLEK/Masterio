<?php
	if(isset($_POST["id"]))
	{
	 include 'conn.php';
	 $query = "
	 DELETE from events WHERE id=:id
	 ";
	 $statement = $conn->prepare($query);
	 $statement->execute(
	  array(
	   ':id' => $_POST['id']
	  )
	 );
	}
?>