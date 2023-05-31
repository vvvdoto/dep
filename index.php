<?php
	session_start();
	include "connect.php";

	$sql = "SELECT * FROM `products` WHERE `count` > 0 ORDER BY `created_at` DESC LIMIT 5";
	if(!$result = $connect->query($sql))
		return die ("Ошибка получения данных: ". $connect->error);

	$data = "";
	while($row = $result->fetch_assoc())
		$data .= sprintf('
			<div class="slide col">
				<img src="%s" alt="" />
				<h3><a href="product.php?id=%s">%s</a></h3>
			</div>
		', $row["path"], $row["product_id"], $row["name"]);

	if($data == "")
		$data = '<h3 class="text-center">Товары отсутствуют</h3>';

	include "header.php";
?>

	<main>
		<div class="content">
			<div class="uncontent">
				<div class="presentation head">
				</div>
			</div>

			<div class="head">Новинки компании</div>

			<div id="slider">
				<div class="slides">
					<?= $data ?>
				</div>
			</div>
		</div>
	</main>

	<script src="scripts/slider.js"></script>

<?php include "footer.php" ?>