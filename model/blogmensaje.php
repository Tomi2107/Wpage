<?php 
class blogmensaje {
    private $idcomentario;
    private $nombre;
    private $mail;
    private $tema;
    private $comentario;
   
    function __construct($nombre, $mail, $tema, $comentario) {
        $this->nombre=$nombre;
        $this->email=$mail;
        $this->tema=$tema;
        $this->comentario=$comentario;
        }
    

    /**
     * Get the value of idPedido
     */ 
    public function getIdcomentario()
    {
        return $this->idcomentario;
    }

    /**
     * Set the value of idPedido
     *
     * @return  self
     */ 
    public function setIdcomentario($idcomentario)
    {
        $this->idcomentario = $idcomentario;

        return $this;
    }

    /**
     * Get the value of nombre
     */ 
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set the value of nombre
     *
     * @return  self
     */ 
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    
    /**
     * Get the value of mail
     */ 
    public function getMail()
    {
        return $this->email;
    }

    /**
     * Set the value of mail
     *
     * @return  self
     */ 
    public function setMail($mail)
    {
        $this->email = $mail;

        return $this;
    }

    /**
     * Get the value of lugarEntrega
     */ 
    public function getTema()
    {
        return $this->tema;
    }

    /**
     * Set the value of lugarEntrega
     *
     * @return  self
     */ 
    public function setTema($tema)
    {
        $this->tema = $tema;

        return $this;
    }


    /**
     * Get the value of idPedido
     */ 
    public function getComentario()
    {
        return $this->comentario;
    }

    /**
     * Set the value of idPedido
     *
     * @return  self
     */ 
    public function setComentario($comentario)
    {
        $this->comentario = $comentario;

        return $this;
    }

}

?>