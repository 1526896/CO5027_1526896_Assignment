using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace masterpages
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            //create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            //create user
            var user = new IdentityUser() { UserName = txtUsername.Text, Email = TextEmailReg.Text };
            IdentityResult result = manager.Create(user, txtPassword.Text);

            IdentityRole endUserRole = new IdentityRole("admin");
            //create role name
            roleManager.Create(endUserRole);
            manager.AddToRole(user.Id, "admin");

            if (result.Succeeded)
            {
                Server.Transfer("login.aspx", true);
            }
            else
            {
                LtrlError.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }
}