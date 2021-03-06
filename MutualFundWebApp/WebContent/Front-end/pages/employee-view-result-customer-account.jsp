<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="employee-template-top.jsp" />
<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header"><font size="5" face="verdana" color="#7E9DBB">&nbsp;View customer portfolio</font></h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>


	<div class="row">
		<c:forEach var="error" items="${errors}">
			<h5 style="color: red">${error}</h5>
		</c:forEach>
	</div>

	<div class="panel-body">
		<form action="viewaccount.do" method="GET">
			<div class="row">
				<div class="col-lg-12"></div>
			</div>
			<!-- /.row -->
			<!-- /.row -->
			<div class="row">
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-3 col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-12 text-center">
										<div>Name</div>
									</div>
								</div>
							</div>
							<div class="panel-footer" align="center">${customer.firstName}
								&nbsp;${customer.lastName}</div>

						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-12 text-center">
										<div>Address</div>
									</div>
								</div>
							</div>
							<div class="panel-footer" align="center">
								${customer.addrLine1} &nbsp; ${customer.addrLine2}</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-12 text-center">
										<div>Cash Balance</div>
									</div>
								</div>
							</div>

			<div class="panel-footer" align="center">$<fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${customer.cash}" /></div>

						</div>

					</div>
					<div class="col-lg-3 col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-12 text-center">
										<div>Date of Last Transaction</div>
									</div>
								</div>
							</div>
							<div class="panel-footer" align="center">${lastTransactionDate}</div>
						</div>
					</div>
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<!-- /.panel -->
						<div class="panel panel-default">
							<div class="panel-heading">
								Funds Information
								<div class="pull-right">
									<div class="btn-group">
										<ul class="dropdown-menu pull-right" role="menu">
											<li><a href="#">Action</a></li>
											<li><a href="#">Another action</a></li>
											<li><a href="#">Something else here</a></li>
											<li class="divider"></li>
											<li><a href="#">Separated link</a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<div class="row">
									<div>
										<div class="table-responsive">
											<table class="table table-bordered table-hover table-striped">
												<thead>
													<tr>
														<th>Fund Name</th>
														<th>Ticker</th>
														<th>Number of Shares</th>
														<th>Total Value</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="p" items="${positions}" varStatus="row">
														<tr>

															<td>${funds.get(row.index).name}</td>
															<td>${p.fundTicker}</td>
															<td><fmt:formatNumber type="number" minFractionDigits="3" maxFractionDigits="3" value="${p.shares}"></fmt:formatNumber></td>
															<td><fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${p.totalValue}"></fmt:formatNumber></td>

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
							</div>

						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-8 -->
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->
		</form>
	</div>
	<!-- /#page-wrapper -->

</div>




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

