<?php
require_once __DIR__ . '/include/config.php';
require_once __DIR__ . '/include/Formulario_profesor.php';
?>

<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Signin</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <link rel="stylesheet" type="text/css" href="https://www.w3schools.com/w3css/4/w3.css">
  </head>
  <body>
    <?php

      include("include/comun/cabecera.php");
    ?>
    <div class="signin">
      <div class="registrate">
      <h2>Rellena los campos del nuevo profesor</h2>
      </div>
      <?php

      $form = new FormularioProfesor();
      $form->gestiona();

      ?>
      <br><br>
      <?php
        include("include/comun/pie.php");

      ?>
    </div>
  </body>
</html>
