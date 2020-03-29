<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddDeveloper.aspx.cs" Inherits="TECHNETWORK.AddDeveloper" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <section class="contact py-5" id="contact">
	<div class="container py-sm-3">
		<h1 class="heading text-capitalize mb-lg-5 mb-4" style="margin-bottom:1rem !important">Add developer</h1>
        <form  method="post">

            <div class="row main-agile-sectns">
                
                <div class="col-md-6 agileits-btm-spc form-text1">
                    <asp:TextBox ID="Devnm" runat="server" type="text" placeholder="Developer name" required=""></asp:TextBox>
                    
                </div>
                <div class="col-md-6 agileits-btm-spc form-text1">
                    <asp:TextBox ID="DevCode" runat="server"  placeholder="Developer code"></asp:TextBox>
                   
                </div>
                <div class="col-md-6 agileits-btm-spc form-text1">
                    <asp:TextBox ID="DevEmail" runat="server" TextMode="Email"  placeholder="Email id" required=""></asp:TextBox>
                   
                </div>
                <div class="col-md-6 agileits-btm-spc form-text1">
                    <asp:TextBox ID="DevPhone" runat="server"  placeholder="Phone number" ></asp:TextBox>
                   
                </div>
                 <div class="col-md-12 agileits-btm-spc form-text1">
                    <asp:TextBox ID="DevDesg" runat="server"  placeholder="Designation" ></asp:TextBox>
                   
                </div>
                 <div class="col-md-6 agileits-btm-spc form-text1">
                    <asp:TextBox ID="DevAdd" runat="server" TextMode="MultiLine" placeholder="Address" ></asp:TextBox>
                   
                </div>
                  <div class="col-md-6 agileits-btm-spc form-text1">
                    <asp:TextBox ID="DevDet" runat="server" TextMode="MultiLine" placeholder="Details" ></asp:TextBox>
                   
                </div>
                
            </div>
             <asp:Button ID="Sbmt_btn"  class="btn" runat="server" Text="Submit" OnClick="Sbmt_btn_Click"  />
           <asp:Label ID="Label1" ForeColor="Green" Visible="false" runat="server" Text="Label" Font-Bold="True"></asp:Label>
        </form>
	   
	</div>
</section>
</asp:Content>
