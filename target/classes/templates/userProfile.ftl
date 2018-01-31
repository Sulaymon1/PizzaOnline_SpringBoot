<#ftl encoding="utf-8">
<!doctype html>
<html lang="en">
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/css/bootstrap/bootstrap.min.css" >
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/style_profile.css">


</head>
<body>

<a class="fixed-top logo" href="/home"><img id="logo" src="/img/logo_transparent (2).png" alt="Page Logo"/></a>
<nav id="header" class="navbar navbar-expand-lg navbar-light fixed-top fixed-theme">
    <div id="header-container" class="container navbar-container fixed-theme">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav mr-auto nav-pos">
                <li class="nav-item active" >
                    <a class="nav-link" href="/home" >Пиццы <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Мои бонусы</a>
                </li>
                <!-- <li class="nav-item">
                    <a class="nav-link" href="#">Карта доставки</a>
                  </li> -->
                <li class="nav-item">
                    <a class="nav-link" href="#">Обратная связь</a>
                </li>
                <li class="nav-item">
                    <a href="#myModal" class="nav-link" data-toggle="modal" id="btn-order">Мои заказы</a>
                </li>
            </ul>
            <a href="/logout" class="btn btn-danger">Выход</a>
        </div>
    </div>
</nav>





<div class="col-6 content" >


    <div class="card card-info  border-secondary ">
        <div class="card-header bg-dark border-secondary ">
            <h3 class="card-title text-white">Профиль, ${model.user.name}</h3>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png" class="img-circle img-responsive"> </div>

                <!--<div class="col-xs-10 col-sm-10 hidden-md hidden-lg"> <br>
                  <dl>
                    <dt>DEPARTMENT:</dt>
                    <dd>Administrator</dd>
                    <dt>HIRE DATE</dt>
                    <dd>11/12/2013</dd>
                    <dt>DATE OF BIRTH</dt>
                       <dd>11/12/2013</dd>
                    <dt>GENDER</dt>
                    <dd>Male</dd>
                  </dl>
                </div>-->
                <div class=" col-md-9 col-lg-9 ">
                    <table class="table table-user-information">
                        <tbody>
                        <tr>
                            <td>Имя</td>
                            <td>${model.user.name}</td>
                        </tr>
                        <tr>
                            <td>Адрес</td>
                            <td>Kremlevskoe,Kazan</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><a href="mailto:${model.user.email}">${model.user.email}</a></td>
                        </tr>
                        <td>Номер телефона</td>
                        <td><input type="text" class="btn border-info" value="${model.user.phoneNumber}" disabled></td>
                        </tr>
                        <tr>
                            <td>Обновить пароль</td>
                            <td><input type="password" class="btn border-info" value="" placeholder="старый пароль"></td>
                            <td><input type="password" class="btn border-info" value="" placeholder="новый пароль"></td>
                        </tr>
                        </tbody>
                    </table>

                    <a href="#" class="btn btn-primary" style="float: right;">Сохранить</a>
                </div>
            </div>
        </div>
        <div class="card-footer bg-dark border-secondary ">
            <span class="pull-right">
              <a href="edit.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit">Удалить аккаунт</i></a>
            </span>
        </div>

    </div>
</div>
</div>
</div>
<script src="/js/js_vendor/jquery-3.2.1.slim.min.js"></script>
<script src="https://npmcdn.com/tether@1.2.4/dist/js/tether.min.js"></script>
<script src="/js/js_vendor/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/js_vendor/bootstrap.bundle.js"></script>
</body>
</html>
