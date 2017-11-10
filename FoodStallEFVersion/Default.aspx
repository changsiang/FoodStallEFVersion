<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FoodStallEFVersion.Default" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body class="w3-display-topmiddle">
    <div class="w3-text-red w3-justify">
    <h2>Institute of System Science</h2>
    </div>
    <h3>Food Ordering System</h3>
    <p>Please <strong>login</strong> to start ordering...</p>
    <form id="form1" runat="server">
    <div>
    <p><strong>Username: </strong> 
        <asp:TextBox ID="TextBoxUser" runat="server" Value=""></asp:TextBox>
    </p>
    <p><strong>Password: </strong>
        <asp:TextBox ID="TextBoxPw" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" /> <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder> <asp:Button ID="BtnReg" runat="server" Text="New Account" OnClick="BtnReg_Click" />
    </p>
    <p></p>
        <h5 class="w3-text-red"><asp:Label ID="LabelAlert" runat="server" Text=""></asp:Label></h5>
    </div>
    </form>
</body>
</html>
