using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TECHNETWORK.Model;

namespace TECHNETWORK
{
    public partial class ProductList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<Product> ListOfProducts()
        {
            TechnetworkEntities db = new TechnetworkEntities();
            return db.Products.Distinct().ToList();
        }
        public List<Product> prolist()
        {
            TechnetworkEntities db = new TechnetworkEntities();
            return db.Products.Distinct().ToList();
        }

    }
}