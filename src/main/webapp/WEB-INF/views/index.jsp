
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<h3>Welcome to Keep Notes</h3>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->
	<form action="saveNote" method="post">
		<input placeholder="id" name="noteId" /><br> <input
			placeholder="title" name="noteTitle" /><br> <input
			placeholder="content" name="noteContent" /><br> <input
			placeholder="status" name="noteStatus" /><br> <input type="submit"
			value="Send" />
	</form>

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->

	<br />
	<h3>List of Notes</h3>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Title</th>
			<th>Content</th>
			<th>Status</th>
			<th>createdAt</th>
			<th></th>
		</tr>
		<c:forEach var="note" items="${noteList}">
			<tr>
				<td>${note.noteId}</td>
				<td>${note.noteTitle}</td>
				<td>${note.noteContent}</td>
				<td>${note.noteStatus}</td>
				<td>${note.createdAt}</td>
				<td><form action="deleteNote" method="post">
						<input type="hidden" id="noteId" name="noteId"
							value="${note.noteId}" />
						<button type="submit">Delete</button>
					</form></td>
			</tr>
			<br />
		</c:forEach>
	</table>
</body>
</html>