using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TECHNETWORK.Model;

namespace TECHNETWORK
{
    public partial class AddDeveloper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sbmt_btn_Click(object sender, EventArgs e)
        {
            try
            {
                TechnetworkEntities db = new TechnetworkEntities();
                Developer developer = new Developer();
                developer.Developer_name = Devnm.Text;
                developer.Developer_code = DevCode.Text;
                developer.Email_id = DevEmail.Text;
                developer.Phone_number = DevPhone.Text;
                developer.Designation = DevDesg.Text;
                developer.Details = DevDet.Text;
                developer.Address = DevAdd.Text;
                db.Developers.Add(developer);
                db.SaveChanges();

                Label1.Text = $"{Devnm.Text} successfully added";
                Devnm.Text = "";
                DevEmail.Text = "";
                DevPhone.Text = "";
                DevDet.Text = "";
                DevDesg.Text = "";
                DevAdd.Text="";
                DevCode.Text="";
                Label1.Visible = true;
            }
            catch (Exception ex)
            {
                Label1.Text = $"Something went wrong. Developer is not added. Error: {ex.Message} ";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        }
    }
}