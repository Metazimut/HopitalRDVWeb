<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edition Motif</title>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/css/all.css"/>">
</head>
<body>
	<div class="container-fluid">
		<div id="motifForm" class="card mt-3">
			<form action="<c:url value="/motif/save"/>" method="post">
				<input type="hidden" name="version" value="${motif.version}">
				<div class="card-header bg-info text-white">
					<h3>Edition Motif</h3>
				</div>
				<div class="card-body">
					<div class="form-group">
						<label for="libelle">Libelle :</label> <input type="text"
							class="form-control" id="libelle" name="libelle"
							value="${motif.libelle}">
					</div>
					<div class="form-group">
						<label for="duree">Duree :</label> <input type="number"
							class="form-control" id="duree" name="duree"
							value="${motif.duree}">
					</div>
				</div>
				<div class="card-footer">
					<div class="btn-group btn-group-lg float-right">
						<button type="submit" class="btn btn-success">
							<i class="fa fa-check"></i>
						</button>
						<c:url value="/motif/cancel" var="cancelUrl"/>
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