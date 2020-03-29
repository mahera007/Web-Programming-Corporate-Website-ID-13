using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TECHNETWORK.Model;

namespace TECHNETWORK
{
    public partial class EmployeeProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    TechnetworkEntities db = new TechnetworkEntities();
                    var empId = int.Parse(Session["EmployeeId"].ToString());
                    if (!string.IsNullOrEmpty(empId.ToString()))
                    {
                        var employee = db.Employees.Where(x => x.Id == empId).FirstOrDefault();
                        Empnm.Text = employee.Name;
                        EmpEmail.Text = employee.EmailId;
                        EmpPass.Text = employee.Password;
                        EmpPhone.Text = employee.Phone_number;
                        EmpAddress.Text = employee.Address;
                    }
                }
                catch (Exception ex)
                {
                    Label1.Text = $"Session expired. Please signIn and retry.";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                }
            }
        }

        protected void Sbmt_btn_Click(object sender, EventArgs e)
        {
            try
            {
                TechnetworkEntities db = new TechnetworkEntities();
                var empId = int.Parse(Session["EmployeeId"].ToString());
                if (!string.IsNullOrEmpty(empId.ToString()))
                {
                    Model.Employee employee = db.Employees.Where(x => x.Id == empId).FirstOrDefault();
                    employee.Name = Empnm.Text;
                    if (!string.IsNullOrEmpty(EmpPass.Text))
                        employee.Password = EmpPass.Text;
                    
                    employee.EmailId = EmpEmail.Text;
                    employee.Phone_number = EmpPhone.Text;
                    employee.Address = EmpAddress.Text;
                    employee.Designation = EmpDesg.Text;
                    employee.Details = EmpDet.Text;

                    db.SaveChanges();

                    Label1.Text = $"Congrats {Empnm.Text}, your profile is successfully updated";
                    
                    Label1.Visible = true;
                }
                else
                {
                    Label1.Text = $"Session expired. Please signIn and retry.";
                    Label1.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Label1.Text = $"Something went wrong. Service is not posted. Error: {ex.Message} ";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        
        }
    }
}