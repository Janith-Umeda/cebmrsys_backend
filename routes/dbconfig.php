<?php
    $env = parse_ini_file('.env');

    $host = $env['DB_HOST'];
    $user = $env['DB_USER'];
    $psw = $env['DB_PSW'];
    $db = $env['DB_NAME'];

    try{

        $conn = new PDO("mysql:host=$host;dbname=$db;",$user,$psw);
        $conn->exec("SET NAMES 'utf8'");

    }catch( PDOException $e){
        die( json_encode([
            'status'=>false,
            'error'=>$e->getMessage()
        ]));
    }
?>