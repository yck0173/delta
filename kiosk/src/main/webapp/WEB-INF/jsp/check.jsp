<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	font-family: Verdana;
	background-color: #CD3C3C;
	text-align: center;'
}

button {
	border-radius: 10px;
	background: #FFEB46;
	width: 200px;
	height: 50px;
	font-size: 30px;
}

</style>
<body>
<form id="orderForm" method="post" action="/kiosk/check/test.do">
    <input type="hidden" id="orderType" name="orderType">
    <button type="button" id="dineIn" onclick="setOrderType('dineIn')">매장 식사</button>
    <button type="button" id="takeAway" onclick="setOrderType('takeAway')">포장</button>
</form>


<script>
let orderType;

function setOrderType(type) {
    orderType = type;
    
    if (orderType === 'dineIn') {
        alert("매장 식사를 선택하셨습니다.");
    } else if (orderType === 'takeAway') {
        alert("포장을 선택하셨습니다.");
    }
	
    document.getElementById('orderType').value = orderType;
    
    // 폼 제출
    document.getElementById('orderForm').submit();
}
</script>
</body>
</html>
