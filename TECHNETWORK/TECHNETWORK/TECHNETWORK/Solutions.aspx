<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Solutions.aspx.cs" Inherits="TECHNETWORK.Solutions" %>
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

<div class="testimonials" id="testimonials" style="background: no-repeat center;">
		<div class="container">
			<div class="w3-welcome heading">
				<h3>Solutions</h3>
			</div>
			<div class="agileits-feedback-grids">
				<div id="owl-demo" class="owl-carousel owl-theme">
                    Business Applications Development
Businesses across the world are embarking on a “Digital Transformation” journey to leverage the powe…

 
Business Intelligence
Business Intelligence is a phrase which involves a package of applications/software used to analyse …

 
Business Process Automation
Bitscape being an IT consulting company help organisations develop robust web based application, sof…

 
Servicenow Development, Implementat…
ServiceNow applications offers a single platform to orchestrate processes across the enterprise to h…

 
Nintex Development And Consulting S…
Bitscape is a Nintex premium partner with an expertise in all types of solution consulting with Nint…

 
Power BI Consulting
Bitscape is 2013 Microsoft Worldwide Business Intelligence Partner Award Finalist and more recently …

 
Regtech Makes Regulatory Compliance…
Traditional IT boundaries are disappearing, and organizations now need to protect data on employee-o…

 
Sales And Revenue Reporting Dashboa…
Bridging the gap between unstructured sales data and revenue reporting with Bitscape’s Sales and Rev…

 
Bitscape Cloud Assessment Services
In the digital world, Bitscape is completely aware of how a cloud-based solution is important to bus…

 
Microsoft Kaizala – A Simple And Se…
These days’ workforces are no longer curbed to a single frontier. With incoherent workforce engaging…

 
Microsoft Azure BOT Services
Bitscape has always been a major player when it comes to providing the best of services being one of…

 
Bitscape RPA And Process Automation…
With Microsoft WorkFlow you can create or modify Power automated systems and ease their work process…

 
Microsoft Teamwork Solutions
When it comes to integrating end-user convenience with compatible workspace essentials, Microsoft na…

 
Pnp JS – Sharepoint Developing Sal…
With latest additions to SharePoint Patterns &amp; Practices; commonly known as SharePoint PnP; comi…

 
Pnp Powershell
Bitscape is a multiple Gold competency partner at organization level who makes sure that none of the…

 
Sharepoint Framework Solutions
Providing complete services in SharePoint Framework, Bitscape today doesn't shy away from calling it…

 
Microsoft 365 Business Application …
“Microsoft 365” combines best-in-class productivity apps with intelligent cloud services to transfor…

 
Robotic Process Automation With Mic…
With the latest updates coming from Microsoft, the recent UI in Power Automate which has added Robot…
                    <br />
					<div class="item">
						
					</div>
				
				</div>
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

