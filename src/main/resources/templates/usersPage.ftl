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
            <th>Email</th>
            <th>Phone number</th>
        </tr>
        <#if model??>
        <#list model.users as user>
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.phoneNumber}</td>
        </tr>
        </#list>
        </#if>
        <form action="/admin/users" method="post">
            <tr>
                <td>id</td>
                <td>
                    <div class="form-group  has-feedback">
                            <input type="text" class="form-control " name="name" id="inputError" placeholder="Имя">
                            <span class="glyphicon glyphicon-remove form-control-feedback"></span>
                    </div>
                <td>
                    <div class="form-group  has-feedback">
                        <input type="text" class="form-control " name="email" placeholder="Email">
                        <span class="glyphicon glyphicon-remove form-control-feedback"></span>
                    </div>
                <td>
                <div class="form-group  has-feedback">
                    <input type="text" class="form-control " name="phoneNumber" placeholder="Номер телефона">
                    <span class="glyphicon glyphicon-remove form-control-feedback"></span>
                </div>
            </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>
                <#if errors??>
                    <div class="alert alert-danger" style="margin-bottom: 0" role="alert">${errors}</div>
                </#if>
                </td>
                <td><input type="submit" value="Добавить"></td>
            </tr>
        </form>
    </table>


    <script src="js/js_vendor/jquery-3.2.1.slim.min.js"></script>
    <script src="js/js_vendor/popper.min.js"></script>
    <script src="js/js_vendor/bootstrap.min.js"></script>
</body>
</html>