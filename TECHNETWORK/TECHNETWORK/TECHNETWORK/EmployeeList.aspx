<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="TECHNETWORK.EmployeeList" %>
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

<!-- agents section -->
<div class="jquery-script-clear"></div>
<div class="demo">
	<div class="container">  
			<div class="w3-welcome heading">
                 <% if(Session["Authorizer"]=="Admin")
                            { %>
                 <a href="AddEmployee.aspx" style="color:black;float:right"> <h4> <i class="fa fa-arrow-right"></i>  Add employee</h4></a>
                  <% }%>
				<h3>Our Employees</h3>
			</div> 
		<div id="verticalTab">
			<ul class="resp-tabs-list">
                <% 
                    var ListEmployeeList = ListOfEmployees();
                    Random rd = new Random();
                    var picid = 0;
                    Dictionary<int, int> keyValuePairs = new Dictionary<int, int>();
                    foreach (var employee in ListEmployeeList)
                    {
                        picid =int.Parse(rd.Next(1, 4).ToString());
                        keyValuePairs.Add(employee.Id,picid);
                        %>
                <li>
                    <div class="col-md-4 tab1">
                      
                        <img src="UI_components/DevUI/images/Devs/<%= picid %>.jpg" alt="" />
                    </div>
                    <div class="col-md-8 tab1">
                        <h3><%= employee.Name %></h3>
                        <h4><%= employee.Designation %></h4>
                    </div>
                    <div class="clearfix"></div>
                </li>
                <% } %>
			</ul>
			<div class="resp-tabs-container">
              <% 

                  foreach (var employee in ListEmployeeList)
                  {
                          picid = keyValuePairs[employee.Id];
                     
                      %>
			<div>
				<div class="col-md-7 tabs-right1">
						<h3><%= employee.Name %></h3>
						<h4>||<%= employee.Designation %>||</h4>
						<ul class="social">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a  href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
						<div class="tab-bottom">
							<p><i class="fa fa-map-marker" aria-hidden="true"></i><%= employee.Address %></p>
							<p><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:mail@example.com"><%= employee.EmailId %></a></p>
							<p><i class="fa fa-phone" aria-hidden="true"></i><%= employee.Phone_number %></p>
						</div>
						
							<p><%= employee.Details %></p>						
				</div>	
				<div class="col-md-5 tabs-right2">
                   
						<img src="UI_components/DevUI/images/Devs/<%= picid %>.jpg" alt="" />
				</div>
					<div class="clearfix"></div>
			</div>
		 <% } %>
			
				</div>
			</div>
		</div>
		<div style="height: 30px; clear: both"></div>
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
