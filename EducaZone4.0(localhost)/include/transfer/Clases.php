<?php
//Clase encargada de actualizar la información del objeto Usuario en la BBDD

class Clases {

    private $id = "";
    private $curso = "";
    private $letra = "";
    private $titulacion = "";
    private $id_tutor_clase = "";
    private $numero_alumnos = "";
    private $id_asignatura1 = "";
    private $id_asignatura2 = "";
    private $id_asignatura3 = "";
    private $id_asignatura4 = "";
    private $id_asignatura5 = "";
    private $id_asignatura6 = "";

    public function getId(){return $this->id;}
    public function getCurso(){return $this->curso;}
    public function getLetra(){return $this->letra;}
    public function getTitul(){return $this->titulacion;}
    public function getIdTutor(){return $this->id_tutor_clase;}
    public function getNAlum(){return $this->numero_alumnos;}
    public function getAs1(){return $this->id_asignatura1;}
    public function getAs2(){return $this->id_asignatura2;}
    public function getAs3(){return $this->id_asignatura3;}
    public function getAs4(){return $this->id_asignatura4;}
    public function getAs5(){return $this->id_asignatura5;}
    public function getAs6(){return $this->id_asignatura6;}


    public function setId($_id){$this->id = $_id;}
    public function setCurso($_curso){$this->curso = $_curso;}
    public function setLetra($_letra){$this->letra = $_letra;}
    public function setTitul($_titulacion){$this->titulacion = $_titulacion;}
    public function setIdTutor($_id_tutor_clase){$this->id_tutor_clase = $_id_tutor_clase;}
    public function setNAlum($_numero_alumnos){$this->numero_alumnos = $_numero_alumnos;}
    public function setAs1($_id_asignatura1){$this->id_asignatura1 = $_id_asignatura1;}
    public function setAs2($_id_asignatura2){$this->id_asignatura2 = $_id_asignatura2;}
    public function setAs3($_id_asignatura3){$this->id_asignatura3 = $_id_asignatura3;}
    public function setAs4($_id_asignatura4){$this->id_asignatura4 = $_id_asignatura4;}
    public function setAs5($_id_asignatura5){$this->id_asignatura5 = $_id_asignatura5;}
    public function setAs6($_id_asignatura6){$this->id_asignatura6 = $_id_asignatura6;}

}
