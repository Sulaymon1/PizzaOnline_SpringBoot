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
        <th>Email</th>
        <th></th>
    </tr>

    <form action="/admin/editUser" method="post">
        <tr>
            <td>
                <div class="form-group  has-feedback">
                    <input type="text" class="form-control " name="email" placeholder="Email">
                    <span class="glyphicon glyphicon-remove form-control-feedback"></span>
                </div>
            </td>
            <td>
                <div class="form-group ">
                    <input type="submit" class="btn btn-success " name="find" value="Найти">
                </div>
            </td>
        </tr>

        <tr>

            <td>
            <#if errors??>
                <div class="alert alert-danger" style="margin-bottom: 0" role="alert">${errors}</div>
            </#if>
        </tr>
    </form>
</table>
<table id="customers">
    <tr>
        <th>id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone number</th>
    </tr>
<#if model??>
        <tr>
            <td>${model.user.id}</td>
            <td>${model.user.name}</td>
            <td>${model.user.email}</td>
            <td>${model.user.phoneNumber}</td>
        </tr>
    <form action="/admin/deleteUser" method="post">

        <tr>
            <td></td>
            <td></td>
            <td><input type="text" name="email" value="${model.user.email}" style="display: none"></td>
            <td><input type="submit" value="Удалить"></td>
        </tr>
    </form>
</#if>

</table>


<script src="/js/js_vendor/jquery-3.2.1.slim.min.js"></script>
<script src="/js/js_vendor/popper.min.js"></script>
<script src="/js/js_vendor/bootstrap.min.js"></script>
</body>
</html>