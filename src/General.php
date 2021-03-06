<?php

class General {

    static private $data;
    public $post;
    public $get;
    public $files;

    public function __construct()
    {
        $this->get = $_GET;
        $this->post = $_POST;
        $this->files = $_FILES;
    }

    public function getData(){
        return General::$data;
    }

    public function render(string $pathToFile, $data = [])
    {
        if(!empty($data)){
            General::$data = $data;
        }

        require ($pathToFile);
    }

    public function getConnection()
    {
        include 'config.php';
        
        $conn = new mysqli($configDB['servername'], $configDB['username'], $configDB['password'], $configDB['baseName']);

        if ($conn->connect_error) {
            die("Polaczenie nieudane. Blad: " . $conn->connect_error."<br>");
        }
        return $conn;
    }


    public function is_post()
    {
        if(!empty($this->post)){
            return true;
        }

        return false;
    }

    public function redirect(string $destination) {
        header('location:' . $destination);
    }
}
