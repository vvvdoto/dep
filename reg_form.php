<?php
require "connect.php";
?>
<?php require "header.php";?>
<div class="content">
<div class="head" id="register">Регистрация</div>
<form action="controllers/register.php" method="POST">
				<input type="text" placeholder="Имя" name="name"  required>
				<input type="text" placeholder="Фамилия" name="surname"  required>
				<input type="text" placeholder="Отчество" name="patronymic" >
				<input type="text" placeholder="Логин" name="login" required>
				<input type="email" placeholder="Email" name="email" required>
				<input type="password" placeholder="Пароль" name="password" pattern=".{6,}" required>
				<input type="password" placeholder="Повтор пароля" name="password_repeat" required>
				<div class="part">
					<input type="checkbox" name="rules" required>
					<p>Согласие с правилами регистрации</p>
				</div>
				<button>Зарегистрироваться</button>
			</form>
</div>	
</div>
