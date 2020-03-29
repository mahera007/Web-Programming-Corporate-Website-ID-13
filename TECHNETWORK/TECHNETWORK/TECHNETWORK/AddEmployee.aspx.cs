using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TECHNETWORK.Model;

namespace TECHNETWORK
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sbmt_btn_Click(object sender, EventArgs e)
        {
            try
            {
                TechnetworkEntities db = new TechnetworkEntities();
                Model.Employee employee = new Model.Employee();
                employee.Name = Empnm.Text;
                if (!string.IsNullOrEmpty(EmpPass.Text))
                    employee.Password = EmpPass.Text;
                else
                {
                    Random rd = new Random();
                    employee.Password = $"Pass@{rd.Next(1111, 9999).ToString()}";
                }
                employee.EmailId = EmpEmail.Text;
                employee.Phone_number = EmpPhone.Text;
                employee.Designation = EmpDesg.Text;
                employee.Details = EmpDet.Text;
                db.Employees.Add(employee);
                db.SaveChanges();

                Label1.Text = $"{Empnm.Text} successfully added";
                Empnm.Text = "";
                EmpEmail.Text = "";
                EmpPhone.Text = "";
                EmpPass.Text = "";
                EmpDet.Text = "";
                EmpDesg.Text="";
                Label1.Visible = true;
            }
            catch (Exception ex)
            {
                Label1.Text = $"Something went wrong. Employee is not added. Error: {ex.Message} ";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        }
    }
}