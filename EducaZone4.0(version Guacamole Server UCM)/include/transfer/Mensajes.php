<?php
//Clase encargada de actualizar la información del objeto Calificaciones en la BBDD

class Mensajes {

  private $id = "";
  private $id_origen = "";
  private $rol_origen = "";
  private $id_destinatario = "";
  private $rol_destinatario = "";
  private $contenido_msg = "";
  private $fecha_hora = "";
  private $etiqueta = "";
  private $nombre_archivo = "";
  private $archivo = "";
  private $tamano_archivo = "";
  private $tipo_archivo = "";

  public function getId(){return $this->id;}
  public function getIdOrigen(){return $this->id_origen;}
  public function getIdDestinatario(){return $this->id_destinatario;}
  public function getRolOrigen(){return $this->rol_origen;}
  public function getRolDestinatario(){return $this->rol_destinatario;}
  public function getMsg(){return $this->contenido_msg;}
  public function getDate(){return $this->fecha_hora;}
  public function getEtiqueta(){return $this->etiqueta;}
  public function getNombreArchivo(){return $this->nombre_archivo;}
  public function getArchivo(){return $this->archivo;}
  public function getTamanoArchivo(){return $this->tamano_archivo;}
  public function getTipoArchivo(){return $this->tipo_archivo;}

  public function setId($_id){$this->id = $_id;}
  public function setIdOrigen($_idorigen){$this->id_origen = $_idorigen;}
  public function setIdDestinatario($_iddest){$this->id_destinatario = $_iddest;}
  public function setRolOrigen($_rolorigen){$this->rol_origen = $_rolorigen;}
  public function setRolDestinatario($_roldest){$this->rol_destinatario = $_roldest;}
  public function setMsg($msg){$this->contenido_msg = $msg;}
  public function setDate($date){$this->fecha_hora = $date;}
  public function setEtiqueta($etiqueta){$this->etiqueta = $etiqueta;}
  public function setNombreArchivo($nombre){$this->nombre_archivo = $nombre;}
  public function setArchivo($archivo){$this->archivo = $archivo;}
  public function setTamanoArchivo($tamano){$this->tamano_archivo = $tamano;}
  public function setTipoArchivo($tipo){$this->tipo_archivo = $tipo;}

}
