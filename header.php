<?php
	$menu = '
		<li><a href="index.php" class="link">О нас</a></li>
		<li><a href="catalog.php" class="link">Каталог</a></li>
		<li><a href="where.php" class="link">Где нас найти?</a></li>
		%s
	';

	$m = '';
	if(isset($_SESSION["role"])) {
		$m = '<li><a href="cart.php" class="link">Корзина</a></li>';
		$m .= ($_SESSION["role"] == "admin") ? '<li><a href="admin.php" class="link">Заказы</a></li>' : '';
		$m .= '<li><a href="controllers/logout.php">Выход</a></li>';
	} else
		$m = '
			<li><a href="auth_form.php"><button>Вход</button></a></li>
			<li><a href="reg_form.php"><button>Регистрация</button></a></li>
		';

	$menu = sprintf($menu, $m);
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>КандиС</title>
	<link rel="stylesheet" href="style.css">
	<script src="scripts/filter.js"></script>
	<script>
		let role = "<?= (isset($_SESSION["role"])) ? $_SESSION["role"] : "guest" ?>";
	</script>
</head>
<body>

	<header>
		<div class="top">
			<div class="row">
				<a href="index.php">
					<h1>КандиС</h1>
				</a>
			</div>
		</div>
		<div class="content">
			<div class="navigator">
				<ul>
				<?= $menu ?>
			</ul>
			</div>
		</div>
	</header>

	<div class="message"><?= (isset($_GET["message"])) ? $_GET["message"] : ""; ?></div>