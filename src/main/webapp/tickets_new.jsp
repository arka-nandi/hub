<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>

<head>
<title>Tickets</title>
<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<div class="container">

	<table class="table table-striped">
		<caption>Help-line Tickets</caption>
		<thead>
			<tr>
				<th>Id</th>
				<th>Issue</th>
				<th>Resolution</th>
				<th>Resolve Date</th>
				<th>Create Date</th>
				<th>Status</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${tickets}" var="ticket">
				<tr>
					<td>${ticket.ticketId}</td>
					<td>${ticket.issue}</td>
					<td>${ticket.resolution}</td>
					<td>${ticket.resolve}</td>
					<td>${ticket.create}</td>
					<td>${ticket.status}</td>
					
					<td><a type="button" class="btn btn-warning"
						href="tickets/update-ticket?ticketId=${ticket.ticketId}">Approve</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</div>
