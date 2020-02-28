<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/button.css">
<link rel="stylesheet" href="./css/detail.css">
<link rel="stylesheet" href="./css/error.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/table1.css">
<link rel="stylesheet" href="./css/title.css">
<title>パスワード再設定確認</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="contents">
			<h1>パスワード再設定確認画面</h1>
			<table class = "vertical-list-table">
				<tr>
					<th scope = "row"><label>ユーザーID</label></th>
					<td><s:property value="userId" /></td>
				</tr>
				<tr>
					<th scope = "row"><label>新しいパスワード</label></th>
					<td><s:property value="concealedPassword" /></td>
				</tr>
			</table>

			<div class="button-box">
			<s:form action="ResetPasswordCompleteAction">
				<div class = "sumbit_btn_box">
					<s:submit value="パスワード再設定" class="submit_btn"/>
				</div>
			</s:form>
			<s:form action="ResetPasswordAction">
				<div class = "sumbit_btn_box">
					<s:submit value="戻る" class="submit_btn"/>
				</div>
				<s:hidden id="backFlg" name="backFlg" value="1" />
			</s:form>
			</div>
		</div>

</body>
</html>