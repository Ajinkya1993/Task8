<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="customer-template-top.jsp" />

<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Research Fund</h1>
		</div>
	</div>
	<div class="row">
	  <c:forEach var="error" items="${errors}">
			<h5 style="color: red">${error}</h5>
		</c:forEach>
	</div>
	
	
	<div class="panel panel-default">
		<div class="panel-heading"></div>
		<!-- /.panel-heading -->
		<div class="panel-body">
			<form action="researchfund.do" method="POST">
			
			
			<div class="row">
				<div class="col-lg-4">
					<label>Select Fund</label> <select class="form-control" name="fundId">

						<c:forEach var="fund" items="${fundlist}">
							<option value="${fund.fundId}">${fund.symbol}</option>
						</c:forEach>

					</select>
					
					<p class="help-block"></p>
					
				</div>
				<div class="col-lg-4">
				<input type="submit" name="researchfund" value="Select fund"class="btn btn-outline btn-primary" />
				
				</div>
			</div>
			<br>
			
			
			
			<div class="row">
					<div>
						<div class="table-responsive">
							<table class="table table-bordered table-hover table-striped">
								<thead>
									<tr>
										<th>Fund Id</th>
										<th>Date of Price</th>
										<th>Price</th>
									</tr>
								</thead>
								<tbody>					
								<c:forEach var ="p" items="${fundpricehistory}">			
									<tr>
										<td>${p.fundId}</td>
										<td>${p.priceDate}</td>
										<td>${p.price}</td>
										<!--adding total values to the bean -->
									</tr>
									
							    </c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>
					<!-- /.col-lg-4 (nested) -->
					<div class="col-lg-8">
						<div id="morris-bar-chart"></div>
					</div>
					<!-- /.col-lg-8 (nested) -->
				</div>
				<!-- /.row -->
			</form>
		</div>
		<!-- /.panel-body -->
	</div>
	
</div> 
<!--/#wrapper  -->
<!-- jQuery -->
<script src="../vendor/jquery/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="../vendor/metisMenu/metisMenu.min.js"></script>
<!-- Morris Charts JavaScript -->
<script src="../vendor/raphael/raphael.min.js"></script>
<script src="../vendor/morrisjs/morris.min.js"></script>
<script src="../data/morris-data.js"></script>
<!-- Custom Theme JavaScript -->
<script src="../dist/js/sb-admin-2.js"></script>



<jsp:include page="template-bottom.jsp" />