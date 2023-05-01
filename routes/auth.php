<?php

    if($_SERVER['REQUEST_METHOD'] === 'POST'){

        if(isset($_POST['email']) && isset($_POST['psw']) && !empty($_POST['email']) && !empty($_POST['psw'])){

            $email = $_POST['email'];
            $psw = $_POST['psw'];

            $res = $conn->prepare("SELECT * FROM users WHERE email = :email AND psw = :psw");
            $res->execute(['email'=>$email,'psw'=>$psw]);
            $userData = $res->fetch(PDO::FETCH_ASSOC);

            if($res->rowCount() === 1){
                echo json_encode([
                    "status"=>true,
                    'msg'=>"Login Success.",
                    "userID"=>$userData['id']
                ]);
            }else{
                header('Status-Code',true,401);
                echo json_encode([
                    "status"=>false,
                    'msg'=>"Email or Password is Invalid!"
                ]);
            }

        }else{
            header('Status-Code',true,401);
            echo json_encode([
                "status"=>false,
                'msg'=>"Email and Password can't be Empty!",
            ]);            
        }

    } else{
        header('Status-Code',true,401);
        echo json_encode([
            "status"=>false,
            'msg'=>'Invalid Method.'
        ]);
    }


?>