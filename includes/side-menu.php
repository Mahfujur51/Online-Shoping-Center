<div class="side-menu animate-dropdown outer-bottom-xs">
    <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Categories</div>        
    <nav class="yamm megamenu-horizontal" role="navigation">

        <ul class="nav">
            <li class="dropdown menu-item">
              <?php


              $sql="SELECT * FROM tbl_catagory";
              $query=mysqli_query($con,$sql);
               $num=mysqli_num_rows($query);
               if ($num>0) {
                while ($result=mysqli_fetch_array($query)) {
                  
                       
                ?>
                <a href="category.php?cid=<?php echo $result['id'];?>" class="dropdown-toggle"><i class="icon fa fa-desktop fa-fw"></i>
                    <?php echo $result['categoryname'];?></a>
                <?php } } else{ ?>
                    <?php echo "NO category Created"; ?>

               <?php   }?>

            </li>
        </ul>
    </nav>
</div>