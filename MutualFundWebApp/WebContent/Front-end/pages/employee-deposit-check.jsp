<jsp:include page="employee-template-top.jsp" />

<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Deposit Check</h1>
                </div>
            </div>
            <!-- /.row -->

              <div class="row">
                <div class="col-lg-4">
                    <label>Customer</label>
                    <select class="form-control" name="userName">
                        <option>Customer 1</option>
                        <option>Customer 2</option>
                        <option>Customer 3</option>
                    </select>
                  <p class="help-block"></p>
                </div>
              </div>
              
              <div class="row">
              <div class="col-lg-4">
                  <label>Enter Cash Amount to Deposit</label>
                  <input type="password" name="amtDeposit" class="form-control">
                  <p class="help-block"></p>
              </div>
            </div>


              <a href="view-portfolio.html"> 
              <input type="submit" value="Deposit" name="action" class="btn btn-outline btn-primary"/> </a>

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
    