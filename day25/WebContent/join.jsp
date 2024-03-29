<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="join_db.jsp" method="post" name="joinform">
		<p>
			<label>아이디 : <input type="text" name="id"></label>
		</p>
		<p id="result"></p>
		<p><label>이름 : <input type="text" name="name"></label>
		<p><label>비밀번호 : <input type="password" name="password"></label>
		<p><label>비밀번호 확인 : <input type="password" name="password_re"></label>
		<p>
			성별 :
			남자<input type="radio" name="jender" value="남자" checked>
			여자<input type="radio" name="jender" value="여자" checked>	
		</p>
		<p>
			<label>
				우편번호 :
				<input type="text" name="zipcode" class="postcodify_postcode5" value="" />
				<button type="button" id="postcodify_search_button">검색</button><br />
			</label>
		</p>
		<p>
			<label>
				주소 :
				<input type="text" name="address" class="postcodify_address" value="" /><br />
			</label>
		</p>
		<p>
			<label>
				상세 주소 :
				<input type="text" name="address_detail" class="postcodify_details" value="" /><br />
			</label>
		</p>
		<p>
			<label>
				참고 항목 :
				<input type="text" name="address_etc" class="postcodify_extra_info" value="" /><br />
			</label>
		</p>
	</form>
</body>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
</html>