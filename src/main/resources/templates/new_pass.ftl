<!doctype html>
<html lang="en">
<head>

    <title>User Registration </title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/css/bootstrap/bootstrap.min.css" >
    <link rel="stylesheet" href="/css/style_newPass.css">
    <link rel="stylesheet" href="/css/fv.css">
    <link rel="icon" href="/favicon.ico" />

</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen animated fadeInDown">
    <div>
        <hr />
        <h4>Установите новый пароль</h4>
        <form  class="m-t" id="passwordForm" role="form" action="/confirmRegistration" method="post">
            <input type="hidden" name="token" value="${model.token}">
            <div class="form-group input-group">
          <span class="input-group-addon">
            <span class="glyphicon glyphicon-lock"></span>
          </span>
                <input name="password" type="password" id="password" placeholder="Новый пароль" class="form-control" required />
                <span class="glyphicon" aria-hidden="true"></span>
            </div>

            <div class="form-group input-group has-feedback">
          <span class="input-group-addon">
            <span class="glyphicon glyphicon-lock"></span>
          </span>
                <input type="password" class="form-control" id="signup-password-confirm" placeholder="Подтвердите новый пароль" name="ConfirmPassword" data-fv-notempty="true"
                       data-fv-notempty-message="Please confirm password"
                       data-fv-identical="true"
                       data-fv-identical-field="password"
                       data-fv-identical-message="Both passwords must be identical" />

                <div class="help-block with-errors"></div>
            </div>
            <#if error??>
                <div class="alert alert-danger" style="margin-bottom: 0" role="alert">${error}</div>
            </#if>
            <button type="submit" class="btn btn-primary block full-width m-b">Сохранить</button>
        </form>
    </div>
</div>


<script src="/js/js_vendor/jquery-3.2.1.slim.min.js"></script>
<script src="/js/js_vendor/popper.min.js"></script>
<script src="/js/js_vendor/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/zxcvbn/4.4.2/zxcvbn.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
<script src="/js/fv.min.js"></script>
<script src="/js/validator.js"></script>
</body>
</html>