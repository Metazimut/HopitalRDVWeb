<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edition de l'admin</title>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/css/all.css"/>">
</head>
<body>
	<div class="container-fluid">
		<div id="adminForm" class="card mt-3">
			<form action="<c:url value="/admin/save"/>" method="post">
				<input type="hidden" name="version" value="${adm.version}">
				<div class="card-header bg-info text-white">
					<h3>Edition de l'admin</h3>
				</div>
				<div class="card-body">
					<div class="form-group">
						<label for="id">Identifiant:</label> <input type="number" readonly
							class="form-control" id="id" name="id" value="${adm.id}">
					</div>
					<div class="form-group">
						<label for="nom">nom:</label> <input type="text"
							class="form-control" id="nom" name="nom"
							value="${adm.nom}">
					</div>
					<div class="form-group">
						<label for="promotion">prenom:</label> <input type="text"
							class="form-control" id="prenom" name="prenom"
							value="${adm.prenom}">
					</div>
					<div class="form-group">
						<label for="email">email:</label> <input type="text"
							class="form-control" id="email" name="email"
							value="${adm.email}">
					</div>
					<div class="form-group">
						<label for="mdp">mdp:</label> <input type="text"
							class="form-control" id="mdp" name="mdp"
							value="${adm.mdp}">
					</div>
				
				</div>
				<div class="card-footer">
					<div class="btn-group btn-group-lg float-right">
						<button type="submit" class="btn btn-success">
							<i class="fa fa-check"></i>
						</button>
						<c:url value="/admin/cancel" var="cancelUrl"/>
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