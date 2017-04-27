using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;

namespace masterpages
{
    public partial class admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LgnBtn_Click(object sender, EventArgs e)
        {
            {
                var identityDbContext = new IdentityDbContext("IdentityConnectionString");
                var userStore = new UserStore<IdentityUser>(identityDbContext);
                var userManager = new UserManager<IdentityUser>(userStore);
                var user = userManager.Find(txtUsername.Text, txtPassword.Text);
                if(user !=null)
                {
                    //Instruct user to log in
                    LogUserIn(userManager, user);
                    Server.Transfer("privatepage.aspx", true);
                }
                else
                {
                    LitLogin.Text = "Cannot log in due to invalid username or password";
                }
            }
        }
        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
        }
    }
}