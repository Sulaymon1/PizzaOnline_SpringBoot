<#macro adminNavbar>
<a class="fixed-top logo" href="/home"><img id="logo" src="/img/logo_transparent (2).png" alt="Page Logo"/>
    <nav id="header" class="navbar navbar-expand-lg navbar-light fixed-top fixed-theme">
        <div id="header-container" class="container navbar-container fixed-theme">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <ul class="navbar-nav mr-auto nav-pos">
                    <li class="nav-item active" >
                        <a class="nav-link" href="/admin/users" >Пользователи <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/kurers">Курьеры</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/pizzas">Пиццы</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/editUser">Управление пользователями</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Настройки</a>
                    </li>
                </ul>
                <a href="/logout" class="btn btn-danger">Выход</a>
            </div>
        </div>
    </nav>

</#macro>
