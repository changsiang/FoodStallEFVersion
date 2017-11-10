using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodStallEFVersion
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            OrderPage orderPage = new OrderPage();
            changsiangfooddbEntities ctx = new changsiangfooddbEntities();
            try
            {
                User ur = ctx.Users.Where(x => x.userName == TextBoxUser.Text).First();
                if (ur.password == TextBoxPw.Text)
                {
                    Session["UserName"] = ur.userName;
                    Response.Redirect("OrderPage.aspx", true);
                }
            }
            catch (Exception ex)
            {
                LabelAlert.Text = "Invalid Login Username/Password. Please try again!";
            }

        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            Server.Transfer("RegNewUser.aspx", true);
        }
    }
}