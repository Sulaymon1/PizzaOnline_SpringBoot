function actionF(idName, price)
{

	var orderAm = document.getElementById(idName).value;
	var checkChoise = document.getElementById(idName.concat("1"));

		if( orderAm > 0 && checkChoise == null)
		{
			document.getElementById("orderHeader").innerHTML = "Your Orders";

			var newDiv = document.createElement("div");
			var amount = document.createElement("input");
			var attDiv = document.createAttribute("id");
			var att1 = document.createAttribute("type");
			var att2 = document.createAttribute("value");
			var att3 = document.createAttribute("name");
			var att4 = document.createAttribute("id");

				attDiv.value = idName.concat("2");	
				att1.value = "hidden";	
				att2.value = orderAm;
				att3.value = idName;
				att4.value = idName.concat("1");

				newDiv.setAttributeNode(attDiv);
				amount.setAttributeNode(att1);
				amount.setAttributeNode(att2);
				amount.setAttributeNode(att3);
				amount.setAttributeNode(att4);

					document.getElementById('cartContent').appendChild(newDiv);
					document.getElementById(idName.concat("2")).appendChild(amount);


			var newDiv1 = document.createElement("div");
			var attDiv1 = document.createAttribute("id");
			var att2Div1 = document.createAttribute("class");

				attDiv1.value = idName.concat("3");	
				att2Div1.value = "showProducts";	
				newDiv1.setAttributeNode(attDiv1);
				newDiv1.setAttributeNode(att2Div1);
				document.getElementById('cartContentShow').appendChild(newDiv1);


			var totalPrice = document.getElementById("totalPrice").value;

			document.getElementById(idName.concat("3")).innerHTML = idName.concat(" ").concat(orderAm).concat(" порции").concat(" <br> <input class=\"btn btn-outline-secondary\" type = \"button\" value = \"Удалить\" onclick = \"deleteF(\'").concat(idName.concat("2")).concat("\' , \'").concat(idName.concat("3")).concat("\' , ").concat(price).concat(" , ").concat(orderAm).concat(")\" >");
			document.getElementById("totalPriceShow").innerHTML = "Общая сумма ".concat(parseInt(totalPrice) + orderAm * price).concat(" Руб. <br><input class=\"btn btn-outline-danger add-btn\" type='submit'  value = \"заказать\">");
			document.getElementById("totalPrice").value = parseInt(totalPrice) + orderAm * price;

	}
}

function deleteF(idNameServer, idNameClient, price, orderAm)
{
	 var elem = document.getElementById(idNameServer);
 elem.parentElement.removeChild(elem);

	 var elem = document.getElementById(idNameClient);
 elem.parentElement.removeChild(elem);

	var totalPrice = document.getElementById("totalPrice").value;
	document.getElementById("totalPrice").value = parseInt(totalPrice) - price * orderAm;

		if((parseInt(totalPrice) - price * orderAm) != 0)
		{	
			document.getElementById("totalPriceShow").innerHTML = "Общая сумма ".concat(parseInt(totalPrice) - price * orderAm).concat(" Руб. <br><input class=\"btn btn-outline-danger add-btn\" type='submit' value = \"заказать\">");
		}
		else
		{
			document.getElementById("totalPriceShow").innerHTML = "";
			document.getElementById("orderHeader").innerHTML = "";
		}
}

function clearInputs()
{
	document.getElementById("totalPrice").value = "0";
}

function minusF(inputId)
{
	if(document.getElementById(inputId).value > 0)
	{
		inputValue = document.getElementById(inputId).value;
		document.getElementById(inputId).value = --inputValue;
	}
}

function plusF(inputId)
{
	inputValue = document.getElementById(inputId).value;
	document.getElementById(inputId).value = ++inputValue;	
}