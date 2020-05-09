<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
	{
	header('location:index.php');
}
else{
	if(isset($_GET['del'])){
		$id=$_GET['del'];
		$delsql="DELETE FROM tbl_product WHERE id='$id'";
		$delquery=mysqli_query($con,$delsql);
		if ($delquery) {
			$_SESSION['delmsg']="Product deleted !!";
		}
	}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Admin| Manage Products</title>
		<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
		<link type="text/css" href="css/theme.css" rel="stylesheet">
		<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
		<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
	</head>
	<body>
		<?php include('include/header.php');?>
		<div class="wrapper">
			<div class="container">
				<div class="row">
					<?php include('include/sidebar.php');?>
					<div class="span9">
						<div class="content">
							<div class="module">
								<div class="module-head">
									<h3>Manage Products</h3>
								</div>
								<div class="module-body table">
									<?php if(isset($_GET['del']))
									{?>
									<div class="alert alert-error">
										<button type="button" class="close" data-dismiss="alert">×</button>
										<strong>Oh snap!</strong> 	<?php echo htmlentities($_SESSION['delmsg']);?><?php echo htmlentities($_SESSION['delmsg']="");?>
									</div>
									<?php } ?>
									<br />
									
									<table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display" width="100%">
										<thead>
											<tr>
												<th>#</th>
												<th>Product Name</th>
												<th>Category </th>
												<th>Subcategory</th>
												<th>Company Name</th>
												<th>Product Creation Date</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<?php
											$sql="SELECT tbl_product.id as id,tbl_product.productname as pname,tbl_product.productcompany as procom,tbl_product.postingdate as procreate,tbl_catagory.categoryname as ctname,tbl_subcat.subcat as subcatname FROM tbl_product JOIN tbl_catagory on tbl_product.catid=tbl_catagory.id JOIN tbl_subcat  ON tbl_product.subcatid=tbl_subcat.id";
											$query=mysqli_query($con,$sql);
											$cont=1;
											while($row=mysqli_fetch_array($query))
											{
											?>
											<tr>
												<td><?php echo htmlentities($cont);?></td>
												<td><?php echo htmlentities($row['pname']);?></td>
												<td><?php echo htmlentities($row['ctname']);?></td>
												<td> <?php echo htmlentities($row['subcatname']);?></td>
												<td><?php echo htmlentities($row['procom']);?></td>
												<td><?php echo htmlentities($row['procreate']);?></td>
												<td>
													<a href="edit-products.php?id=<?php echo $row['id']?>" ><i class="icon-edit"></i></a>
													<a href="manage-products.php?del=<?php echo $row['id']?>" onClick="return confirm('Are you sure you want to delete?')"><i class="icon-remove-sign"></i></a></td>
												</tr>
												<?php $cont++; } ?>
												
											</table>
										</div>
									</div>
									
									
									</div><!--/.content-->
									</div><!--/.span9-->
								</div>
								</div><!--/.container-->
								</div><!--/.wrapper-->
								<?php include('include/footer.php');?>
								<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
								<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
								<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
								<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
								<script src="scripts/datatables/jquery.dataTables.js"></script>
								<script>
									$(document).ready(function() {
										$('.datatable-1').dataTable();
										$('.dataTables_paginate').addClass("btn-group datatable-pagination");
										$('.dataTables_paginate > a').wrapInner('<span />');
											$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
											$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
										} );
									</script>
								</body>
								<?php } ?>