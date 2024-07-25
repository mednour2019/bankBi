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
    public partial class guess : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        /*  public void saveuser(object sender, EventArgs e)
          {
             string fullname = Request.Form["fdfullname"];
              string username= Request.Form["fdusername"];
             string password = Request.Form["fdpassword"];
              string grade = Request.Form["fdgrade"];
              string gender= Request.Form["fdgender"];
              string region = Request.Form["fdregion"];
              string agence = Request.Form["fdagence"];
              string hjjh = agence;
          }*/

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static void afficher(string fullname, string username,string password,string gender,string grade,string region,string agence)
        {


            //  string qqs = grade;
            //  string aqs = qqs;
            if (grade == "Informaticien")
            {
                region = null;
                agence = null;
            }
            else
            if (grade == "Directeurgénéral")
            {
                region = null;
                agence = null;
            }
            else
            if (grade == "chefrégional")
            {
                agence = null;
            }

            var context = new AtbDataEntities();
            var visualisation = new userbank()
            {
                nomcomplet = fullname,
                username = username,
                mdps = password,
                grade= grade,
                gender=gender,
                region=region,
                agence=agence

               

            };
            context.userbanks.Add(visualisation);

            context.SaveChanges();
        }
    }

}