
<!-- <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> -->

<?php
$sql = "select isnull(Photopath,'') as photopath,Mobile from mas_customer where customer_id='" . $ID . "'";
$res = $this->db->query($sql);
foreach ($res->result_array() as $row) {
    $photopath = $row['photopath'];
    $mobile = $row['Mobile'];
    $directory = $photopath . "/" . $mobile . "_";
    $filecount = count(glob($directory . "*.{jpg,png,gif,jpeg}", GLOB_BRACE));
}

?>
<div class="container-fluid" style="padding-top:10px;background-color:lightgrey;">
		
<!-- Carousel container -->
<div id="my-pics" class="carousel slide" data-ride="carousel" style="width:300px;margin:auto;">

<!-- Indicators -->
<!-- <ol class="carousel-indicators">

 <?php
        for ($i = 0; $i < $filecount; $i++) {
            ?>
            <li data-target="#my-pics" data-slide-to="<?php echo $i; ?>"
                class="<?php if ($i == 0) {
                    echo 'active';
                }else{
                    echo " ";
                } ?>"></li>
        <?php }
        ?> 
</ol> -->

<!-- Content -->
<div class="carousel-inner" role="listbox">


       <?php
        $j=0;
        foreach (glob($directory . "*.{jpg,png,gif,jpeg}", GLOB_BRACE) as $file) {
            ?>
            <div class="<?php if($j==0){echo "item active";} else{echo "item";}?>">
                <img class="d-block w-50" style="margin:auto;" src="../../<?php echo $file;?>" alt="slide">
            </div>

        <?php 
        $j++;}

        ?>

</div>

<!-- Previous/Next controls -->
<a class="left carousel-control" href="#my-pics" role="button" data-slide="prev">
<span class="icon-prev" aria-hidden="true"></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#my-pics" role="button" data-slide="next">
<span class="icon-next" aria-hidden="true"></span>
<span class="sr-only">Next</span>
</a>

</div>

</div>
		
<!-- jQuery library -->
<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 Bootstrap JS -->
<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->

<!-- Initialize Bootstrap functionality -->
<script>
// Initialize tooltip component
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

// Initialize popover component
$(function () {
  $('[data-toggle="popover"]').popover()

})
</script>




