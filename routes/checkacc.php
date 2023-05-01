<?php

    if($_SERVER['REQUEST_METHOD'] === 'GET'){

        if(isset($_GET['accno']) && !empty($_GET['accno'])){
            $accNo = $_GET['accno'];

            $res = $conn->query("SELECT * FROM account WHERE accno = $accNo");

            if($res->rowCount() == 1){
                echo json_encode([
                    "status"=>true,
                    'msg'=>'Valid Account',
                    'accData'=>$res->fetch(PDO::FETCH_ASSOC)
                ]);
            }else{
                echo json_encode([
                    "status"=>false,
                    'msg'=>'Invalid Account',
                    'accData'=>null
                ]);
            }
        }else{
            echo json_encode([
                "status"=>false,
                'msg'=>'Invalid Account Number',
                'accData'=>null
            ]);
        }

    }else{
        echo json_encode([
            "status"=>false,
            'msg'=>'Invalid Method'
        ]);
    }

?>