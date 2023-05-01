<?php

    if($_SERVER['REQUEST_METHOD'] === 'GET'){

        if(isset($_GET['userid']) && !empty($_GET['userid'])){
            $userId = $_GET['userid'];
    
            $res = $conn->prepare("SELECT id,username,email FROM users WHERE id = :uid");
            $res->execute(['uid'=>$userId]);
    
            if($res->rowCount() > 0){
                echo json_encode([
                    "status"=>true,
                    'msg'=>'User Found',
                    'data'=>$res->fetch(PDO::FETCH_ASSOC)
                ]);
            }else{
                echo json_encode([
                    "status"=>false,
                    'msg'=>'Invalid User'
                ]);
            }
        }else{
            echo json_encode([
                "status"=>false,
                'msg'=>'User ID is Empty'
            ]);
        }

    }else{
        echo json_encode([
            "status"=>false,
            'msg'=>'Invalid Method'
        ]);
    }

?>