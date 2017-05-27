<?php

include 'header.html';
include 'General.php';
include 'Homepage/Homepage.php';
include 'Product/Product.php';
include 'User/User.php';
include 'User/Client/Client.php';
include 'User/Admin/Admin.php';


if(checkRoute('products/add')) {
    $product = new Product();
    $product->add();
}elseif(checkRoute('products/index')) {
    $product = new Product();
    $product->index();
}elseif(checkRoute('users/client')) {
    $client = new Client();
    $client->index();
}else {
    $homePage = new Homepage();
    $homePage->index();
}

function checkRoute(string $route) {
    return strpos($_SERVER['REQUEST_URI'], $route);
}