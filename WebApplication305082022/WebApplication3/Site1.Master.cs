using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public string name;
        public string grade;
        public string gr;
        public string gr2;
        public string outputmax;
        public string outputmax2;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                string a = Session["name"].ToString();
                name = a;

            }
            if (Session["grade"] != null)
            {
                string b = Session["grade"].ToString();
                string c = Session["region"].ToString();
                gr = b;
                gr2 = c;

            }
            JavaScriptSerializer jss = new JavaScriptSerializer();

            outputmax = jss.Serialize(gr);
            outputmax2 = jss.Serialize(gr2);

        }
        protected void login_ServerClick(object sender, EventArgs e)
        {
            Response.ClearHeaders();
            Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);




            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
          //  Session.Abandon();
          

            Response.Redirect("~/Login.aspx");
        }
    }
}