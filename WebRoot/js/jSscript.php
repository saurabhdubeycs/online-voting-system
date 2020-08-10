<?php
$page_name = basename($_SERVER['PHP_SELF']);
if($page_name=='index.php')
{
	?>
	<script type="text/javascript">
    $(window).load(function(){
        $('#myModal').modal('show');
    });
	</script>
	
	<script>
      !function ($) {
        $(function(){
          // carousel demo
          $('#premiumCarousel, #tcb-testimonial-carousel').carousel()
        })
      }(window.jQuery)
    </script>
	
	<?php
}
else if($page_name=='gallery.php')
{
	?>
	<script type="text/javascript">
    $(window).load(function(){
        $('#myModal').modal('show');
    });
	
	$(function(){
		$(".text").click(function(){
			var img_url = $(this).attr("data-url");
			$("#viewGalImage").prop('src',img_url);
			$('#galleryModal').modal('show');
		});
	});
	</script>
	
	
	
	<?php
}



?>