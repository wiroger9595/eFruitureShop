
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@include file="/WEB-INF/views/template/header.jsp" %>

	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>Add product</h1>
				

				
				<p class="lead">fill the product</p>
			</div>
			
			<form:form action="${pageContext.request.contextPath}/adminView/admin/productInventory/addProduct" method="post" modelAttribute="product" enctype="multipart/form-data">
				
				<%-- <div class="form-group">
					<label for="id"> Id</label>
					
					<form:input path="productId" id="id" class="form-Control"/>
				</div> --%>
				
				
				
				<div class="form-group">
					<label for="name"> Name</label><form:errors path="productName" cssStyle="color: #ff0000"></form:errors>
					
					<form:input path="productName" id="name" class="form-Control"/>
				</div>
				
				<div class="form-group">
					
				
				</div>
				
				<div class="form-group">
					<label for="category">Category</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value='Sofa'/>Sofa</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value='Table'/>Table</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value='Chair'/>Chair</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value='Bed'/>Bed</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value='Lighting'/>Lighting</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value='Decore'/>Decore</label>
				</div>
				
				
				<div class="form-group">
					<label for="description"> Description</label>
					
					<form:textarea path="productDescription" id="description" class="form-Control"/>
				</div>
				
				<div class="form-group">
					<label for="price"> Price</label> <form:errors path="productPrice" cssStyle="color: #ff0000"></form:errors>
					
					<form:input path="productPrice" id="price" class="form-Control"/>
				</div>
				
				<div class="form-group">
					<label for="condition">Condition</label>
					<label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value='new'/>New</label>
					<label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value='used'/>Used</label>
				</div>
				
				
				<div class="form-group">
					<label for="status">Status</label>
					<label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value='active'/>Active</label>
					<label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value='inactive'/>Inactive</label>
				</div>
				
				
				<div class="form-group">
					<label for="unitInStock">Unit In Stock</label><form:errors path="unitInStock" cssStyle="color: #ff0000"></form:errors>
					<form:input path="unitInStock" id="unitInStock" class="form-Control"/>
					
				</div>
				
				
				<div class="form-group">
					<label for="manufacturer">Manufacturer</label>
					<form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
					
				</div>
				
				
				<div class="form-group">
					<label class="control-label" for="productImage">Upload Picture</label>
					<form:input id="productImage" path="productImage" type ="file" class="form:input-large" />
					
				</div>
				
				
				<br>
				<br>
				<br>
				
				<input type = "submit" value="submit" class= "btn btn-default">
				<a href="<c:url value="/adminView/admin/productInventory" />" class="btn btn-default">Cancel</a>
			</form:form>
			
			
		</div>
	
	</div>
	
	


<%@include file="/WEB-INF/views/template/footer.jsp" %>
