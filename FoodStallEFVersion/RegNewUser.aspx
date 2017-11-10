<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegNewUser.aspx.cs" Inherits="FoodStallEFVersion.RegNewUser" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="w3-center">New Account Registration</h1>
            <table class="w3-center">
                <tr>
                    <td style="width: 50%" class="w3-right-align">Username:</td>
                    <td class="w3-left-align">
                        <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 50%" class="w3-right-align">Password: </td>
                    <td class="w3-left-align">
                        <asp:TextBox ID="TextBoxPw" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 50%" class="w3-right-align">Name: </td>
                    <td class="w3-left-align">
                        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 50%" class="w3-right-align">Address: </td>
                    <td style="width: 80%">
                        <asp:TextBox ID="TextBoxAddress" runat="server" Width="601px"></asp:TextBox></td>
                </tr>
            </table>
        </div>
        <div class="w3-center">
            <asp:Button ID="ButtonSubmit" runat="server" Text="Register" OnClick="ButtonSubmit_Click" /></div>
        <br />
        <div class="w3-center w3-text-red"><asp:Label ID="LabelError" runat="server" Text=""></asp:Label></div>
    </form>
</body>
</html>
