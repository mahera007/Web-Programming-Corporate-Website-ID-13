<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="TECHNETWORK.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
   
    <section class="contact py-5" id="contact">
	<div class="container py-sm-3">
		<h1 class="heading text-capitalize mb-lg-5 mb-4" style="margin-bottom:1rem !important">SIGN IN</h1>
        <form action="SignIn.aspx/Sbmt_btn_Click" method="post">

            <div class="row main-agile-sectns">
                
                <div class="col-md-6 agileits-btm-spc form-text1">
                    <asp:TextBox ID="EmailId" runat="server" type="email" name="EmailId" placeholder="Enter Your Email-Id" required=""></asp:TextBox>
                    
                </div>
                <div class="col-md-6 agileits-btm-spc form-text1">
                    <asp:TextBox ID="Password" runat="server" type="password" name="Password" placeholder="Enter Password" required=""></asp:TextBox>
                   
                </div>

            </div>
             <asp:Button ID="Sbmt_btn"  class="btn" runat="server" OnClick="Sbmt_btn_Click" Text="Submit" />
          
        </form>
	   
	</div>
</section>
</asp:Content>
