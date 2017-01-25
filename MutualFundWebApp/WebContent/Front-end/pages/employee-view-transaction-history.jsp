<jsp:include page="employee-template-top.jsp" />
<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">View Customer Transaction</h1>
		</div>
	</div>

	<!-- /.row -->
	<!-- /.row -->
	<div class="panel-body">
		<form action="resetpassword.do" method="GET">
			<div class="row">

				<!-- /.panel -->
				<div class="panel panel-default">

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

					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="row">


							<div class="col-lg-4">
								<label>Search customer to view transaction history </label> <input
									type="text" class="form-control" name="userName"> <br>


							</div>

						</div>

						<div class="row">
							<div class="col-lg-4">
								<input type="submit" name="action" value="Search"
									class="btn btn-outline btn-primary" />
								<!--  <label> Customer Name: ${customer.userName}</label>-->
								<p class="help-block"></p>
							</div>
						</div>


						<br>
						<div class="table-responsive">
							<table class="table table-bordered table-hover table-striped">
								<thead>
									<tr>
										<th>Transaction Date</th>
										<th>Operation</th>
										<th>Status</th>
										<th>Fund Name</th>
										<th>Number of Shares</th>
										<th>Share Price</th>
										<th>Total Amount</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td align="center">01/02/2017</td>
										<td>Buy</td>
										<td>Completed</td>
										<td>Fund 1</td>
										<td>10</td>
										<td>$32.13</td>
										<td>$321.30</td>
									</tr>
									<tr>
										<td align="center">01/02/2017</td>
										<td>Sell</td>
										<td>Completed</td>
										<td>Fund 2</td>
										<td>50</td>
										<td>$2.5</td>
										<td>$125</td>
									</tr>
									<tr>
										<td align="center">01/03/2017</td>
										<td>Request Check</td>
										<td>Completed</td>
										<td>-</td>
										<td>-</td>
										<td>-</td>
										<td>$724.17</td>
									</tr>
									<tr>
										<td align="center">01/10/2017</td>
										<td>Sell</td>
										<td>Pending</td>
										<td>Fund 3</td>
										<td>100</td>
										<td>$2.15</td>
										<td>$215</td>
									</tr>
									<tr>
										<td align="center">01/11/2017</td>
										<td>Request Check</td>
										<td>Pending</td>
										<td>-</td>
										<td>-</td>
										<td>-</td>
										<td>$200</td>
									</tr>
							</table>
						</div>

						<!-- /.table-responsive -->

						<!-- /.col-lg-4 (nested) -->
						<!-- /.col-lg-8 (nested) -->

					</div>

				</div>
				<!-- /.panel-body -->
			</div>
		</form>
		<!-- /.panel -->
		<!-- /.panel -->

		<!-- /.col-lg-8 -->
		<!-- /.col-lg-4 -->
	</div>
	<!-- /.row -->
</div>
<!-- /#page-wrapper -->


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

