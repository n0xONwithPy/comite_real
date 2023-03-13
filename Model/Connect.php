<?php

DEFINE('HOST','localhost');
DEFINE('USER', 'root');
DEFINE('PW','');
DEFINE('DB','comite_inovacao_real');

Class Connection {
private $connection;

    public function __construct() 
    {
        $this->connection = mysqli_connect(HOST,USER,PW,DB);
    }

    public function getConnect() 
    {
        if(!$this->connection)
        {
            echo 'Falha ao Conectar ao Banco de Dados.'. mysqli_connect_error();
        }
        else
        {
            echo 'Conectado com Sucesso';
            return $this->connection;
        }
    }

    public function closeConnection() 
    {
        mysqli_close($this->connection);
    }
}