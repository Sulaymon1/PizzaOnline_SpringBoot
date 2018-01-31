<#ftl encoding="utf-8">
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
    <link rel="stylesheet" href="/css/style_order.css">
</head>
<body>
<script>
    function ayantoggle(){
        $(".forgot").slideToggle('slow');
    }
</script>

<a class="fixed-top logo" href="/home"><img id="logo" src="/img/logo_transparent (2).png" alt="Page Logo"/></a>

<nav id="header" class="navbar navbar-expand-lg navbar-light fixed-top fixed-theme">
    <div id="header-container" class="container navbar-container fixed-theme">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto breadcrumbs" style="margin-left: 40%;">
                <li class="nav-item breadcrumbs__item breadcrumbs__item_current">
            <span class="breadcrumbs__bubble">
              <span class="breadcrumbs__step">1</span>
              <div class="breadcrumbs__line-right">
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
              </div>
            </span>
                    Корзина
                </li>
                <li class="breadcrumbs__item ">
            <span class="breadcrumbs__bubble">
              <span class="breadcrumbs__step">2</span>
              <div class="breadcrumbs__line-left">
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
              </div>
              <div class="breadcrumbs__line-right">
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
              </div>
            </span>
                    Способ доставки
                </li>
                <li class="breadcrumbs__item ">
            <span class="breadcrumbs__bubble">
              <span class="breadcrumbs__step">3</span>
              <div class="breadcrumbs__line-left">
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
                <div class="breadcrumbs__border-circle"></div>
              </div>
            </span>
                    Заказ принят
                </li>
            </ul>

        </div>
    </div>
</nav>


<div class="container">
    <div class="content">
        <h1>Корзина</h1>
        <div class="list-group">
            <#if list?has_content>
            <#list list as pizza >
            <li class="list-group-item list-group-item-action flex-column item">
                <div class="d-flex w-100 justify-content-between item-name">
                    <a href="#" class="badge-light"><h5 class="mb-1">${pizza.pizzaName}</h5></a>
                    <small>3 seconds ago</small>
                </div>
                <div class="d-flex w-100 justify-content-between">
                    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                        <div class="btn-group" role="group" aria-label="First group">
                            <button type="button" class="btn btn-outline-danger minus_btn" >-</button>
                        </div>
                        <div class="btn-group" role="group" aria-label="Second group">
                            <button type="button" class="btn counter" >${pizza.count}</button>
                        </div>
                        <div class="btn-group" role="group" aria-label="Third group">
                            <button type="button" class="btn btn-outline-danger">+</button>
                        </div>
                    </div>
                    <h5>745 руб.</h5>
                </div>
                <button type="button" class="btn btn-outline-danger btn-delete">Удалить</button>
            </li>
            </#list>
            <#else>
            <li class="list-group-item list-group-item-action flex-column item empty">
                <div class="d-flex w-100 justify-content-between">
                        <h3> Добавьте что-нибудь из меню</h3>
                    </div>
            </li>
            </#if>

            <#--   <li class="list-group-item list-group-item-action flex-column item">
                   <div class="d-flex w-100 justify-content-between item-name">
                       <a href="#" class="badge-light"><h5 class="mb-1">List group item heading</h5></a>
                       <small>3 seconds ago</small>
                   </div>
                   <div class="d-flex w-100 justify-content-between">
                       <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                           <div class="btn-group" role="group" aria-label="First group">
                               <button type="button" class="btn btn-outline-danger minus_btn" >-</button>
                           </div>
                           <div class="btn-group" role="group" aria-label="Second group">
                               <button type="button" class="btn counter" >1</button>
                           </div>
                           <div class="btn-group" role="group" aria-label="Third group">
                               <button type="button" class="btn btn-outline-danger">+</button>
                           </div>
                       </div>
                       <h5>745 руб.</h5>
                   </div>
                   <button type="button" class="btn btn-outline-danger btn-delete">Удалить</button>
               </li>-->
        </div>
        <hr>
        <a <#if Session.isLogin??>href="/order/decor"<#else >href="#myModal"  data-toggle="modal"</#if> class="btn btn-danger" id="btn-order" <#if !model.list?has_content>disabled</#if>>Заказать</a>
    </div>
</div>
<hr>


<@dec.loginModal />
<footer>
    <p>© Company 2014</p>
</footer>

</div>

<script src="/js/js_vendor/jquery-3.2.1.slim.min.js"></script>
<script src="/js/js_vendor/popper.min.js"></script>
<script src="/js/js_vendor/bootstrap.min.js"></script>
</body>
</html>