<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- ETAPE 5 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<!--  Pour la barre de recherche -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<title>Liste des praticiens</title>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/css/all.css"/>">
</head>
<body>


<style>
m { margin:60px }
mm { margin:10px }
</style>

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
				<h2>Liste des praticiens</h2>
			</div>
			<p><div>
	<mm></mm>	<label>NOM 		:  <mm></mm>		</label><input id="filtrenom" type="text" required >

<m>			
</m>

		<label>LIEU 	:  	<mm></mm>	</label><input id="filtrelieu" type="text" required>
</div></p>


 			<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Identifiant</th>
							<th>Nom</th>
							<th>Prenom</th>
							<th>Email</th>
							<th>mdp</th>
							<th>Lieu</th>
							<th></th>
						</tr>
					</thead>
					<tbody id="myTable">
						<c:forEach items="${mesPraticiens}" var="prat">
							<c:url value="/praticien/edit" var="editUrl">
								<c:param name="id" value="${prat.id}"/>
							</c:url>
							<c:url value="/praticien/delete" var="deleteUrl">
								<c:param name="id" value="${prat.id}"/>
							</c:url>
							<tr>
								<td>${prat.id}</td>
								<td>${prat.nom}</td>
								<td>${prat.prenom}</td>
								<td>${prat.email}</td>
								<td>${prat.mdp}</td>
								<td>${prat.lieu}</td>
								<td><div class="btn-group btn-group-sm">
									<a href="${editUrl}" class="btn btn-primary"><i class="fa fa-edit"></i></a>
									<a href="${deleteUrl}" class="btn btn-danger"><i class="fa fa-trash"></i></a>
								</div></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</div>
				
			<script>
			
			$(document).ready(function () {
			      $("#filtrenom").keyup(function(){
			           var reg = new RegExp($("#filtrenom").val());
			           $(".table-bordered tbody tr")
			           .each(function(i, item){
			              $(item)
			              .css("display", $(item)
			              .children('td:eq(1)')            			 //  	  En fonction du "nom" 2eme colonne
			              .text().toLowerCase().match(reg) ? '' : 'none' );
			             
			            });
			      });
			});
			
			$(document).ready(function () {
			      $("#filtrelieu").keyup(function(){
			           var reg = new RegExp($("#filtrelieu").val());
			           $(".table-bordered tbody tr")
			           .each(function(i, item){
			              $(item)
			              .css("display", $(item)
			              .children('td:eq(5)')            			 //  	  En fonction du "lieu" 6eme colonne
			              .text().toLowerCase().match(reg) ? '' : 'none' );
			             
			            });
			      });
			});
			
		
			</script>

			<c:url value="praticien/add" var="addUrl"/>
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