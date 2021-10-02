<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>

<head>
<title>Update Tickets</title>
<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>




<form:form method="post" modelAttribute="ticket">
	<form:hidden path="ticketId" />
	<form:hidden path="status" />
	<form:hidden path="resolve" />
	<form:hidden path="issue" />
	<form:hidden path="create" />
	
	

	<fieldset class="form-group">
		<form:label path="resolution">Resolution</form:label>
		<form:input path="resolution" type="text" class="form-control"
			required="required" />
		<form:errors path="resolution" cssClass="text-warning" />

	</fieldset>

	



	<button type="submit" class="btn btn-success">Save</button>

</form:form>