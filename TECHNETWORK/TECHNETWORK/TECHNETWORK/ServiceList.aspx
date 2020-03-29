<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ServiceList.aspx.cs" Inherits="TECHNETWORK.ServiceList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <br /><br />
    <section class="blog-wthree py-5" id="blog">
	<div class="container pt-md-3 pb-md-5">
		<h3 class="heading text-capitalize text-white mb-4">Services we offer</h3>
         <% if(Session["Authorizer"]=="Admin")
                            { %>
                 <a href="ServiceAdd.aspx" style="color:#e8eae2"> <h4> <i class="fa fa-arrow-right"></i>  Add service</h4></a>
                  <% }%>
      
		<div>
			<div class="carousel-inner">
				<div class="row">
                    <% 
                        var ListServicesList = ListOfServices();
                        foreach (var service in ListServicesList)
                        { %>
                           
                   
					<div class="col-lg-6" style="margin-top:10px">
						<div class="news-blog">
							<h4><%= service.Service_name %></h4>
							<ul class="icon">
								<li><span class="fa fa-user"></span> <%= service.Service_provider_name %></li>
								<li><span class="fa fa-calendar"></span> <%= service.Servicing_last_date.Value.ToString("dd/MM/yyyy") %></li>
								
							</ul>
							<p><%= service.Details %></p>
							
							<h5><%= service.Service_cost %> <span>  (Rs.)</span></h5>
						</div>
					</div>
					
                       <% } %>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //blog -->
</asp:Content>
