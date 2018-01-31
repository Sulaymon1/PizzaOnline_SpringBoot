<#ftl encoding='UTF-8'>

<head>
</head>
<body>
<a class="fixed-top logo" href="/home"><img id="logo" src="img/logo_transparent (2).png" alt="Page Logo"/></a>
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
                    <a class="nav-link" href="#">Бонусы</a>
                </li>
                <!-- <li class="nav-item">
                    <a class="nav-link" href="#">Карта доставки</a>
                </li> -->
                <li class="nav-item">
                    <a class="nav-link" href="#">Обратная связь</a>
                </li>
            <li class="nav-item">
            <#if Session.isLogin??>
                <a href="/user/profile" class="nav-link" id="btn-order">Личный кабинет</a>
            </li>
            <li>
                <a href="/logout" class="nav-link" id="btn-order">Выйти с аккаунта</a>

            <#else>
                <a href="#myModal" class="nav-link" data-toggle="modal" id="btn-order">Личный кабинет</a>
            </#if>
            </li>
            </ul>
        </div>
    </div>
</nav>
<h1 style="margin-top: 5%;">Успешно зарегистрировались! Подтвердите аккаунт через почту</h1>
</body>