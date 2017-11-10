using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodStallEFVersion
{
    public partial class RegNewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            changsiangfooddbEntities ctx = new changsiangfooddbEntities();
            User newUser = new User();
            if (IsNotNull(TextBoxName.Text) && IsNotNull(TextBoxPw.Text) && IsNotNull(TextBoxName.Text) && IsNotNull(TextBoxAddress.Text))
            {
                //Give error
            }
            else
            {
                newUser.userName = TextBoxUsername.Text;
                newUser.password = TextBoxPw.Text;
                newUser.personName = TextBoxName.Text;
                newUser.personAddress = TextBoxAddress.Text;
                ctx.Users.Add(newUser);
                ctx.SaveChanges();
                Server.TransferRequest("Default.aspx", true);
            }
        }

        protected bool IsNotNull(string s)
        {
            if(s != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}