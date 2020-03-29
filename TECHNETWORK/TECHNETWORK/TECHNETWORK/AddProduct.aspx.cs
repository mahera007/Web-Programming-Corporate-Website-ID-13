using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TECHNETWORK.Model;

namespace TECHNETWORK
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sbmt_btn_Click(object sender, EventArgs e)
        {
            try
            {
                TechnetworkEntities db = new TechnetworkEntities();
                Product product = new Product();
                product.Details = productDet.Text;
                product.Price = decimal.Parse(ProductPrc.Text);
                product.Product_name = productnm.Text;
                product.Storage_require = ProdctStrg.Text;
               
                db.Products.Add(product);
                db.SaveChanges();
                Label1.Text = $"{productnm.Text} successfully posted";
                productDet.Text = "";
                ProductPrc.Text = "";
                productnm.Text = "";
                ProdctStrg.Text = "";
               
               
                Label1.Visible = true;
            }
            catch (Exception ex)
            {
                Label1.Text = $"Something went wrong. Service is not posted. Error: {ex.Message} ";
                Label1.Visible = true;
            }
        }
    }
}