<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
label {
	width: 100px;
	display: inline-block;
}

.auto_center {
	width: 400px;
	height: 400px;
	padding: 10px;
	margin: 200px auto;
}
#right-box {
	float: right;
	padding-top:1px;
}
#view {
	height: 100%;
}
</style>

</head>
<body>
	<jsp:include page="./Header.jsp"></jsp:include>
	<div class="view">
<table>
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"></td>
      <td>글쓰기</td>
      <td width="5"></td>
     </tr>
    </table>
   <table>
     <tr>
      <td>&nbsp;</td>
      <td align="center">제목</td>
      <td><input name="title" size="50" maxlength="100"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">이름</td>
      <td><input name="name" size="30" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>

     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">내용</td>
      <td><textarea name="memo" cols="50" rows="13" style="margin:0px; width:1214px; height:441px;"></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1"><td colspan="4"></td></tr>
     <tr height="1" ><td colspan="4"></td></tr>
   
      	<div id="right-box">
       <a href="#" class="button button-style-1" id="nextTwo">등록</a>
      <a href="#" class="button button-style-1" id="nextTwo">취소</a>
      </div>
      <br/>
      </div>  
<!--      <tr align="center">    
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="등록">
       <input type=button value="취소">
       
      <td>&nbsp;</td>
     </tr> -->
    </table>
   </td>
  </tr>
 </table>

	<jsp:include page="./Footer.jsp"></jsp:include>
</head>


</body>
<script></script>
</html>