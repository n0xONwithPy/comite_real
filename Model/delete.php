<?php

require_once '../Model/Connect.php';

$objConnect = new Connection();
$connection = $objConnect->getConnect();

class Delete {

    private $connection;

    public function __construct($connection)
    {
        $this->connection = $connection;
    }

    function delete() {
        $key = filter_input(INPUT_POST, 'delete_key', FILTER_VALIDATE_INT);

        $delete_btn = $_POST['delete_btn'];

        if(isset($delete_btn) && $key !== false)
        {
            $query = "DELETE FROM ideias_comite WHERE id = ?";
            $stmt = mysqli_stmt_init($this->connection);

            if(mysqli_stmt_prepare($stmt,$query)) {

                mysqli_stmt_bind_param($stmt, 'i', $key);
                mysqli_stmt_execute($stmt);
            }

        Header('Location: ../view/form.php');

        exit();
        }
    }
}

$objDelete = new Delete($connection);
$objDelete->delete();