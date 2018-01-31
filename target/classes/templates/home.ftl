<#import "decorator.ftl" as dec >

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
    <script src="/js/js_vendor/jquery-3.2.1.slim.min.js"></script>
    <script type="text/javascript" src="/js/addPizza.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $("").click(function(){

            });
        });
    </script>

</head>
<body onbeforeunload = "clearInputs()">



<!-- <div class='fixed-top' id="logodiv">
<a class="navbar-brand" href="/home"><img id="logo" src="../logo_transparent (1).png" alt="Page Logo"/> -->
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
                <div class="dropdown">
                    <button class="btn btn-outline-danger my-2 my-sm-0 dropdown-toggle" id="korzina" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Корзина
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" id="korzina_menu" >
                        <div class="card" >
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item list-group-item-light pizzaList">
                                     <#if model.list?has_content>
                                    <div id="card">
                                        <div id="orderHeader">Your Orders</div>

                                        <form name="cart" action="/order" method="post">

                                            <#list model.list as pizza >
                                             <div id="cartContent">
                                                <input id="totalPrice" type="hidden" value="1490">
                                            <div id="${pizza.pizzaName}2">
                                                <input type="hidden" value="${pizza.count}" name="${pizza.pizzaName}" id="${pizza.pizzaName}1"></div></div>

                                            <div id="cartContentShow">
                                            <div id="${pizza.pizzaName}3" class="showProducts">${pizza.pizzaName} 2 порции <br>
                                                <input class="btn btn-outline-secondary" type="button" value="Удалить" onclick="deleteF('${pizza.pizzaName}2' , '${pizza.pizzaName}3' , 745 , 2)">
                                            </div>
                                            </div>
                                            </#list>

                                            <div id="totalPriceShow">Общая сумма 1490 Руб. <br><input class="btn btn-outline-danger add-btn" type="submit" value="заказать"></div>

                                        </form>
                                    </div>
                                     <#else>
                                    <div id = "card">
                                        <div id = "orderHeader"></div>

                                        <form name = "cart" action="/order" method="post">

                                            <div id = "cartContent">
                                                <input id = "totalPrice" type = "hidden" value = "0" >
                                            </div>

                                            <div id = "cartContentShow">
                                            </div>

                                            <div id = "totalPriceShow">
                                            </div>

                                        </form>
                                    </div>
                                     </#if>


                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>



    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="img/img_banner3.jpeg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/img_banner.jpeg" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>



    </div>

    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-lg-4">
                <img src="img/pizzas/pizza_alfredo.jpg" class="img-fluid img-thumbnail" alt="">
                <h3>Пицца Альфредо</h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group" role="group" aria-label="First group">
                        <button type="button" class="btn btn-outline-danger minus_btn" onclick = "minusF('Пицца Альфредо')" >-</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Second group">
                        <input type="text"  id = "Пицца Альфредо" class="btn counter"  value="0">
                    </div>
                    <div class="btn-group" role="group" aria-label="Third group">
                        <button type="button" class="btn btn-outline-danger" onclick = "plusF('Пицца Альфредо')">+</button>
                    </div>
                    <div class="btn-group price" role="group" aria-label="Third group">
                        <h5>745 руб.</h5>
                    </div>
                </div>
                <p><a class="btn btn-outline-danger add-btn" role="button" onclick = "actionF('Пицца Альфредо', 745)" >Добавить</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
                <img src="img/pizzas/pizza_chicke_rench.jpg" class="img-fluid img-thumbnail" alt="">
                <h3>Пицца Чикен Ренч</h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group" role="group" aria-label="First group">
                        <button type="button" class="btn btn-outline-danger minus_btn" onclick = "minusF('Пицца Чикен Ренч')" >-</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Second group">
                        <input type="text"  id = "Пицца Чикен Ренч" class="btn counter"  value="0">
                    </div>
                    <div class="btn-group" role="group" aria-label="Third group">
                        <button type="button" class="btn btn-outline-danger" onclick = "plusF('Пицца Чикен Ренч')">+</button>
                    </div>
                    <div class="btn-group price" role="group" aria-label="Third group">
                        <h5>745 руб.</h5>
                    </div>
                </div>

                <p><a class="btn btn-outline-danger add-btn" role="button" onclick = "actionF('Пицца Чикен Ренч', 745)" >Добавить</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
                <img src="img/pizzas/pizza_chicken_aloha.jpg" class="img-fluid img-thumbnail" alt="">
                <h3>Пицца Чикен Алоха</h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group" role="group" aria-label="First group">
                        <button type="button" class="btn btn-outline-danger minus_btn" onclick = "minusF('Пицца Чикен Алоха')" >-</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Second group">
                        <input type="text"  id = "Пицца Чикен Алоха" class="btn counter"  value="0">
                    </div>
                    <div class="btn-group" role="group" aria-label="Third group">
                        <button type="button" class="btn btn-outline-danger" onclick = "plusF('Пицца Чикен Алоха')">+</button>
                    </div>
                    <div class="btn-group price" role="group" aria-label="Third group">
                        <h5>745 руб.</h5>
                    </div>
                </div>
                <p><a class="btn btn-outline-danger add-btn" role="button" onclick = "actionF('Пицца Чикен Алоха', 745)" >Добавить</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
                <img src="img/pizzas/pizza_double_peperoni.jpg" class="img-fluid img-thumbnail" alt="">
                <h3>Пицца Доубл Пеперони</h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group" role="group" aria-label="First group">
                        <button type="button" class="btn btn-outline-danger minus_btn" onclick = "minusF('Пицца Доубл Пеперони')" >-</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Second group">
                        <input type="text"  id = "Пицца Доубл Пеперони" class="btn counter"  value="0">
                    </div>
                    <div class="btn-group" role="group" aria-label="Third group">
                        <button type="button" class="btn btn-outline-danger" onclick = "plusF('Пицца Доубл Пеперони')">+</button>
                    </div>
                    <div class="btn-group price" role="group" aria-label="Third group">
                        <h5>745 руб.</h5>
                    </div>
                </div>
                <p><a class="btn btn-outline-danger add-btn" role="button" onclick = "actionF('Пицца Доубл Пеперони', 745)" >Добавить</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
                <img src="img/pizzas/pizza_four_sira.jpg" class="img-fluid img-thumbnail" alt="">
                <h3>Пицца Фор Сира</h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group" role="group" aria-label="First group">
                        <button type="button" class="btn btn-outline-danger minus_btn" onclick = "minusF('Пицца Фор Сира')" >-</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Second group">
                        <input type="text"  id = "Пицца Фор Сира" class="btn counter"  value="0">
                    </div>
                    <div class="btn-group" role="group" aria-label="Third group">
                        <button type="button" class="btn btn-outline-danger" onclick = "plusF('Пицца Фор Сира')">+</button>
                    </div>
                    <div class="btn-group price" role="group" aria-label="Third group">
                        <h5>700 руб.</h5>
                    </div>
                </div>
                <p><a class="btn btn-outline-danger add-btn" role="button" onclick = "actionF('Пицца Фор Сира', 700)" >Добавить</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
                <img src="img/pizzas/pizza_four_sira.jpg" class="img-fluid img-thumbnail" alt="">
                <h3>Мясная</h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group" role="group" aria-label="First group">
                        <button type="button" class="btn btn-outline-danger minus_btn" onclick = "minusF('Мясная')" >-</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Second group">
                        <input type="text"  id = "Мясная" class="btn counter"  value="0">
                    </div>
                    <div class="btn-group" role="group" aria-label="Third group">
                        <button type="button" class="btn btn-outline-danger" onclick = "plusF('Мясная')">+</button>
                    </div>
                    <div class="btn-group price" role="group" aria-label="Third group">
                        <h5>600 руб.</h5>
                    </div>
                </div>
                <p><a class="btn btn-outline-danger add-btn" role="button" onclick = "actionF('Мясная', 600)" >Добавить</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
                <img src="img/pizzas/pizza_marinera.jpg" class="img-fluid img-thumbnail" alt="">
                <h3>Пицца Маринера</h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group" role="group" aria-label="First group">
                        <button type="button" class="btn btn-outline-danger minus_btn" onclick = "minusF('Пицца Маринера')" >-</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Second group">
                        <input type="text"  id = "Пицца Маринера" class="btn counter"  value="0">
                    </div>
                    <div class="btn-group" role="group" aria-label="Third group">
                        <button type="button" class="btn btn-outline-danger" onclick = "plusF('Пицца Маринера')">+</button>
                    </div>
                    <div class="btn-group price" role="group" aria-label="Third group">
                        <h5>550 руб.</h5>
                    </div>
                </div>
                <p><a class="btn btn-outline-danger add-btn" role="button" onclick = "actionF('Пицца Маринера', 550)" >Добавить</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
                <img src="img/pizzas/pizza_meksikanskaya.jpg" class="img-fluid img-thumbnail" alt="">
                <h3>Пицца Мексиканская</h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group" role="group" aria-label="First group">
                        <button type="button" class="btn btn-outline-danger minus_btn" onclick = "minusF('Пицца Мексиканская')" >-</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Second group">
                        <input type="text"  id = "Пицца Мексиканская" class="btn counter"  value="0">
                    </div>
                    <div class="btn-group" role="group" aria-label="Third group">
                        <button type="button" class="btn btn-outline-danger" onclick = "plusF('Пицца Мексиканская')">+</button>
                    </div>
                    <div class="btn-group price" role="group" aria-label="Third group">
                        <h5>600 руб.</h5>
                    </div>
                </div>
                <p><a class="btn btn-outline-danger add-btn" role="button" onclick = "actionF('Пицца Мексиканская', 600)" >Добавить</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
                <img src="img/pizzas/pizza_super_chizburger.jpg" class="img-fluid img-thumbnail" alt="">
                <h3>Пицца Супер Чизбургер</h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group" role="group" aria-label="First group">
                        <button type="button" class="btn btn-outline-danger minus_btn" onclick = "minusF('Пицца Супер Чизбургер')" >-</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Second group">
                        <input type="text"  id = "Пицца Супер Чизбургер" class="btn counter"  value="0">
                    </div>
                    <div class="btn-group" role="group" aria-label="Third group">
                        <button type="button" class="btn btn-outline-danger" onclick = "plusF('Пицца Супер Чизбургер')">+</button>
                    </div>
                    <div class="btn-group price" role="group" aria-label="Third group">
                        <h5>800 руб.</h5>
                    </div>
                </div>
                <p><a class="btn btn-outline-danger add-btn" role="button" onclick = "actionF('Пицца Супер Чизбургер', 800)" >Добавить</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
                <img src="img/pizzas/pizza_super_papa.jpg" class="img-fluid img-thumbnail" alt="">
                <h3>Пицца Супер Папа</h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group" role="group" aria-label="First group">
                        <button type="button" class="btn btn-outline-danger minus_btn" onclick = "minusF('Пицца Супер Папа')" >-</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Second group">
                        <input type="text"  id = "Пицца Супер Папа" class="btn counter"  value="0">
                    </div>
                    <div class="btn-group" role="group" aria-label="Third group">
                        <button type="button" class="btn btn-outline-danger" onclick = "plusF('Пицца Супер Папа')">+</button>
                    </div>
                    <div class="btn-group price" role="group" aria-label="Third group">
                        <h5>750 руб.</h5>
                    </div>
                </div>
                <p><a class="btn btn-outline-danger add-btn" role="button" onclick = "actionF('Пицца Супер Папа', 750)" >Добавить</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
                <img src="img/pizzas/pizza_vegeterian.jpg" class="img-fluid img-thumbnail" alt="">
                <h3>Пицца Вегетариан</h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group" role="group" aria-label="First group">
                        <button type="button" class="btn btn-outline-danger minus_btn" onclick = "minusF('Пицца Вегетариан')" >-</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Second group">
                        <input type="text"  id = "Пицца Вегетариан" class="btn counter"  value="0">
                    </div>
                    <div class="btn-group" role="group" aria-label="Third group">
                        <button type="button" class="btn btn-outline-danger" onclick = "plusF('Пицца Вегетариан')">+</button>
                    </div>
                    <div class="btn-group price" role="group" aria-label="Third group">
                        <h5>650 руб.</h5>
                    </div>
                </div>
                <p><a class="btn btn-outline-danger add-btn" role="button" onclick = "actionF('Пицца Вегетариан', 650)" >Добавить</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
                <img src="img/pizzas/pizza_vetchina_griby.jpg" class="img-fluid img-thumbnail" alt="">
                <h3>Пицца Ветчина Грибы</h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group" role="group" aria-label="First group">
                        <button type="button" class="btn btn-outline-danger minus_btn" onclick = "minusF('Пицца Ветчина Грибы')" >-</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Second group">
                        <input type="text"  id = "Пицца Ветчина Грибы" class="btn counter"  value="0">
                    </div>
                    <div class="btn-group" role="group" aria-label="Third group">
                        <button type="button" class="btn btn-outline-danger" onclick = "plusF('Пицца Ветчина Грибы')">+</button>
                    </div>
                    <div class="btn-group price" role="group" aria-label="Third group">
                        <h5>550 руб.</h5>
                    </div>
                </div>
                <p><a class="btn btn-outline-danger add-btn" role="button" onclick = "actionF('Пицца Ветчина Грибы', 550)" >Добавить</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
        </div><!--/row-->
    </div><!--/.col-xs-12.col-sm-9-->




    <!-- <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
        <div class="list-group">
            <a href="#" class="list-group-item active">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
            <a href="#" class="list-group-item">Link</a>
        </div>
    </div><!--/.sidebar-offcanvas-->
    </div><!--/row-->

    <hr>

    <footer>
        <p>© Company 2014</p>
    </footer>

    </div><!--/.container-->
<@dec.loginModal />

    <script src="/js/js_vendor/jquery-3.2.1.slim.min.js"></script>
    <script src="https://npmcdn.com/tether@1.2.4/dist/js/tether.min.js"></script>
    <script src="/js/js_vendor/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/js_vendor/bootstrap.bundle.js"></script>

</body>
</html>