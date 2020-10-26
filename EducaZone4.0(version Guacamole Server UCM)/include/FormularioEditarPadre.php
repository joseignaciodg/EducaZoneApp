<?php
    require_once __DIR__ . '/config.php';
    require_once __DIR__ . '/dao/DAO_Padre.php';
    require_once __DIR__ . '/Form.php';



    class FormularioEditarPadre extends Form
    {

        public function __construct() {
            parent::__construct('formEditarPadre');
        }
         protected function generaCamposFormulario($datos)
        {
            $padre = new Padre();
            $padre->setUsuario(htmlspecialchars(trim(strip_tags($_SESSION["name"]))));

            $dao_padre = new DAO_Padre();
            $dao_padre->getPadre($padre);

            $nombre = $padre->getNombre();
            $apellido1 = $padre->getAp1();
            $apellido2 = $padre->getAp2();
            $telefono_movil = $padre->getMovil();
            $telefono_fijo = $padre->getFijo();
            $correo = $padre->getCorreo();
            $contrasenaNueva = " ";
            $nuevaContrasenaFinal  = " ";

        	$html = <<<EOF
                <div class="contenido">
                <br><h1>RELLENA LOS DATOS A EDITAR.</h1>
                 <b>Nombre del tutor/a legal: </b><br>
                 <input class="edit" type="text" placeholder="$nombre" name="nombre" /><br>
                <b>Primer apellido del tutor/a legal: </b><br>
                    <input class="edit" type="text" placeholder=" $apellido1" name="apellido1" /><br>
                <b>Segundo apellido del tutor/a legal: </b><br>
                    <input class="edit" type="text" placeholder=" $apellido2" name="apellido2" /><br>
                <b>Teléfono móvil: </b><br>
                    <input class="edit" type="text" placeholder="$telefono_movil" name="telefono_movil"  /><br>
                <b>Teléfono fijo: </b><br>
                     <input class="edit" type="text" placeholder="teléfono fijo" name="telefono_fijo" /><br>
                <b>Correo electrónico:</b><br>
                    <input class="edit" type="text" placeholder="$correo" name="correo" /><br>
                <b>Nueva contraseña: </b><br>
                <input class="edit" type="password" placeholder="Contraseña" name="contrasenaNueva" /><br>
                <b>Repita la contraseña: </b><br>
                <input class="edit" type="password" placeholder="Contraseña" name="nuevaContrasenaFinal"/><br>
                <b>Añadir foto: </b><br>
                <input type="file" name="fileupload"><br>
                </div>
                <div class="boton">
                    <button type="submit" class='submit' name="edit">Guardar</button>
                </div>

                EOF;

            return $html;
         }



             protected function procesaFormulario($datos)
             {
                 $padre = new Padre();
                 $dao_padre = new DAO_PADRE();

                 $result = array();

                 $nombre = isset($datos['nombre']) ? htmlspecialchars(trim(strip_tags($datos['nombre']))) : null;

                 $apellido1 = isset($datos['apellido1']) ? htmlspecialchars(trim(strip_tags($datos['apellido1']))) : null;

                 $apellido2 = isset($datos['apellido2']) ? htmlspecialchars(trim(strip_tags($datos['apellido2']))) : null;

                 $telefono_movil = isset($datos['telefono_movil']) ? htmlspecialchars(trim(strip_tags($datos['telefono_movil']))) : null;

                 $telefono_fijo = isset($datos['telefono_fijo']) ? htmlspecialchars(trim(strip_tags($datos['telefono_fijo']))) : null;

                 $correo = isset($datos['correo']) ? htmlspecialchars(trim(strip_tags($datos['correo']))) : null;

                 $contrasenaNueva = isset($datos['contrasenaNueva']) ? htmlspecialchars(trim(strip_tags($datos['contrasenaNueva']))) : null;

                 $file = isset($_FILES['fileupload']) ? $_FILES['fileupload'] : null;

                 if ($contrasenaNueva != null && mb_strlen($contrasenaNueva) < 5 ) {
                 $result[] = "La contraseña tiene que tener una longitud de al menos 5 caracteres. ";
                 }

                 $nuevaContrasenaFinal = isset($datos['nuevaContrasenaFinal']) ? htmlspecialchars(trim(strip_tags($datos['nuevaContrasenaFinal']))) : null;

                 if (strcmp($contrasenaNueva, $nuevaContrasenaFinal) !== 0 ) {
                 $result[] = "Las contraseñas deben coincidir. ";
                 }


                 if (count($result) === 0) {
                 $padre->setUsuario(htmlspecialchars(trim(strip_tags($_SESSION["name"]))));
                 $dao_padre->getPadre($padre);
                 }
                 else{
                   return $result;
                 }
                 if( $nombre != null){
                        $padre->setNombre($nombre);
                    }
                 if( $apellido1 != null){
                         $padre->setAp1($apellido1);
                    }
                 if( $apellido2 != null){
                        $padre->setAp2($apellido2);
                    }
                 if( $telefono_movil != null){
                        $padre->setMovil($telefono_movil);
                    }
                 if( $telefono_fijo != null){
                        $padre->setFijo($telefono_fijo);
                    }
                 if( $correo != null){
                        $padre->setCorreo($correo);
                    }
                 if( $contrasenaNueva != null && $nuevaContrasenaFinal != null && strcmp($contrasenaNueva, $nuevaContrasenaFinal) == 0){

                        $padre->setContrasena($hash= password_hash($nuevaContrasenaFinal, PASSWORD_BCRYPT, [rand()]));
                        $nuevaContrasenaFinal = $hash= password_hash($nuevaContrasenaFinal, PASSWORD_BCRYPT, [rand()]);
                    }
                  $foto = null;
                  if(!empty($file['name'])){
                      $foto = "./img/users/tutores_legales/" . $file['name'];
                      $padre->setFoto($foto);
                      move_uploaded_file($file['tmp_name'], $padre->getFoto());
                    }

                $dao_padre->updateDatosPadre($nombre, $apellido1,$apellido2,$telefono_movil,$telefono_fijo,$correo,$nuevaContrasenaFinal,$foto);

                $url = "https://vm11.aw.e-ucm.es/EducaZone4.0/ver_padre.php";
                echo "<script>window.open('".$url."','_self');</script>";
                //header("Location: ./ver_padre.php");
                //exit;
            }
    }
