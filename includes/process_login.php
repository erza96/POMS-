<?php

include_once 'db_connect.php';
include_once 'functions.php';

sec_session_start(); // Our custom secure way of starting a PHP session.

if (isset($_POST['email'], $_POST['p'])) {
    $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
    $password = $_POST['p']; // The hashed password.
    $array = login($email, $password, $mysqli);
    if ($array[0] == true) {
        switch ($array[1]) {
            case 1:
                //referenti
                header("Location: ../referenti/index.php"); 
                exit();
            case 2:
                //profesori
                header("Location: ../protected_page.php"); 
                exit();
            case 3:
                //studenti
                header("Location: ../protected_page.php");
                exit();
            default:
                echo 'failure';
                break;
        }
    } else {
        // Login failed 
        header('Location: ../index.php?login=no');
        exit();
    }
} else {
    // The correct POST variables were not sent to this page. 
    header('Location: ../error.php?err=Could not process login');
    exit();
}