using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TECHNETWORK.Model;

namespace TECHNETWORK
{
    public partial class ServiceAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                TechnetworkEntities db = new TechnetworkEntities();
                Service service = new Service();
                service.Details = TextBox5.Text;
                service.Service_cost = decimal.Parse(TextBox4.Text);
                service.Service_name = TextBox1.Text;
                service.Service_provider_name = TextBox2.Text;
                service.Servicing_last_date = DateTime.Parse(TextBox3.Text);

               db.Services.Add(service);
                db.SaveChanges();

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                Label1.Text = "Service successfully posted";
                Label1.Visible = true;
            }catch(Exception ex)
            {
                Label1.Text = "Something went wrong. Service is not posted. ";
                Label1.Visible = true;
            }
        }
    }
}