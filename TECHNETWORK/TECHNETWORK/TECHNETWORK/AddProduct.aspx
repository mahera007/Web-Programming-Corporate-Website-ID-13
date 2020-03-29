<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="TECHNETWORK.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
<section class="contact py-5" id="contact">
	<div class="container py-sm-3">
		<h1 class="heading text-capitalize mb-lg-5 mb-4" style="margin-bottom:1rem !important">Our products</h1>
        <form action="SignIn.aspx/Sbmt_btn_Click" method="post">

            <div class="row main-agile-sectns">
                
                <div class="col-md-6 agileits-btm-spc form-text1">
                    <asp:TextBox ID="productnm" runat="server" type="text" placeholder="Product name" required=""></asp:TextBox>
                    
                </div>
                <div class="col-md-6 agileits-btm-spc form-text1">
                    <asp:TextBox ID="ProductPrc" runat="server"  placeholder="Product price" required=""></asp:TextBox>
                   
                </div>
                  <div class="col-md-6 agileits-btm-spc form-text1">
                    <asp:TextBox ID="ProdctStrg" runat="server" placeholder="Product storage" required=""></asp:TextBox>
                    
                </div>
                <div class="col-md-6 agileits-btm-spc form-text1">
                    <asp:TextBox ID="productDet" runat="server" TextMode="MultiLine"  placeholder="Product deatails" required=""></asp:TextBox>
                   
                </div>

            </div>
             <asp:Button ID="Sbmt_btn"  class="btn" runat="server" Text="Add product" OnClick="Sbmt_btn_Click" />
           <asp:Label ID="Label1" ForeColor="Green" Visible="false" runat="server" Text="Label" Font-Bold="True"></asp:Label>
        </form>
	   
	</div>
</section>

   
</asp:Content>
