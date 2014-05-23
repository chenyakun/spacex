<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>List of texts</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
</head>
<body>
<h1>List of texts</h1>
<p>Here you can see the list of the texts, edit them, remove or update.</p>
<table border="1px" cellpadding="0" cellspacing="0" >
<thead>
<tr>
<th width="10%">id</th><th width="15%">textContent</th><th width="10%">dtime</th><th width="10%">actions</th>
</tr>
</thead>
<tbody>
<c:forEach var="text" items="${texts}">
<tr>
	<td>${text.id}</td>
	<td>${text.textContent}</td>
	<td>${text.dtime}</td>
	<td>
	<a href="${pageContext.request.contextPath}/text/edit/${text.id}.html">Edit</a><br/>
	<a href="${pageContext.request.contextPath}/text/delete/${text.id}.html">Delete</a><br/>
	</td>
</tr>
</c:forEach>
</tbody>
</table>

<p><a href="${pageContext.request.contextPath}/index.html">Home page..</a></p>

<hr>
<form>
		<textarea name="editor1" id="editor1" rows="10" cols="80">
                This is my textarea to be replaced with CKEditor.
            </textarea>
		<script>
			// Replace the <textarea id="editor1"> with a CKEditor
			// instance, using default configuration.
			CKEDITOR.replace('editor1');
		</script>
	</form>

</body>
</html>