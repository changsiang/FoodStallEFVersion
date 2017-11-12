<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderSummary.aspx.cs" Inherits="FoodStallEFVersion.OrderSummary" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body class="w3-display-topmiddle">
    <div class="w3-center">
        <h1 class="w3-animate-zoom w3-text-black w3-light-grey">Summary of Order as of <asp:Label ID="LabelDate" runat="server" Text=""></asp:Label></h1>
    </div>
    <p></p>
    <form id="form1" runat="server">
    <div class="w3-responsive">
        <asp:GridView ID="GridView1" CssClass="w3-table-all w3-justify w3-centered w3-hoverable w3-light-blue w3-bordered w3-border-grey" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="orderID" HeaderText="Order ID" ReadOnly="True" SortExpression="orderID" />
                <asp:BoundField DataField="orderDate" HeaderText="Order Date" ReadOnly="True" SortExpression="orderDate" />
                <asp:BoundField DataField="deliveryLocation" HeaderText="Delivery Location" ReadOnly="True" SortExpression="deliveryLocation" />
                <asp:BoundField DataField="orderStatus" HeaderText="Order Status" ReadOnly="True" SortExpression="orderStatus" />
                <asp:BoundField DataField="orderUser" HeaderText="Order User" ReadOnly="True" SortExpression="orderUser" />
                <asp:BoundField DataField="orderDish" HeaderText="Order Dish" ReadOnly="True" SortExpression="orderDish" />
                <asp:BoundField DataField="orderSize" HeaderText="Order Size" ReadOnly="True" SortExpression="orderSize" />
                <asp:BoundField DataField="orderSpices" HeaderText="Order Spices" ReadOnly="True" SortExpression="orderSpices" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="FoodStallEFVersion.changsiangfooddbEntities" EntityTypeName="" OrderBy="orderDate desc" Select="new (orderID, orderDate, deliveryLocation, orderStatus, orderUser, orderDish, orderSize, orderSpices)" TableName="Orders">
        </asp:LinqDataSource>
    </div>
    </form>
</body>
</html>
