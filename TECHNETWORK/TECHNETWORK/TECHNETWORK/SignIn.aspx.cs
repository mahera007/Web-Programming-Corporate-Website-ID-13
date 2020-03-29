using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TECHNETWORK.Model;

namespace TECHNETWORK
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sbmt_btn_Click(object sender, EventArgs e)
        {
            TechnetworkEntities db = new TechnetworkEntities();
           if(db.Admins.Where(x=>x.EmailId==EmailId.Text && x.Password==Password.Text).Any())
            {
                Session["Authorizer"] = "Admin";
                Session["AdminName"] = db.Admins.Where(x => x.EmailId == EmailId.Text && x.Password == Password.Text)
                    .Select(z => z.Name).FirstOrDefault();
                Response.Redirect("Admin.aspx");
            }
            else if (db.Employees.Where(x => x.EmailId == EmailId.Text && x.Password == Password.Text).Any())
            {
                Session["Authorizer"] = "Employee";
                Session["EmployeeName"] = db.Employees.Where(x => x.EmailId == EmailId.Text && x.Password == Password.Text)
                   .Select(z => z.Name).FirstOrDefault();
                Session["EmployeeId"] = db.Employees.Where(x => x.EmailId == EmailId.Text && x.Password == Password.Text)
                 .Select(z => z.Id).FirstOrDefault();
                Response.Redirect("Employee.aspx");
            }
            else
            {
                Session["Authorizer"] = "";
            }
          
        }
    }
}