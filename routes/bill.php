<?php

    if($_SERVER['REQUEST_METHOD'] === 'POST'){

        if(isset($_POST['accountNo']) && !empty($_POST['accountNo']) && 
            isset($_POST['uid']) && !empty($_POST['uid']) &&
            isset($_POST['units']) && !empty($_POST['units']) &&
            isset($_POST['date']) && !empty($_POST['date']))
        {

            $accno = $_POST['accountNo'];
            $userId = $_POST['uid'];
            $units = $_POST['units'];
            $date = $_POST['date'];


            if(!checker('users','id',$userId)){
                die( json_encode([
                    'status'=>false,
                    'msg'=>'Invalid User'
                ]));    
            }

            if(!checker('account','accno',$accno)){
                die( json_encode([
                    'status'=>false,
                    'msg'=>'Invalid Customer Account Number'
                ]));    
            }

            $res = $conn->query("SELECT * FROM bills WHERE accno = $accno AND date = '$date' AND units = $units");
            if($res->rowCount() > 0){
                die( json_encode([
                    'status'=>true,
                    'msg'=>'Already Saved the Bill'
                ])); 
            }

            try{
                $res = $conn->prepare("INSERT INTO bills VALUES ('0',:accno,:userid,:unit,:date)");
                $c = $res->execute([
                    "accno"=>$accno,
                    "userid"=>$userId,
                    "unit"=>$units,
                    "date"=>$date
                ]);

                if($c){
                    echo json_encode([
                        'status'=>true,
                        'msg'=>'Successfully Saved the Bill.',
                    ]);
                }else{
                    echo json_encode([
                        'status'=>false,
                        'msg'=>'Failed to Save the Bill.',
                    ]);
                }

            }catch( PDOException $e){
                echo json_encode([
                    'status'=>false,
                    'msg'=>'Failed to Save the Bill.',
                    'err'=>$e->getMessage()
                ]);
            }



        }else{

            if(empty($_POST['date'])){
                die( json_encode([
                    'status'=>false,
                    'msg'=>'Please Enter a date.'
                ]));    
            }

            echo json_encode([
                'status'=>false,
                'msg'=>'Empty Request.'
            ]);
        }

    }elseif($_SERVER['REQUEST_METHOD'] === 'GET'){
        if(isset($_GET['accountNumber']) && !empty($_GET['accountNumber'])){
            $accno = $_GET['accountNumber'];
            $limit = $_GET['limit'];
            $offset = $_GET['offset'];

            if(!checker('account','accno',$accno)){
                die( json_encode([
                    'status'=>false,
                    'msg'=>'Invalid Account Number'
                ]));    
            }

            $billData = $conn->query("SELECT b.accno,b.id,b.units,b.date,a.cname FROM bills AS b INNER JOIN account as a ON b.accno = a.accno 
                                        WHERE b.accno = $accno ORDER BY b.date DESC");

            if($billData){
                $bc = $billData->rowCount();
                $billsArr = [];
                $bdata = $billData->fetchAll(PDO::FETCH_ASSOC);

                if($bc > 0){
                    for ($i=$offset; $i < $limit; $i++) { 
                        array_push($billsArr,$bdata[$i]);
                    } 

                    echo json_encode([
                        "status"=>true,
                        'msg'=>($bc > 1) ? "$bc Bills Found" : "$bc Bill Found",
                        "bills"=>$bc,
                        "bill_Data"=>$billsArr
                    ]);
                }else{
                    echo json_encode([
                        "status"=>false,
                        'msg'=>'No Bills',
                        "bills"=>$bc,
                        "bill_Data"=>[]
                    ]);
                } 
            }

        }else{
            echo json_encode([
                "status"=>false,
                'msg'=>'Please Enter Your Account Number!'
            ]);
        }
    }

    function checker($location,$match,$val){
        global $conn;

        $res = $conn->query("SELECT * FROM $location WHERE $match = $val")->rowCount();
        return $res > 0 ? true : false;
    }
?>