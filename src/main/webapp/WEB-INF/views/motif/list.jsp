<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des motifs</title>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/css/all.css"/>">
</head>
<body>


<div class=" navbar navbar-expand-lg navbar-light">
        <a href="https://jischinger.files.wordpress.com/2012/11/error404.jpg" class="embed-responsive-item"><img class="rounded img-fluid" src="https://i.skyrock.net/1839/50171839/pics/2233400185_1.jpg"  class="img-fluid" alt="img-responsive" style="width: 10%"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"  data-target="#navbarResponsive">
            <span class="navbar-toggler-icon"></span>
        </button>
        
         <a href="https://www.foot01.com/equipe/paris/accord-psg-messi-c-est-deja-boucle-384051" class="rounded img-fluid"><img class="rounded img-fluid" src="https://www.foot.fr/2372-large_default/magnet-logo-psg.jpg" class="img-fluid" alt="img-responsive" style="width: 30%"></a>
 
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="praticien"> Praticien</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="patient"> Patient</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin"> Admin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"> Filiere</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"> Formateur</a>
                </li>
            </ul>
        </div>
    </div>

	<div class="container-fluid">
		<div class="card mt-3">
			<div class="card-header bg-info text-white">
				<h2>Liste des motifs</h2>
			</div>
			<div class="card-body">
				<table id="motifTable" class="table table-striped">
					<thead>
						<tr>
							<th>Identifiant</th>
							<th>Libelle</th>
							<th>Duree</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${mesMotifs}" var="motif">
							<c:url value="/motif/edit" var="editUrl">
								<c:param name="id" value="${motif.id}"/>
							</c:url>
							<c:url value="/motif/delete" var="deleteUrl">
								<c:param name="id" value="${motif.id}"/>
							</c:url>
							<tr>
								<td>${motif.id}</td>
								<td>${motif.libelle}</td>
								<td>${motif.duree}</td>
								<td><div class="btn-group btn-group-sm">
									<a href="${editUrl}" class="btn btn-primary"><i class="fa fa-edit"></i></a>
									<a href="${deleteUrl}" class="btn btn-danger"><i class="fa fa-trash"></i></a>
								</div></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<c:url value="/motif/add" var="addUrl"/>
			<div class="card-footer">
				<a href="${addUrl}" class="btn btn-success btn-lg">
					<i class="fa fa-plus"></i>
				</a>
			</div>
		</div>
	</div>
	
	<script src="<c:url value="/js/jquery-3.5.0.min.js"/>"></script>
	<script src="<c:url value="/js/bootstrap.bundle.min.js"/>"></script>
</body>
</html>