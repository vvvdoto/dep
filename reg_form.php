<?php
require "connect.php";
?>
<?php require "header.php";?>
<div class="head" id="register">Регистрация</div>
<form action="controllers/register.php" method="POST">
				<input type="text" placeholder="Имя" name="name" pattern="[а-яА-ЯёЁ\s\-]+" required>
				<input type="text" placeholder="Фамилия" name="surname" pattern="[а-яА-ЯёЁ\s\-]+" required>
				<input type="text" placeholder="Отчество" name="patronymic" pattern="[а-яА-ЯёЁ\s\-]+">
				<input type="text" placeholder="Логин" name="login" pattern="[a-zA-Z0-9\-]+" required>
				<input type="email" placeholder="Email" name="email" required>
				<input type="password" placeholder="Пароль" name="password" pattern=".{6,}" required>
				<input type="password" placeholder="Повтор пароля" name="password_repeat" required>
				<div class="part">
					<input type="checkbox" name="rules" required>
					<p>Согласие с правилами регистрации</p>
				</div>
				<button>Зарегистрироваться</button>
			</form>>
</div>