<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "blogs";
    $db = mysqli_connect($servername,$username,$password,$dbname);
    if(!$db){
        die(" Database connection faild !!".mysqli_connect_error());

    }else{
        //echo "<script>alert('connected to Db')</script>";
    }
    


?>