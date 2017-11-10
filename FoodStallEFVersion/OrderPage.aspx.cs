﻿using System;
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
        public string personName { get; set;}
        public string userName { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            userName = (string)(Session["UserName"]);
            TxtBoxName.Text = userName;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            changsiangfooddbEntities ctx = new changsiangfooddbEntities();
            decimal? foodPrice = ctx.Food_Dishes.Where(x => x.dishName == DdlFoodChoice.SelectedValue).Select(x => x.price).First();
            decimal? sizePrice = ctx.Sizes.Where(x => x.sizeOption == DddlSizeOption.SelectedValue).Select(x => x.price).First();
            double price = Convert.ToDouble(foodPrice + sizePrice);
            LabelPrice.Text = string.Format("{0:c}",price.ToString());
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string spiceOption = "";
            foreach (ListItem o in CheckBoxSpice.Items)
            {
                if (o.Selected)
                    spiceOption += " " + o.Value.ToString();
            }
            changsiangfooddbEntities ctx = new changsiangfooddbEntities();
            Order newOrder = new Order();
            newOrder.orderUser = TxtBoxName.Text;
            newOrder.orderDate = DateTime.Now;
            newOrder.orderDish = DdlFoodChoice.SelectedItem.ToString();
            newOrder.orderSize = DddlSizeOption.SelectedItem.ToString();
            newOrder.orderSpices = spiceOption;
            newOrder.deliveryLocation = txtBoxStreetName.Text + " " + TxtBoxUnit.Text + " " + TxtBoxPostal.Text;
            newOrder.orderStatus = "Pending";
            ctx.Orders.Add(newOrder);
            ctx.SaveChanges();

        }
    }
}