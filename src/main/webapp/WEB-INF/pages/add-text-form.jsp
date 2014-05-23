<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Add text page</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>

<script>
	CKEDITOR.replace('textContent');
</script>


</head>
<body>
<h1>Add text page</h1>
<p>Here you can add a new text.</p>
<form:form method="POST" commandName="text" action="${pageContext.request.contextPath}/text/add.html">
<table>
<tbody>

	<tr>
		<td>pid:</td>
		<td><input type="text" name="pid" /></td>
	</tr>
	<tr>
		<td>uid:</td>
		<td><input type="text" name="uid" /></td>
	</tr>
	
	<tr>
		<td>title:</td>
		<td><input type="text" name="title" /></td>
	</tr>
	

<%-- 	<tr>
		<td>textContent:</td>
		<td><form:input path="textContent" /></td>
	</tr> --%>
	
	
<%-- 	<tr>
		<td>dtime:</td>
		<td><form:input path="dtime" /></td>
	</tr>
	 --%>



 	<tr>
	
		<textarea name="textContent" id="textContent" rows="10" cols="80">
                This is my textarea to be replaced with CKEditor.
        </textarea>
        <script>
			CKEDITOR.replace('textContent');
		</script>
		
	</tr>	 
		
	<tr>
		<td><input type="submit" value="Add" /></td>
		<td></td>
	</tr>
	
	
</tbody>
</table>
</form:form>




<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>
</body>
</html>