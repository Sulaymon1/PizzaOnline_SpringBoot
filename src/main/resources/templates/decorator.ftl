<#macro loginModal>
<link rel="stylesheet" href="/css/login.css">
<div class="container">

    <div class="bs-example">
        <!-- Button HTML (to Trigger Modal) -->

        <!-- Modal HTML -->
        <div id="myModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">ВОЙТИ & ЗАРЕГИСТРИРОВАТЬСЯ</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6 col-sm-6 no-gutters">
                                    <div class="model-l">
                                        <form method="post" id="logFrm" class="log-frm" name="logFrm" action="/login" >
                                            <ul>
                                                <li>Mail</li>
                                                <li> <input type="text" placeholder="example@mail.com" id="userName" name="login" class="form-control" onfocus="checkNullProf();"></li>
                                                <li>Пароль</li>
                                                <li><input type="password" placeholder="****" id="password" name="password" class="form-control" onfocus="checkNullProf();"></li>
                                                <li><br/><input type="submit" value="Войти" id="logBtn" class="btn btn-default"></li>
                                                <div style="display:none;" id="loginFail" class="sign">
                                                    <li> <font color="red">  Неправильный пароль!</font></li>
                                                </div>
                                            </ul>
                                        </form>
                                        <div class="clearfix"></div>
                                        <form method="post" id="logFrm1" class="log-frm" name="logFrm1" action="/">
                                            <ul>
                                                <li>
                                                    <a class="for-got" onclick="ayantoggle();" href="javascript:;">Забыли пароль?</a>
                                                    <div class="forgot">
                                                        <ul>
                                                            <li><p>Введите номер чтобы получить временный пароль.</p></li>
                                                            <li>Номер</li>
                                                            <li><input type="text" placeholder="(8)9670000010" id="forgetemailId" class="form-control" name="forgetemailId"></li>
                                                            <li><button type="button" class="btn btn-default" onclick="forgot();">Отправить</button></li>
                                                        </ul>
                                                    </div>
                                                </li>
                                            </ul>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6 no-gutters">
                                    <div class="model-r">
                                        <div class="o-r">
                                            <span>Или</span>
                                        </div>
                                        <form method="post" id="userRegisterFrm" class="log-frm" name="userRegisterFrm" action="/signUp">
                                            <ul>
                                                <li>Имя</li>
                                                <li><input type="text" placeholder="имя" name="name" class="form-control"></li>
                                                <li>Email</li>
                                                <li><input type="text" placeholder="example@gmail.com" name="email" class="form-control"></li>
                                                <li>Номер телефона</li>
                                                <li><input type="text" placeholder="(8)9670000010" name="phoneNumber" class="form-control"></li>
                                                <#if error??>
                                                    <div class="alert alert-danger" style="margin-bottom: 0" role="alert">${error}</div>
                                                </#if>
                                                <br> <li><button type="submit" name="userRegBtn" class="btn btn-default">Зарегистрироваться</button></li>
                                                <!-- <div style="display:none;" class="sign greenglow">
                                                  <li>   <i class="icon-check"></i><br>
                                                    <font color="red">
                                                      User registration successful.<br>
                                                      Your login Url already send to your email.

                                                    </font></li>
                                                  </div>
                                                  <div style="display:none;" id="regnSuc11" class="sign redglow">
                                                    <li>   <i class="icon-mail"></i><br>
                                                      <font color="red">    Email Exist.</font></li>
                                                    </div>  -->
                                            </ul>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</#macro>