<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- ETAPE 5 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des admins</title>
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

<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" /> -->

<!-- <div class="container"> -->
<!--   <form> -->
<!--     <fieldset> -->
<!--       <input id="oCategorieValeur" name="oCategorieValeur" type="hidden" value="0" /> -->
<!--       <div class="input-group"> -->
<!--         <div class="input-group-prepend"> -->
<!--           <button id="oCategorie" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Catégorie</button> -->
<!--           <div id="oCategorieListe" class="dropdown-menu"> -->
<!--             <a class="dropdown-item" data-valeur="0" href="#">Praticien</a> -->
<!--             <a class="dropdown-item" data-valeur="1" href="#">Patient</a> -->
<!--              <a class="dropdown-item" data-valeur="2" href="#">Admin</a> -->
<!--           </div> -->
<!--         </div> -->
<!--         <input id="oSaisie" name="oSaisie" type="text" class="form-control" aria-label="Saisie de mots clés" placeholder="Recherche" required="required"> -->
<!--         <div class="input-group-append"> -->
<!--           <button class="btn btn-primary" type="submit">Recherche</button> -->
<!--         </div> -->
<!--       </div> -->
<!--     </fieldset>  -->
<!--   </form> -->
<!-- </div> -->


 <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Dropdown
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
          </li>
        </ul>
      <div class="recherche_p">
        <form class="form-inline my-2 my-lg-0">
          <div class="recherche-barr">
            <input class="recherche-input" type="search" placeholder="Recherche" aria-label="Search">
            <a href="#" class="recherche-icone">
              <i class="fas fa-search"></i>
            </a>
          </div>
        </form>
      </div>
      </div>
    </nav>
    
    
    
<script>
$(document).ready(function(e){
  // Boucler tous les hyperliens de la liste « oCategorieListe »
  // Et capturer le l’événement « click »
  $('#oCategorieListe').find('a').click(function(e) {
    // Prévenir une action
    e.preventDefault();
    // Changer l’étiquette (label) de la liste pour le contenu du lien
    $('#oCategorie').html($(this).html());
    // Assigner la valeur de l’attribut « data-valeur » à l’élément caché (hidden) du formulaire « oCategorieValeur »
    $('#oCategorieValeur').val($(this).attr("data-valeur"));
  });
});
</script>


	
	<div class="container-fluid">
		<div class="card mt-3">
			<div class="card-header bg-info text-white">
				<h2>Liste des admins</h2>
			</div>
			<div class="card-body">
				<table id="adminTable" class="table table-striped">
					<thead>
						<tr>
							<th>Identifiant</th>
							<th>Nom</th>
							<th>Prenom</th>
							<th>Email</th>
							<th>mdp</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${mesAdmins}" var="adm">
							<c:url value="/admin/edit" var="editUrl">
								<c:param name="id" value="${adm.id}"/>
							</c:url>
							<c:url value="/admin/delete" var="deleteUrl">
								<c:param name="id" value="${adm.id}"/>
							</c:url>
							<tr>
								<td>${adm.id}</td>
								<td>${adm.nom}</td>
								<td>${adm.prenom}</td>
								<td>${adm.email}</td>
								<td>${adm.mdp}</td>
							
								<td><div class="btn-group btn-group-sm">
									<a href="${editUrl}" class="btn btn-primary"><i class="fa fa-edit"></i></a>
									<a href="${deleteUrl}" class="btn btn-danger"><i class="fa fa-trash"></i></a>
								</div></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<c:url value="admin/add" var="addUrl"/>
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