<?php

include ('model/database.php');
include ('model/product.php');
include ('model/user.php');

$db = db_connect();

$connect = checkUser($db,'client1','client1');

var_dump($connect);

/*$products = product_get_all($db);
var_dump($products);*/


//product_add($db,"artcile6","d6",2000,12);
//product_update($db,4,"artcile6","d6",2000,12);
