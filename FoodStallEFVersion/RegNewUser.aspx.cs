using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity.Infrastructure;

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
                try
                {
                    newUser.userName = TextBoxUsername.Text;
                    newUser.password = TextBoxPw.Text;
                    newUser.personName = TextBoxName.Text;
                    newUser.personAddress = TextBoxAddress.Text;
                    ctx.Users.Add(newUser);
                    ctx.SaveChanges();
                    Server.TransferRequest("Default.aspx", true);
                }
                catch (Exception ex)
                {
                    
                    if(ex is DbUpdateException)
                        LabelError.Text = string.Format("Username already taken.\n Please choose a different Username.");
                    else
                        LabelError.Text = string.Format("General Error!!\n {0}", ex.ToString());
                }
            }
            else
            {
                LabelError.Text = "Error! Please enter the information for all fields.";
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