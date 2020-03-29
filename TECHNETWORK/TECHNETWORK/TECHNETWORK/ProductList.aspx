<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="TECHNETWORK.ProductList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<br /><br />


    <section class="pricing py-5" id="pricing">
	<div class="container py-md-3">
		<h3 class="heading text-capitalize mb-lg-5 mb-4">Our products</h3>
                 <% if(Session["Authorizer"]=="Admin")
                            { %>
               <a href="AddProduct.aspx" style="color:#808080"> <h4> <i class="fa fa-arrow-right"></i>  Add product</h4></a>
                  <% }%>
       
		<div class="row pricing-grids">
              <% 
                        var ProductList = ListOfProducts();
                        foreach (var product in ProductList)
                        { %>
                           
			<div class="col-lg-3 col-sm-6" style="margin-top:10px">
				<div class="pricing-grid1 pricing-grid1-active mb-md-0 mb-sm-5 mb-4">
					<h3><%= product.Product_name %></h3>
					<h4 style="width: 150px"><%= Math.Round(double.Parse(product.Price.ToString())) %><span>Rs.</span></h4>
				
					<p><span class="fa mr-1 fa-check"></span><%= product.Storage_require %> storage</p>
					<p><span class="fa mr-1 fa-check"></span> Email Support</p>
					<p class="mb-3"><%= product.Details %></p>
				
				</div>
			</div>
			  <% } %>
		</div>
	</div>
</section>
</asp:Content>
