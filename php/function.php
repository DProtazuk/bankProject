<?php 
    include("connect.php");


    $action = $_POST['action'];

    if($action == "auth"){
        auth($conn);
    }
    if($action == "delCok") {
        delCok();
    }
    if($action == "save") {
        save($conn);
    }
    if($action == "rejection") {
        rejection($conn);
    }


    function auth($conn) {
        $login = $_POST['login'];
        $password = $_POST['password'];

        $result = mysqli_fetch_array(mysqli_query($conn, "SELECT * FROM `user` WHERE `login` = '$login'"));

        if(isset($result)){
            if(password_verify($password, $result['password'])){
                setCookie('key', $result['idUser'], time() + 36000000, '/');
                echo"1";
            }
            else echo "Неправильный Пароль!";
        }
        else echo "Неправильный Логин!";       
    }

    function delCok() {
        setCookie('key', "", time() - 36000000, '/');
    }

    function save($conn) {
        $id = $_POST['id'];
        $text = $_POST['text'];
        
        $query = mysqli_query($conn, "UPDATE `questionnaires` SET `status`='2', `employees_comment`='$text' WHERE id  = '$id'");
    }

    function rejection($conn) {
        $id = $_POST['id'];
        $text = $_POST['text'];
        
        $query = mysqli_query($conn, "UPDATE `questionnaires` SET `status`='0', `employees_comment`='$text' WHERE id  = '$id'");
    }