<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ServiceAdd.aspx.cs" Inherits="TECHNETWORK.ServiceAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <section class="blog-wthree py-5" id="blog">
	<div class="container pt-md-3 pb-md-5">
		<h3 class="heading text-capitalize text-white mb-4">Services we offer</h3>
		<div>
			<div class="carousel-inner">
				<div class="row">
					<div class="col-lg-6">
						<div class="news-blog">
							<h4>
                                <asp:TextBox ID="TextBox1" placeholder="  Service name" runat="server"></asp:TextBox></h4>
							<ul class="icon">
								<li><span class="fa fa-user"></span> <asp:TextBox ID="TextBox2" placeholder="  Service provider name" runat="server"></asp:TextBox></li>
								<li><span class="fa fa-calendar"></span> <asp:TextBox ID="TextBox3" TextMode="Date"  placeholder="  Servicing last date" runat="server"></asp:TextBox></li>
								
							</ul>
                            
							<p>
                                <asp:TextBox ID="TextBox5" placeholder="  Service name" runat="server" Columns="55" TextMode="MultiLine"></asp:TextBox></p>
							<asp:Button ID="Btn_submit" runat="server" Text="Post service" Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#003366" OnClick="Btn_submit_Click" />
                            &nbsp;&nbsp;
                            <asp:Label ID="Label1" ForeColor="Green" Visible="False" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                            <h5><asp:TextBox ID="TextBox4" placeholder=" Service cost" runat="server"></asp:TextBox> <span>  (Rs.)</span></h5>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</section>
</asp:Content>
