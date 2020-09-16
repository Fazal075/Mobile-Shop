<?php include 'includes/session.php'; ?>
<?php //include 'includes/header.php'; ?>
<body  class="hold-transition skin-blue layout-top-nav images/faz.jpg" >
<div class="wrapper"><body  class="hold-transition skin-blue layout-top-nav images/faz.jpg" >
<div class="wrapper">
<?php //include 'includes/navbar.php'; ?>

<div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
						?>
<br>
<?php include 'new.html'; ?>


<br><br><br><br><br><br><br><Br><br><br><br><br><br><br><br>
<div class="col-sm-3">
	        		<?php //include 'includes/sidebar.php'; ?>
	        	</div>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  
  	<div>
 
<footer>
    <h5 class="hea" align="center" ><font color="black">  <b>Copyright &copy; FAMI Mobile Shop 2020 <br>
	 GMAIL: <a href="http://www.gmail.com">mohamedfazal724@gmail.com</a><br>
	 ADDRESS: 24/3 MAIN STREET MAWANELLA.<br>
	 TEL : <a href="tel:+94770692783"> 0754453069.</a></b>
		


</font>
    </h5>
    </div>
</footer>
</div>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>