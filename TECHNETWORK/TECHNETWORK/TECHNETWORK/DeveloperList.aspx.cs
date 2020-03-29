using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TECHNETWORK.Model;

namespace TECHNETWORK
{
    public partial class DeveloperList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<Developer> ListOfDevelopers()
        {
            
            TechnetworkEntities db = new TechnetworkEntities();
            return db.Developers.Distinct().ToList();
        }
    }
}