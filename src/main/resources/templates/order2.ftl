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
    <link rel="stylesheet" href="/css/style_payment.css">
    <link rel="stylesheet" href="/css/style_order2.css">


    <script type="text/javascript" src="/js/select_type.js"></script>

</head>
<body	onbeforeunload = "clearInputs()" >


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
                <li class="breadcrumbs__item breadcrumbs__item_current">
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
        <h1>Оформление заказа</h1>
        <hr>
        <div>
            <form method="post" action="/order/decor">

            <h5>Способ доставки</h5>
            <div class="form-check variant">
                <label class="form-check-label variant-dostavki">
                    <input class="form-check-input" type="radio" onclick = "delivery('yes')" name="radiotype" id="exampleRadios1" value="send" checked>
                    <span>Доставить по адресу</span>
                </label>
                <label >
                    <input class="form-check-input" type="radio" onclick = "delivery('no')" name="radiotype" id="exampleRadios2" value="takeme">
                    <span>Самовывоз</span>
                </label>
            </div>


                <div style="display: ;">

                    <div id = "delivery">
                    </div>

                </div>

                <div id = "delivery1">

                    <div class="form-group">
                        <input type="text" class="form-control form-control-sm" name="streetAndHouse" id="inputAddress" placeholder="Введите улицу, дом, корпус и выберите предложенный вариант">
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <input type="text" class="form-control form-control-sm" name="domofon" id="inputEmail4" placeholder="Домофон">
                        </div>
                        <div class="form-group col-md-4">
                            <input type="text" class="form-control form-control-sm" name="floor" id="inputPassword4" placeholder="Этаж">
                        </div>
                        <div class="form-group col-md-4">
                            <input type="text" class="form-control form-control-sm" name="roomNumber" id="inputPassword4" placeholder="Квартира">
                        </div>
                    </div>

                </div>



                <h5>Способ оплаты</h5>
                <div class="form-check variant">
                    <label class="form-check-label variant-dostavki">
                        <input class="form-check-input" type="radio" onclick = "payment('online')" name="payment" id="exampleRadios3" value="online" checked>
                        <span>Онлайн оплата</span>
                    </label>
                    <label >
                        <input class="form-check-input" type="radio" onclick = "payment('cash')" name="payment" id="exampleRadios4" value="cash">
                        <span>Оплата наличными</span>
                    </label>
                </div>

                <div id = "payment">

                    <div class="container">
                        <div id="content">
                            <h1>Pay Invoice</h1>
                            <div class="card-row">
                                <span class="visa"></span>
                                <span class="mastercard"></span>
                                <span class="amex"></span>
                                <span class="discover"></span>
                            </div>

                            <div class="form-group form-pay">
                                <label>Payment amount</label>
                                <div class="amount-placeholder"></div>
                                <span>$</span>
                                <span>500</span>
                            </div>
                            <div class="form-group form-pay">
                                <label >Name on card</label>
                                <input type="text" id="NameOnCard" value="mock" class="form-control form-control-pay">
                            </div>
                            <div class="form-group form-pay">
                                <label >Card number</label>
                                <input type="text" value="mock" class="null car-image form-control form-control-pay">
                            </div>
                            <div class="expiry-date-group form-group form-pay" >
                                <label >Expiry date</label>
                                <input type="text" value="mock" class="form-control form-control-pay" placeholder="MM / YY">
                            </div>
                            <div class="security-code-group form-group form-pay">
                                <label >Security code</label>
                                <div class="input-container">
                                    <input type="text" value="mock" class="form-control form-control-pay">
                                    <i class="fa fa-question-circle"></i>
                                </div>
                            </div>
                            <div class="form-group form-pay" >
                                <label >ZIP/Postal code</label>
                                <input type="text" value="mock" class="form-control form-control-pay" placeholder="">
                            </div>
                        </div>
                    </div>

                </div>
            <#if error??>
                <div class="alert alert-danger" style="margin-bottom: 0" role="alert">${error}</div>
            </#if>
                <input class="btn btn-success" type="submit" role="button" style="width: 80%; margin-left: 10%;margin-top: 10%;" value="Отправить заказ"/>


            </form>
        </div>
    </div>
    <hr>

    <footer>
        <p>© Company 2014</p>
    </footer>


    <script src="js/js_vendor/jquery-3.2.1.slim.min.js"></script>
    <script src="js/js_vendor/popper.min.js"></script>
    <script src="js/js_vendor/bootstrap.min.js"></script>

</body>
</html>
