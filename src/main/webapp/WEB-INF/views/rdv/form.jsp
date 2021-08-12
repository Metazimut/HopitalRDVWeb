<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edition RDV</title>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/css/all.css"/>">
</head>
<body>
	<div class="container-fluid">
		<div id="rdvForm" class="card mt-3">
			<form action="<c:url value="/rdv/save"/>" method="post">
				<input type="hidden" name="version" value="${rdv.version}">
				<div class="card-header bg-info text-white">
					<h3>Edition RDV</h3>
				</div>
				<div class="card-body">
					<div class="form-group">
						<label for="lieu">Lieu</label> <input type="text"
							class="form-control" id="lieu" name="lieu"
							value="${rdv.lieu}">
					</div>
					<div class="form-group">
						<label for="duree">Date du RDV</label> <input type="date"
							class="form-control" id="dtRdv" name="dtRdv"
							value="${rdv.dtRdv}">
					</div>
					<div class="form-group">
					<label for="duree">Status</label> <input type="Status"
							class="form-control" id="status" name="status"
							value="${rdv.status}">
					</div>
				</div>
				<div class="card-footer">
					<div class="btn-group btn-group-lg float-right">
						<button type="submit" class="btn btn-success">
							<i class="fa fa-check"></i>
						</button>
						<c:url value="/rdv/cancel" var="cancelUrl"/>
						<a href="${cancelUrl}" type="button" class="btn btn-warning">
							<i class="fa fa-undo"></i>
						</a>
					</div>
				</div>
			</form>
		</div>

	</div>

	<script src="<c:url value="/js/jquery-3.5.0.min.js"/>"></script>
	<script src="<c:url value="/js/bootstrap.bundle.min.js"/>"></script>
</body>
</html>