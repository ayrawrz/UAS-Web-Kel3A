<?php
$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "quiz_peminatan";
$link = mysqli_connect($db_host,$db_user,$db_pass,$db_name);
if(!$link) {
    die ("connection failed: ".mysqli_connect_errno()." - ".mysqli_connect_error());
}