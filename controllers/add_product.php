<?php
	include "check_admin.php";
	include "../connect.php";

	$path = "images/upload/1_". time() ."_". $_FILES["image"]["name"];
	move_uploaded_file($_FILES["image"]["tmp_name"], "../".$path);

	$connect->query(sprintf("INSERT INTO `products`(`name`, `price`, `category`, `count`, `path`) VALUES('%s', '%s', '%s', '%s', '%s')", $_POST["name"], $_POST["price"], $_POST["category"], $_POST["count"], $path));

	return header("Location:../admin?message=Товар добавлен");