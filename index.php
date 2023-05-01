<?php
    header('Content-Type:application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
    header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token, Authorization');

    $uri = explode("?",$_SERVER['REQUEST_URI'])[0];
    $uri_xp = explode("/",$uri);
   
    if(end($uri_xp) === ""){
        $i = strlen($uri)-1;
        if($i > 0){
            $uri = substr($uri,0,$i);
        }else{
            $uri = "/";
        }
    }

    $routes = [
        "/auth"=>'auth',
        "/me"=>'me',
        "/checkAccount"=>'checkacc',
        "/bill"=>'bill',
        "/cebmrsysapi/auth"=>'auth',
        "/cebmrsysapi/me"=>'me',
        "/cebmrsysapi/checkAccount"=>'checkacc',
        "/cebmrsysapi/bill"=>'bill'
    ];

    if (array_key_exists($uri,$routes)){
        require('routes/dbconfig.php');
        include( "routes/".$routes[$uri].".php" );
    }else{
        header("Status-Code",500,true);
        // echo $uri;
    }
    
?>