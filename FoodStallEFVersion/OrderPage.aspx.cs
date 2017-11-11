using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FoodStallEFVersion;

namespace FoodStallEFVersion
{
    public partial class OrderPage : System.Web.UI.Page
    {
        public string personName { get; set; }
        public string userName { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            userName = (string)(Session["UserName"]);
            personName = (string)(Session["PersonName"]);
            if (!IsPostBack)
                CheckInvalidEntry(userName);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            changsiangfooddbEntities ctx = new changsiangfooddbEntities();
            decimal? foodPrice = ctx.Food_Dishes.Where(x => x.dishName == DdlFoodChoice.SelectedValue).Select(x => x.price).First();
            decimal? sizePrice = ctx.Sizes.Where(x => x.sizeOption == DddlSizeOption.SelectedValue).Select(x => x.price).First();
            double price = Convert.ToDouble(foodPrice + sizePrice);
            LabelPrice.Text = string.Format("${0:.##}", price);
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            if (IsNotNull(txtBoxStreetName.Text) == true
                && IsNotNull(TxtBoxUnit.Text) == true
                && IsNotNull(TxtBoxPostal.Text) == true)
            {
                string spiceOption = "";
                foreach (ListItem o in CheckBoxSpice.Items)
                {
                    if (o.Selected)
                        spiceOption += " " + o.Value.ToString();
                }
                changsiangfooddbEntities ctx = new changsiangfooddbEntities();
                try
                {
                    Order newOrder = new Order();
                    newOrder.orderUser = userName;
                    newOrder.orderDate = DateTime.Now;
                    newOrder.orderDish = DdlFoodChoice.SelectedItem.ToString();
                    newOrder.orderSize = DddlSizeOption.SelectedItem.ToString();
                    newOrder.orderSpices = spiceOption;
                    newOrder.deliveryLocation = txtBoxStreetName.Text + " " + TxtBoxUnit.Text + "Postal Code " + TxtBoxPostal.Text;
                    newOrder.orderStatus = "Pending";
                    ctx.Orders.Add(newOrder);
                    ctx.SaveChanges();
                    LabelStatus.Text = "Order Submitted Successfully";
                    ClearForm();
                }
                catch (Exception ex)
                {
                    LabelStatus.Text = ex.ToString();
                }
            }
            else
            {
                LabelStatus.Text = "Error! Please enter the information for all fields.";
            }


        }

        //This will check for inproper entry to the OrderPage.aspx
        //User are expected to login via Default.aspx and validate infomation on that Page
        protected void CheckInvalidEntry(string s)
        {
            if (s == null)
                Server.Transfer("Default.aspx");
            else
                TxtBoxName.Text = personName;
        }

        protected void BtnDiscard_Click(object sender, EventArgs e)
        {
            Server.Transfer("Default.aspx");
        }
        protected bool IsNotNull(string s)
        {
            if (s != "")
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //This is to reset all fields after an order is placed
        protected void ClearForm()
        {
            txtBoxStreetName.Text = "";
            TxtBoxUnit.Text = "";
            TxtBoxPostal.Text = "";
        }
    }
}