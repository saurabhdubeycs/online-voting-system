<?php
$page_name = basename($_SERVER['PHP_SELF']);
if($page_name=='index.php')
{
	?>
	<style>
	.modal.fade .modal-dialog {
		-webkit-transform: scale(0.1);
		-moz-transform: scale(0.1);
		-ms-transform: scale(0.1);
		transform: scale(0.1);
		top: 300px;
		opacity: 0;
		-webkit-transition: all 0.3s;
		-moz-transition: all 0.3s;
		transition: all 0.3s;
	}

	.modal.fade.in .modal-dialog {
		-webkit-transform: scale(1);
		-moz-transform: scale(1);
		-ms-transform: scale(1);
		transform: scale(1);
		-webkit-transform: translate3d(0, -300px, 0);
		transform: translate3d(0, -300px, 0);
		opacity: 1;
	}
	.modal.and.carousel {
  position: absolute; // Needed because the carousel overrides the position property
}
	</style>
	
	
	<style>
.slide
{
	float:none;
}
#tcb-testimonial-carousel {
  margin-top: 30px;
}
#tcb-testimonial-carousel a {
  color: #b20000;
}
#tcb-testimonial-carousel .text-brand {
  color: #b20000;
}
#tcb-testimonial-carousel .carousel-indicators .active {
  background: #b20000;
}
#tcb-testimonial-carousel .no-margin {
  margin: 0;
}
#tcb-testimonial-carousel .carousel-indicators li {
  border: 1px solid #ccc;
}
#tcb-testimonial-carousel .carousel-control {
  color: #ffffff;
  *width: 5%;
}
#tcb-testimonial-carousel .carousel-control:hover,
#tcb-testimonial-carousel .carousel-control:focus {
  color: #b20000;
}
#tcb-testimonial-carousel .carousel-control.left,
#tcb-testimonial-carousel .carousel-control.right {
  background-image: none;
}
#tcb-testimonial-carousel .item {
  padding: 15px 40px;
  /*background: #f8f8f8;*/
}
#tcb-testimonial-carousel .media-object {
  margin: auto;
}
@media screen and (max-width: 768px) {
  #tcb-testimonial-carousel .media-object {
    margin-bottom: 15px;
  }
}
.glyphicon
{
	color:#fff;
}
.caption p, .no-margin p
{
	color:#a2a2a2;
	font-family: "Fjalla One";
    font-weight: normal;
}
blockquote p
{
	margin-left:15px;
}

</style>
	<?php
}
else if($page_name =='register.php'){

?>
<style>
.onoffswitch {
    position: relative; width: 320px;
    -webkit-user-select:none; -moz-user-select:none; -ms-user-select: none;
}
.onoffswitch-checkbox {
    display: none;
}
.onoffswitch-label {
    display: block; overflow: hidden; cursor: pointer;
    border: 1px solid #c5c5c5; border-radius: 44px;
}
.onoffswitch-inner {
    display: block; width: 200%; margin-left: -100%;
    transition: margin 0.3s ease-in 0s;
}
.onoffswitch-inner:before, .onoffswitch-inner:after {
    display: block; float: left; width: 50%; height: 46px; padding: 0; line-height: 46px;
    font-size: 24px; color: white; font-family: Trebuchet, Arial, sans-serif; font-weight: bold;
    box-sizing: border-box;
}
.onoffswitch-inner:before {
    content: "Customer";
    padding-right: 24px;
    background-color: #EEEEEE; color: #2B2B2B;
}
.onoffswitch-inner:after {
    content: "Seller";
    padding-right: 100px;
    background-color: #EEEEEE; color: #000;
    text-align: right;
}
.onoffswitch-switch {
    display: block; width: 39px; margin: 3.5px;
    background: #ffee22;
    position: absolute; top: 0; bottom: 0;
    right: 270px;
    border:1px solid #f5e200; border-radius: 44px;
    transition: all 0.3s ease-in 0s; 
}
.onoffswitch-checkbox:checked + .onoffswitch-label .onoffswitch-inner {
    margin-left: 0;
}
.onoffswitch-checkbox:checked + .onoffswitch-label .onoffswitch-switch {
    right: 0px; 
    background-color: #da4f49; 
	    border: 1px solid #ce0900;
}
</style>
<?php 
}
?>