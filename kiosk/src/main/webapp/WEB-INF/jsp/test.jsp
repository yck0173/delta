<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피자헛</title>
</head>
<style>
body {
	font-family: Verdana;
	background-color: #CD3C3C;
}

.check_all {
	border-radius: 10px;
	background: #FFEB46;
	width: 200px;
	height: 50px;
	font-size: 30px;
}

.check_pizza {
	border-radius: 10px;
	background: #FFEB46;
	width: 200px;
	height: 50px;
	font-size: 30px;
}

.check_pasta {
	border-radius: 10px;
	background: #FFEB46;
	width: 200px;
	height: 50px;
	font-size: 30px;
}

.check_drink {
	border-radius: 10px;
	background: #FFEB46;
	width: 200px;
	height: 50px;
	font-size: 30px;
}

div {
	text-align: center;
}

p {
	font-size: 20px;
}

.check:active {
	background: #FFC31E;
}

#text {
	border-radius: 10px;
	width: 200px;
	height: 50px;
	font-size: 15px;
	margin: 1px;
	text-align: center;
}

.button_img {
	border: none;
	background-color: #CD3C3C;
	margin: 3px;
}

.button_img:active {
	background: #ffbf00;
}

.fir {
	display: inline-block;
}

.line {
	display: block;
	width: 100%;
	clear: both;
}

.left_width {
	background-color: #CD3C3C;
	width: 20%;
	text-align: center;
}

.middle_width {
	background-color: #CD3C3C;
	text-align: center;
	width: 75%;
	height: 100%;
	float: left;
}

.right_width {
	background-color: white;
	text-align: left;
	width: 25%;
	height: 100%;
	position: fixed;
	right: 0%;
	font-size: 20px;
}

.order {
	text-align: center;
	font-size: 30px;
}

.reset {
	position: fixed;
	bottom: 2%;
	right: 17%;
	border-radius: 10px;
	background: #CBFF75;
	width: 100px;
	height: 100px;
	font-size: 25px;
	border: none;
}

.order_button {
	position: fixed;
	bottom: 2%;
	right: 3%;
	border-radius: 10px;
	background: #CBFF75;
	width: 250px;
	height: 100px;
	font-size: 25px;
	border: none;
}

.order_button:active {
	background: #9EF048;
}

.total {
	text-align: center;
	width: 300px;
	height: 100px;
	margin: 100px;
}

.pizza_order {
	display: none;
}

.pasta_order {
	display: none;
}

.drink_order {
	display: none;
}

.area {
	text-align: center;
}
</style>


<body>

	<div class="middle_width">
		<h1>피자헛</h1>
		<button class="check_all">모든 메뉴</button>
		<button class="check_pizza">피자</button>
		<button class="check_pasta">파스타</button>
		<button class="check_drink">음료</button>

		<div class="line1">
			<div class="fir">
				<button type="button" class="button_img" name="bul" id="pizza"
					onclick="click_bul()">
					<img
						src="http://localhost:8080/kiosk/images/egovframework/example/bul.png"
						alt="이미지 버튼" width="200" height="200">
				</button>
				<h3>불고기 피자</h3>
				<h5>R:13000원 L:20000원</h5>
			</div>

			<div class="fir">
				<button type="button" class="button_img" name="pepe" id="pizza"
					onclick="click_pepe()">
					<img
						src="http://localhost:8080/kiosk/images/egovframework/example/pepe.png"
						alt="이미지 버튼" width="200" height="200">
				</button>
				<h3>페페로니 피자</h3>
				<h5>R:13000원 L:20000원</h5>
			</div>

			<div class="fir">
				<button type="button" class="button_img" name="chese" id="pizza"
					onclick="click_chese()">
					<img
						src="http://localhost:8080/kiosk/images/egovframework/example/chese.png"
						alt="이미지 버튼" width="200" height="200">
				</button>
				<h3>치즈 피자</h3>
				<h5>R:12000원 L:18000원</h5>
			</div>
		</div>

		<div class="line2">
			<div class="fir">
				<button type="button" class="button_img" name="spa" id="pasta"
					onclick="click_spa()">
					<img
						src="/kiosk/images/egovframework/example/spa.png"
						alt="이미지 버튼" width="200" height="200">
				</button>
				<h3>토마토 파스타</h3>
				<h5>8000원</h5>
			</div>

			<div class="fir">
				<button type="button" class="button_img" name="sea"
					onclick="click_sea()">
					<img
						src="/kiosk/images/egovframework/example/sea.png"
						alt="이미지 버튼" width="200" height="200">
				</button>
				<h3>해물 파스타</h3>
				<h5>8000원</h5>
			</div>

			<div class="fir">
				<button type="button" class="button_img" name="hot"
					onclick="click_hot()">
					<img
						src="/kiosk/images/egovframework/example/hot.png"
						alt="이미지 버튼" width="200" height="200">
				</button>
				<h3>홍합 파스타</h3>
				<h5>8000원</h5>
			</div>
		</div>

		<div class="line3">
			<div class="fir">
				<button type="button" class="button_img" name="cola"
					onclick="click_cola()">
					<img
						src="/kiosk/images/egovframework/example/cola.png"
						alt="이미지 버튼" width="150" height="150">
				</button>
				<h3>콜라</h3>
				<h5>2000원</h5>
			</div>

			<div class="fir">
				<button type="button" class="button_img" name="sprite"
					onclick="click_sprite()">
					<img
						src="/kiosk/images/egovframework/example/sprite.jpg"
						alt="이미지 버튼" width="150" height="150">
				</button>
				<h3>스프라이트</h3>
				<h5>2000원</h5>
			</div>
		</div>

	</div>

	<div class="right_width">
		
			<h2 class="order">주문내역</h2>
			<div class="pizza_order" id="pizza_order">
				<input type='button' onclick='pizza("minus")' value='-' /> 
				<input type="text" name="pizza" id="text" readonly /> 
				<input type='button' onclick='pizza("plus")' value='+' /><br> 
				<input type="radio" name="size" id="Regular" value="R">R 
				<input type="radio" name="size" id="Large" value="L">L

				<div id='pizza_count'>-</div>
				<br>
			</div>
			<div class="pasta_order" id="pasta_order">
				<input type='button' onclick='pasta("minus")' value='-' /> <input
					type="text" name="pasta" id="text" readonly /> <input
					type='button' onclick='pasta("plus")' value='+' />

				<div id='pasta_count'>-</div>
				<br>
			</div>
			<div class="drink_order" id="drink_order">
				<input type='button' onclick='drink("minus")' value='-' /> <input
					type="text" name="drink" id="text" readonly /> <input
					type='button' onclick='drink("plus")' value='+' />

				<div id='drink_count'>-</div>
				<br>
			</div>

			<form method="post"  action="/kiosk/check.do">
			<div>
				<p>
					<textarea cols="50" rows="10" class="area" name="orderDetails"></textarea>
				</p>
			</div>
			<div>
				<input type="text" class="total" name="total" id="text" readonly /><br>
				<p>
					<b>합계</b>
				</p>
			</div>
			<div>

				<input type="button" class="reset" onClick="resetTotal()" value="초기화" />
				<input type="submit" class="order_button" value="주문하기" />
			
			</div>
			</form>
	<div class=order></div>
	</div>
</body>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	//메뉴 버튼 클릭 시 
	document.querySelector('.check_all').addEventListener('click', function() {
		document.querySelector('.line1').style.display = "block";
		document.querySelector('.line2').style.display = "block";
		document.querySelector('.line3').style.display = "block";
	});

	document.querySelector('.check_pizza').addEventListener('click',
			function() {
				document.querySelector('.line1').style.display = "block";
				document.querySelector('.line2').style.display = "none";
				document.querySelector('.line3').style.display = "none";
			});

	document.querySelector('.check_pasta').addEventListener('click',
			function() {
				document.querySelector('.line1').style.display = "none";
				document.querySelector('.line2').style.display = "block";
				document.querySelector('.line3').style.display = "none";
			});

	document.querySelector('.check_drink').addEventListener('click',
			function() {
				document.querySelector('.line1').style.display = "none";
				document.querySelector('.line2').style.display = "none";
				document.querySelector('.line3').style.display = "block";
			});

	var pizzaCount = 0;
	var pastaCount = 0;
	var drinkCount = 0;

	//img 버튼 클릭 시 주문내역
	function click_bul() {
		document.querySelector('input[name="pizza"]').value = "불고기 피자";
		document.getElementById("pizza_order").style.display = "block";
		pizzaCount = 0;
	}

	function click_pepe() {
		document.querySelector('input[name="pizza"]').value = "페페로니 피자";
		document.getElementById("pizza_order").style.display = "block";
		pizzaCount = 0;
	}

	function click_chese() {
		document.querySelector('input[name="pizza"]').value = "치즈 피자";
		document.getElementById("pizza_order").style.display = "block";
		pizzaCount = 0;
	}

	function click_spa() {
		document.querySelector('input[name="pasta"]').value = "토마토 파스타";
		document.getElementById("pasta_order").style.display = "block";
		pastaCount = 0;
	}

	function click_sea() {
		document.querySelector('input[name="pasta"]').value = "해물 파스타";
		document.getElementById("pasta_order").style.display = "block";
		pastaCount = 0;
	}

	function click_hot() {
		document.querySelector('input[name="pasta"]').value = "홍합 파스타";
		document.getElementById("pasta_order").style.display = "block";
		pastaCount = 0;
	}

	function click_cola() {
		document.querySelector('input[name="drink"]').value = "콜라";
		document.getElementById("drink_order").style.display = "block";
		drinkCount = 0;
	}

	function click_sprite() {
		document.querySelector('input[name="drink"]').value = "스프라이트";
		document.getElementById("drink_order").style.display = "block";
		drinkCount = 0;
	}

	var prices = {
		"불고기 피자" : {
			R : 13000,
			L : 20000
		},
		"페페로니 피자" : {
			R : 13000,
			L : 20000
		},
		"치즈 피자" : {
			R : 12000,
			L : 18000
		},
		"토마토 파스타" : 8000,
		"해물 파스타" : 8000,
		"홍합 파스타" : 8000,
		"콜라" : 2000,
		"스프라이트" : 2000
	};

	var order = {};

	// textarea 업데이트
	function updateOrderList() {
		var orderList = '';
		for ( var item in order) {
			if (order[item] > 0) {
				orderList += item + ': ' + order[item] + '\n';
			}
		}
		document.querySelector('textarea').value = orderList;
	}

	
	//초기화 버튼
	function resetTotal() {
		total = 0;
		pizzaCount = 0;
		pastaCount = 0;
		drinkCount = 0;
		order = {};
		document.querySelector('input[name="total"]').value = total;
		document.getElementById('pizza_count').innerHTML = "-";
		document.getElementById('pasta_count').innerHTML = "-";
		document.getElementById('drink_count').innerHTML = "-";
		document.querySelector('textarea').value = "";
	}
	
	// 주문 가격 계산
	var total = 0;

	function calculateTotal(item) {
		var pizzaName = document.querySelector('input[name="pizza"]').value;
		var pastaName = document.querySelector('input[name="pasta"]').value;
		var drinkName = document.querySelector('input[name="drink"]').value;

		if (item == "pizza" && pizzaName) {
			var pizzaSize = document
					.querySelector('input[name="size"]:checked').value;
			total += prices[pizzaName][pizzaSize];
		}

		if (item == "pasta" && pastaName) {
			total += prices[pastaName];
		}

		if (item == "drink" && drinkName) {
			total += prices[drinkName];
		}

		document.querySelector('input[name="total"]').value = total;
	}
	
	// 수량 체크
	function pizza(action) {
		var pizzaName = document.querySelector('input[name="pizza"]').value;
		var pizzaSize = document.querySelector('input[name="size"]:checked').value;
		var pizzaKey = pizzaName + ' (' + pizzaSize + ')'; // 피자 이름과 사이즈를 조합한 키
		if (action == "plus") {
			order[pizzaKey] = (order[pizzaKey] || 0) + 1;
			total += prices[pizzaName][pizzaSize];
		} else if (action == "minus" && order[pizzaKey] > 0) {
			order[pizzaKey]--;
			total -= prices[pizzaName][pizzaSize];
		}
		document.getElementById('pizza_count').innerHTML = order[pizzaKey]
				+ '판';
		document.querySelector('input[name="total"]').value = total;
		updateOrderList();
	}

	function pasta(action) {
		var pastaName = document.querySelector('input[name="pasta"]').value;
		if (action == "plus") {
			order[pastaName] = (order[pastaName] || 0) + 1;
			total += prices[pastaName];
		} else if (action == "minus" && order[pastaName] > 0) {
			order[pastaName]--;
			total -= prices[pastaName];
		}
		document.getElementById('pasta_count').innerHTML = order[pastaName]
				+ '인분';
		document.querySelector('input[name="total"]').value = total;
		updateOrderList();
	}

	function drink(action) {
		var drinkName = document.querySelector('input[name="drink"]').value;
		if (action == "plus") {
			order[drinkName] = (order[drinkName] || 0) + 1;
			total += prices[drinkName];
		} else if (action == "minus" && order[drinkName] > 0) {
			order[drinkName]--;
			total -= prices[drinkName];
		}
		document.getElementById('drink_count').innerHTML = order[drinkName]
				+ '개';
		document.querySelector('input[name="total"]').value = total;
		updateOrderList();
	}
</script>
</html>