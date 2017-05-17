using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace masterpages
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("underarmourmerchandise@gmail.com", "4azzignmentzz");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("underarmourmerchandise@gmail.com", "underarmourmerchandise@gmail.com");
            msg.Subject = "Name: " + txtName.Text + "Subject: " + txtSubject.Text;
            msg.Body = txtMessage.Text;
            
            try
            {
                smtpClient.Send(msg);
                LitMessage.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception exp)
            {
                LitMessage.Text = "<p>Send failed: "+exp.Message + ":" + exp.InnerException + "</p>";

            }
                }
    }
}