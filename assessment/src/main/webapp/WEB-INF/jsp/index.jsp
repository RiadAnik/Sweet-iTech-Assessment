<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache"> 
    <meta http-equiv="Cache-Control" content="no-cache"> 
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    
    <title>Nahid's Shop | Home</title>
    
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
     <link href="static/css/style.css" rel="stylesheet">
    
    <!--[if lt IE 9]>
		<script src="static/js/html5shiv.min.js"></script>
		<script src="static/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Nahid's Shop</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="new-products">Add Product</a></li>
					<li><a href="all-products">All Products</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<c:choose>
		<c:when test="${mode == 'MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome Nahid</h1>
				</div>
				<div class="jumbotron text-center">
					<h3>Total pieces [Sold] : 20</h3>
				</div>
			</div>
		</c:when>
		<c:when test="${mode == 'MODE_TASKS'}">
			<div class="container text-center" id="tasksDiv">
				<h3>All products</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>Product Name</th>
								<th>Product type</th>
								<th>Price (Each Unit)</th>
								<th>Total Pieces (Sold)</th>
								<th>Total Benefit</th>
								<th>Update Row</th>
								<th>Delete Row</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="${products}">
								<tr>
									<td>${product.id}</td>
									<td>${product.name}</td>
									<td>${product.type}</td>
									<td>${product.price}</td>
									<td>${product.piece}</td>
									<td>${product.befefit}</td>
									<td><a href="update-product?id=${product.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="delete-product?id=${product.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		<c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Product</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-product">
					<input type="hidden" name="id" value="${product.id}"/>
					<div class="form-group">
						<label class="control-label col-md-3">Product Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name" value="${product.name}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Product Type</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="type" value="${product.type}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Price (Each Unit)</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="price" value="${product.price}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Total pieces (Sold)</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="piece" value="${product.piece}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Total benefit</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="befefit" value="${product.befefit}"/>
						</div>				
					</div>
					
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
					</div>
				</form>
			</div>
		</c:when>		

</c:choose>
	<script src="static/js/jquery-1.11.1.min.js"></script>    
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>