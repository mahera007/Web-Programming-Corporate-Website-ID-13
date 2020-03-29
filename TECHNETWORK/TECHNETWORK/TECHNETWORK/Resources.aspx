<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resources.aspx.cs" Inherits="TECHNETWORK.Resources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <br /><br />
    
<!-- default-css-files -->
    
	<link href="UI_components/DevUI/css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="UI_components/DevUI/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<!-- default-css-files -->

<link href="UI_components/DevUI/css/popup-box.css" rel="stylesheet" type="text/css" media="all" /><!-- popup css -->  

<!-- for banner css -->
<link href="UI_components/DevUI/css/carousel.css" type="text/css" rel="stylesheet" media="all"><!-- carousel css -->  
<!-- //for banner css -->

<!-- fot Agents css -->
<link href="UI_components/DevUI/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<!-- //fot Agents css -->

<!-- Testimonials-slider-css-files -->
	<link rel="stylesheet" href="UI_components/DevUI/css/owl.carousel.css" type="text/css" media="all">
	<link href="UI_components/DevUI/css/owl.theme.css" rel="stylesheet">
<!-- //Testimonials-slider-css-files -->

<!-- style.css-file -->
	<link href="UI_components/DevUI/css/style.css" rel='stylesheet' type='text/css' />
<!-- //style.css-file -->

<!-- Google fonts -->
<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- //Google fonts -->

<!-- Default-JavaScript-File -->
	<script type="text/javascript" src="UI_components/DevUI/js/jquery-2.1.4.min.js"></script>
<!-- //Default-JavaScript-File -->

<div class="about-top">
		<div class="container">
			<div class="about-heading">
				<h2>Resources</h2>
			</div>
			<div class="about-w3ls-row">
				<div class="col-md-4 about-left">
					<div class="about-w3layouts-pic" style="background: url(../UI_components/DevUI/images/slider2.jpg) no-repeat 0px 0px; ">
                        
					</div> 
				</div>
				<div class="col-md-8 about-right">
					<h5>To be successful in techno world, you must always put best interests.</h5>  
					<p>Scrum is a lightweight agile project management framework with broad applicability for managing and controlling iterative and incremental projects of all types. Scrum has garnered increasing popularity in the agile software development community due to its simplicity, proven productivity, and ability to act as a wrapper for various engineering practices promoted by other agile methodologies. With Scrum methodology, the “Product Owner” works closely with the team to identify and prioritize system functionality in form of a “Product Backlog”. The Product Backlog consists of features, bug fixes, non-functional requirements, etc. – whatever needs to be done in order to successfully deliver a working software system. With priorities driven by the Product Owner, cross-functional teams estimate and sign-up to deliver “potentially shippable increments” of software during successive Sprints, typically lasting 30 days. Scrum methodology has been proven to scale to multiple teams across very large organizations with 800+ people. See how VersionOne supports Scrum Sprint Planning by making it easier to manage your Product Backlog.  </p>
					<!-- history -->
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true"> 
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingOne">
								<h4 class="panel-title asd">
									<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
										<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> ACADEMIC PARTNERSHIP
									</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body panel_text">
									Technetwork Pvt. Ltd., pioneer in providing Industrial Training to Students. Our focus is to aid innovative ideas, develop products for self-employment, support skill development in turn which supports outside market to fulfillment of real-time demands. In course of this journey we are looking for academic partners who can support, mentor and facilitate us with collaborative ideas.
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingTwo">
								<h4 class="panel-title asd">
									<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
										<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> INDUSTRIAL PARTNERSHIP
									</a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								<div class="panel-body panel_text">
									A business association in which one or more of the associates offers their expertise to the company as an investment instead of money. An example of an industrial partner could consist of a business with a non-commercial organization, such as a university and a food company.
								</div>
							</div>
						</div>
					
					</div>
					<!-- //history --> 
				</div>
				<div class="clearfix"> </div> 
			</div>
		</div>
	</div>
<script src="UI_components/DevUI/js/easy-responsive-tabs.js"></script>
<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>





<!-- OnScroll-Number-Increase-JavaScript -->
	<script type="text/javascript" src="UI_components/DevUI/js/numscroller-1.0.js"></script>
<!-- //OnScroll-Number-Increase-JavaScript -->

		
<!-- for testimonials slider-js-script-->

	<!-- for testimonials slider-js-file-->
			<script src="UI_components/DevUI/js/owl.carousel.js"></script>
	<!-- //for testimonials slider-js-file-->
		<script>
		$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
 
			autoPlay: 3000, //Set AutoPlay to 3 seconds
			autoPlay:true,
			items : 3,
			itemsDesktop : [640,5],
			itemsDesktopSmall : [414,4]
		});
		}); 
</script>
<!-- for testimonials slider-js-script-->


<script src="UI_components/DevUI/js/jarallax.js"></script>
	<script src="UI_components/DevUI/js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>

	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>

	<script type="text/javascript" src="UI_components/DevUI/js/move-top.js"></script>
	<script type="text/javascript" src="UI_components/DevUI/js/easing.js"></script>
	
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->

<!-- pop-up-box -->
		<script src="UI_components/DevUI/js/jquery.magnific-popup.js" type="text/javascript"></script>
		<script>
			$(document).ready(function() {
				$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
				});														
			});
		</script>
	<!--//pop-up-box -->
	
<!-- requried-jsfiles-for owl --><!-- for banner slider -->
		 <script src="UI_components/DevUI/js/owl.carousel.js"></script>
			<script>
			 $(document).ready(function() {
					$("#owl-demo").owlCarousel({
						 items : 4,
						 lazyLoad : true,
						 autoPlay : true,
							navigation : true,
							navigationText :  true,
							pagination : false,
							});
				});
			</script>
<!-- //requried-jsfiles-for owl -->	<!-- //for banner slider -->
	
	<script src="UI_components/DevUI/js/bootstrap.js"></script><!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->


</asp:Content>

