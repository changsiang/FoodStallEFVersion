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
   </div>
        <div class="w3-bordered">
            <table style="width:100%">

            <tr>
            <td>Username:</td> <td> Password: </td> <td> Name: </td> <td> Address: </td>
            </tr>

            <tr> 
            <td>
                <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
                </td>
            <td>
            <asp:TextBox ID="TextBoxPw" runat="server" TextMode ="Password"></asp:TextBox>
            </td>    
            <td>
                <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
            </td>
            <td>
            <asp:TextBox ID="TextBoxAddress" runat="server" Width="537px"></asp:TextBox>
           </td>
                </tr>
                </table>
        </div>
        <asp:Button ID="ButtonSubmit" runat="server" Text="Register" OnClick="ButtonSubmit_Click" />
        

    </form>
</body>
</html>
