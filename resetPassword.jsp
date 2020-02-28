<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/table.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jwu\\query.min.js"></script>
	<link rel="stylesheet" href="./css/button.css">
<link rel="stylesheet" href="./css/detail.css">
<link rel="stylesheet" href="./css/error.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/table1.css">
<link rel="stylesheet" href="./css/title.css">

<title>パスワード再設定</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="contents">
			<h1>パスワード再設定画面</h1>


		<s:if
			test="userIdErrorMessageList!=null && userIdErrorMessageList.size()>0">
			<div class = "error">
			<div class = "error-message">
			<s:iterator value="userIdErrorMessageList">
				<s:property />
				<br>
			</s:iterator>
			</div>
			</div>
		</s:if>
		<s:if
			test="passwordErrorMessageList!=null && passwordErrorMessageList.size()>0">
			<div class = "error">
			<div class = "error-message">
			<s:iterator value="passwordErrorMessageList">
				<s:property />
				<br>
			</s:iterator>
			</div>
			</div>
		</s:if>
		<s:if
			test="newPasswordErrorMessageList!=null && newPasswordErrorMessageList.size()>0">
			<div class = "error">
			<div class = "error-message">
			<s:iterator value="newPasswordErrorMessageList">
				<s:property />
				<br>
			</s:iterator>
			</div>
			</div>
		</s:if>
		<s:if
			test="reConfirmationNewPasswordErrorMessageList!=null && reConfirmationNewPasswordErrorMessageList.size()>0">
			<div class = "error">
			<div class = "error-message">
			<s:iterator value="reConfirmationNewPasswordErrorMessageList">
				<s:property />
				<br>
			</s:iterator>
			</div>
			</div>
		</s:if>
		<s:if test="passwordIncorrectErrorMessage!=null">
		<div class = "error">
		<div class = "error-message">
			<s:property value="passwordIncorrectErrorMessage" />
			<br>
		</div>
		</div>
		</s:if>
		<s:if test="newPasswordIncorrectErrorMessage!=null">
		<div class = "error">
		<div class = "error-message">
			<s:property value="newPasswordIncorrectErrorMessage" />
			<br>
		</div>
		</div>
		</s:if>
		<table>
			<s:form action="ResetPasswordConfirmAction">
				<table class = "vertical-list-table">
				<tr>
					<th scope="row"><s:label value="ユーザーID"/></th>
					<td><s:textfield name="userId" class="txt" value="%{#session.userIdForRP}"
							placeholder="ユーザーID" /></td>
				</tr>
				<tr>
					<th scope="row"><s:label value = "現在のパスワード"/></th>
					<td><s:password name="password" class="txt" value=""
							placeholder="現在のパスワード" /></td>
				</tr>
				<tr>
					<th scope= "row"><s:label value = "新しいパスワード"/></th>
					<td><s:password name="newPassword" class="txt" value=""
							placeholder="新しいパスワード" /></td>
				</tr>
				<tr>
					<th scope="row"><s:label value = "新しいパスワード(再確認)"/></th>
					<td><s:password name="reConfirmationPassword" class="txt" value=""
							placeholder="新しいパスワード(再確認)" /></td>
				</tr>
				</table>
				<div class = "submit_btn_box">
					<s:submit value="確認"  class = "submit_btn"/>
				</div>
			</s:form>
		</table>
	</div>
</body>
</html>