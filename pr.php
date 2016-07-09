<?php
$host='localhost';
$user='root';
$pass='root';
$db='rangde';
$con=mysqli_connect($host,$user,$pass,$db);
if(mysqli_connect_errno())
	die("connection failed" . mysqli_connect_error());
echo "hello end";

mysql_select_db($rangde);
session_start();

$x=mysql_query($db,"select Need_money from progress");
$y=mysql_query($db,"select Collect_money from progress");

$z=$x-$y;
$sql="UPDATE `progress` SET `Remaining`="+$z+"WHERE `Collect_money`="+$y+" AND `Need_money`="+$x;
$result=mysql_query($sql);
echo $sql;

?>