<?php

session_start();

$_SESSION['success_msg'] = "Dados Atualizados com Sucesso.";

require_once '../Model/Connect.php';

$objConnect = new Connection();
$connection = $objConnect->getConnect();

class upSert {

    private $connection;

    public function __construct($connection) 
    {
        $this->connection = $connection;
    }

    function insert() {
        $data_array = [
            'id' => null,
            'data' => mysqli_real_escape_string($this->connection,$_POST['data']),
            'resumo' => mysqli_real_escape_string($this->connection,$_POST['resumo']),
            'qnt_votos' => mysqli_real_escape_string($this->connection,$_POST['qnt_votos']),
            'ap_rp' => mysqli_real_escape_string($this->connection,$_POST['ap_rp'])
        ];

        $submit = $_POST['cad_btn'];

        $placeholders = implode(", ",array_fill(0 , count($data_array), "?"));


        $query = "INSERT INTO ideias_comite VALUES ({$placeholders})";

        if(isset($submit)) 
        {
        $stmt = mysqli_prepare($this->connection, $query);
        $types = str_repeat('s', count($data_array));
        mysqli_stmt_bind_param($stmt, $types, ...array_values($data_array));
        mysqli_stmt_execute($stmt);

        Header('Location: ../view/form.php');

        exit();
        }
    }
    
    function update() {

        $key = mysqli_real_escape_string($this->connection,$_POST['update_key']);

        $set_data = [
            'id' => null,
            'data' => mysqli_real_escape_string($this->connection,$_POST['data']),
            'resumo' => mysqli_real_escape_string($this->connection,$_POST['resumo']),
            'qntimage.png_votos' => mysqli_real_escape_string($this->connection,$_POST['qnt_votos']),
            'ap_rp' => mysqli_real_escape_string($this->connection,$_POST['ap_rp'])
        ];

        $update = $_POST['update_data'];

        $query = "UPDATE ideias_comite SET data = ?, resumo = ?, qnt_votos = ?, ap_rp = ? WHERE resumo = ?";

        if(isset($update)) {
            $stmt = mysqli_stmt_init($this->connection);
            if(mysqli_stmt_prepare($stmt, $query)) {
                mysqli_stmt_bind_param($stmt, 'ssiss', $set_data['data'],$set_data['resumo'], $set_data['qnt_votos'], $set_data['ap_rp'], $key);
                mysqli_stmt_execute($stmt);
            }

        Header('Location: ../view/form.php');

        exit();
        }
    }
}
$objUpSert = new upSert($connection);
$objUpSert->insert();
$objUpSert->update();