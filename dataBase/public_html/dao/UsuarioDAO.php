<?php 

/**
 * Clase donde se realizan todas las consultas, altas y
 * modificaciones en la tabla Usuario
 */
class UsuarioDAO {

    public function validarUsuarioYPass($usuario, $contrasenia) {
        require_once("../dataBase/ConexionDB.php");

        $conexionDB = new ConexionDB("localhost", "id18354675_tut", "Ll12345_Ll1234", "id18354675_latelier");
        $conexionDB->conectar(); //conecta php con la base de datos MySql
    
        $sql = "SELECT * FROM usuarios WHERE usuario = '$usuario' AND clave = '$contrasenia'";
        $conexionDB->ejecutar($sql);
    
        return $conexionDB->cantFilas() > 0;
    }

    public function validarUsuario($usuario) {
        require_once("../dataBase/ConexionDB.php");

        $conexionDB = new ConexionDB("localhost", "id18354675_tut", "Ll12345_Ll1234", "id18354675_latelier");
        $conexionDB->conectar();
    
        $sql = "SELECT * FROM usuarios WHERE usuario = $usuario";
        $conexionDB->ejecutar($sql);
    
        return $conexionDB->cantFilas() > 0;        
    }

    public function guardarUsuario($usuario) {
        require_once("../dataBase/ConexionDB.php");
        $conexionDB = new ConexionDB("localhost", "id18354675_tut", "Ll12345_Ll1234", "id18354675_latelier");
        $conexionDB->conectar();

        $sql = "INSERT INTO `usuarios`(`usuario`, `clave`, `nombreyapellido`) 
        VALUES (
            '{$usuario->getUsuario()}', 
            '{$usuario->getClave()}', 
            '')";

        $conexionDB->ejecutar($sql);    

        return $conexionDB->cantFilas() > 0;
    }
}

?>