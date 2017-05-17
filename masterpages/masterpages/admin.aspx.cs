using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace masterpages
{
    public partial class admin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Insertbtn_Click(object sender, EventArgs e)
        {
            PDS.InsertParameters["ProductName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtProductName")).Text;
            PDS.InsertParameters["ProductPrice"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtProductPrice")).Text;
            PDS.InsertParameters["ProductStock"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtProductStock")).Text;
            PDS.Insert();
        }


    }
}