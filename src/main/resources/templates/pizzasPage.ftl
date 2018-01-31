<#import "adminNavbar.ftl" as navbar>

<!doctype html>
<html lang="en">
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/css/bootstrap/bootstrap.min.css" >
    <link rel="stylesheet" href="/css/style_usersPage.css">
    <link rel="stylesheet" href="/css/style.css">

</head>
<body>

<@navbar.adminNavbar />
<table id="customers">
    <tr>
        <th>id</th>
        <th>Name</th>
        <th>Description</th>
        <th>Price</th>
        <th>Count</th>
    </tr>
<#if model??>
    <#list model.pizzas as pizza>
        <tr>
            <td>${pizza.id}</td>
            <td>${pizza.pizza_name}</td>
            <td>${pizza.description}</td>
            <td>${pizza.price} Руб.</td>
            <td>${pizza.count}</td>
        </tr>
    </#list>
</#if>
<form action="/admin/pizzas" method="post">
    <tr>
        <td>id</td>
        <td><input type="text" name="pizzaName" placeholder="Имя"></td>
        <td><input type="text" name="description" placeholder="Описание"></td>
        <td><input type="text" name="price" placeholder="Цена"></td>
        <td> <input type="text" name="count" placeholder="Количество"></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td><input type="submit" value="Добавить"></td>
    </tr>

</form>
</table>


<script src="js/js_vendor/jquery-3.2.1.slim.min.js"></script>
<script src="js/js_vendor/popper.min.js"></script>
<script src="js/js_vendor/bootstrap.min.js"></script>
</body>
</html>
