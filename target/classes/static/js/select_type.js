function delivery(type)
      {
       if(type == "no")
       {
        document.getElementById('delivery').innerHTML = " <div class=\"form-group\"> <select class=\"form-control form-control-sm\" id=\"id_magaz\" name=\"id_magaz\"> <option value=\"1\" onclick = \"showD('ул. Кремлевская, 102','+7 (843) 200-0-111','Пн - Вс: 11:00 - 23:00','Проспект Победы')\">1. ул. Кремлевская, 102</option> <option value=\"2\" onclick = \"showD('ул. Баумана, 31','+7 (843) 200-0-111','Пн - Вс: 11:00 - 23:00','Проспект Победы')\">2. ул. Баумана, 31</option> </select> <div id = \"deliveryDetails\"></div>";
        document.getElementById('delivery1').innerHTML = "";
        showD('ул. Кремлевская, 102','+7 (843) 200-0-111','Пн - Вс: 11:00 - 23:00','Проспект Победы')
      }
      else  if(type == "yes")
      {
       document.getElementById('delivery1').innerHTML = '<div class="form-group"> <input type="text" class="form-control form-control-sm" name="streetAndHouse" id="inputAddress" placeholder="Введите улицу, дом, корпус и выберите предложенный вариант"></div> <div class="form-row"> <div class="form-group col-md-4"> <input type="text" class="form-control form-control-sm" name="domofon" id="inputEmail4" placeholder="Домофон"> </div> <div class="form-group col-md-4"> <input type="text" class="form-control form-control-sm" name="floor" id="inputPassword4" placeholder="Этаж"> </div> <div class="form-group col-md-4"> <input type="text" class="form-control form-control-sm" id="inputPassword4" name="roomNumber" placeholder="Квартира"> </div> </div> ';
       document.getElementById('delivery').innerHTML = ""; 				
     }
   }

   function showD(address,tel,workingT,metro)
   {	
     document.getElementById('deliveryDetails').innerHTML = " <div class=\"form-group\">".concat(" <span> address: ".concat(address).concat("</span> <br>")).concat(" <span> tel: ".concat(tel).concat("</span> <br>")).concat(" <span>Мы работаем: ".concat(workingT).concat("</span> <br>")).concat(" <span> Метро: ".concat(metro).concat("</span> <br>")).concat("</div>");
   }

   function payment(type)
   {
     if(type == "online")
     {
      document.getElementById('payment').innerHTML = '          <div class="container">            <div id="content">              <h1>Pay Invoice</h1>              <div class="card-row">                <span class="visa"></span>                <span class="mastercard"></span>                <span class="amex"></span>                <span class="discover"></span>              </div>              <div class="form-group form-pay">                <label>Payment amount</label>                <div class="amount-placeholder"></div>                <span>$</span>               <span>500</span>              </div>              <div class="form-group form-pay">                <label >Name on card</label>                <input type="text" id="NameOnCard" class="form-control form-control-pay">              </div>              <div class="form-group form-pay">                <label >Card number</label>                <input type="text" class="null car-image form-control form-control-pay">              </div>              <div class="expiry-date-group form-group form-pay" >                <label >Expiry date</label>                <input type="text" class="form-control form-control-pay" placeholder="MM / YY">              </div>              <div class="security-code-group form-group form-pay">                <label >Security code</label>                <div class="input-container">                  <input type="text" class="form-control form-control-pay">                  <i class="fa fa-question-circle"></i>                </div>              </div>              <div class="form-group form-pay" >                <label >ZIP/Postal code</label> <input type="text" class="form-control form-control-pay" placeholder="">  </div> </div> </div>';
    }
    else if(type == "cash")
      { document.getElementById('payment').innerHTML = ""}
  }

  function clearInputs()
  {
   document.getElementById('exampleRadios1').checked = true;
   document.getElementById('exampleRadios3').checked = true;
 }
