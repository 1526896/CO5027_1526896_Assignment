using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace masterpages
{
    public partial class FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        string ProductID = Request.QueryString["ProductID"];
            string filename = ProductID + ".jpg";

            CurrentImage.ImageUrl = "~/image/" + filename;

        }

        protected void Uploadbtn_Click(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ProductID"];

            string filename = ProductID + ".jpg";
            string saveLocation = Server.MapPath("~/UploadImage/" + filename);

            FileUpload1.SaveAs(saveLocation);
        }
    }
}