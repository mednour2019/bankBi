using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Login : System.Web.UI.Page
    {
        AtbDataEntities context = new AtbDataEntities();
        public string error;

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        public void klik(object sender, EventArgs e)
        {
            foreach (userbank u in context.userbanks)
            {
                string oi = this.exampleInputUser1.Value;
                string upo = this.exampleInputPassword1.Value;
                if (this.exampleInputUser1.Value == u.username && this.exampleInputPassword1.Value == u.mdps)
                {
                    Session["name"] = this.exampleInputUser1.Value;
                    Session["IdUser"] = u.userid;
                    Session["grade"] = u.grade;
                    Session["region"] = u.region;
                    Response.Redirect("Home.aspx");
                }
               


            }
             
                error = "nom utilisateur ou mot de passe invalide!";
                this.exampleInputUser1.Value = "";
                this.exampleInputPassword1.Value = "";
            

        }

      
    }
}