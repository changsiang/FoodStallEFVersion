<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="FoodStallEFVersion.OrderPage" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1><strong>Order Page</strong></h1>
    <p><strong>Make your choice</strong></p>
    <p>Food Choice: 
        <asp:DropDownList ID="DdlFoodChoice" runat="server" DataSourceID="LinqDataSource1" DataTextField="dishName" DataValueField="dishName"></asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="FoodStallEFVersion.changsiangfooddbEntities" EntityTypeName="" OrderBy="dishName" Select="new (dishName)" TableName="Food_Dishes">
        </asp:LinqDataSource>
    </p>
        <p>Size Option:
            <asp:DropDownList ID="DddlSizeOption" runat="server" DataSourceID="LinqDataSource2" DataTextField="sizeOption" DataValueField="sizeOption"></asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="FoodStallEFVersion.changsiangfooddbEntities" EntityTypeName="" Select="new (sizeOption)" TableName="Sizes">
            </asp:LinqDataSource>
     </p>
     <p>
         Spice Option:
         <asp:CheckBoxList ID="CheckBoxSpice" runat="server">
             <asp:ListItem>Chilli</asp:ListItem>
             <asp:ListItem>Pepper</asp:ListItem>
             <asp:ListItem>More Salt</asp:ListItem>
             <asp:ListItem>Less Salt</asp:ListItem>
         </asp:CheckBoxList>
     </p>
     <p>
         <asp:Button ID="Button1" runat="server" Text="Calculate Price" OnClick="Button1_Click" />
         <br />
         Price: 
         <asp:Label ID="LabelPrice" runat="server" Text=""></asp:Label>
     </p>
     <p>
         Name: 
         <asp:TextBox ID="TxtBoxName" runat="server" Enabled="False"></asp:TextBox>
         <br />
         Delivery Address: 
         <br />
         Street: <asp:TextBox ID="txtBoxStreetName" runat="server"></asp:TextBox> 
         Unit:<asp:TextBox ID="TxtBoxUnit" runat="server"></asp:TextBox>
         <br />
         Postal Code: <asp:TextBox ID="TxtBoxPostal" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit Order" OnClick="BtnSubmit_Click" />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <asp:Button ID="BtnDiscard" runat="server" Text="Discard Order" />
    </p>

    
    </div>
    </form>
</body>
</html>
