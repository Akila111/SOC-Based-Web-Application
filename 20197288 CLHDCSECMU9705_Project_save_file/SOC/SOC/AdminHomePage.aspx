<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="SOC.AdminHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 549px">
        <center>
    <h1>Admin Home Page</h1></center>
       <center>
         <table style="height: 399px">
            <tr>
                <td><asp:Button ID="Button1" runat="server" Text="Manage Hotel Details" Width="435px" Height="70px" OnClick="Button1_Click"></asp:Button> </td>
            </tr>
             <tr>
                 <td><asp:Button ID="Button2" runat="server" Text="Manage Room Details" Width="435px" Height="70px" OnClick="Button2_Click"></asp:Button> </td>
             </tr>

             <tr>
                 <td> <asp:Button ID="Button3" runat="server" Text="Insert Hotel" Width="435px" Height="70px" OnClick="Button3_Click"></asp:Button ></td>
             </tr>
             <tr>
                 <td><asp:Button ID="Button4" runat="server" Text="Insert Room" Width="435px" Height="70px" OnClick="Button4_Click"></asp:Button></td>

             </tr>
        </table>
           </center>


    </div>
    </form>
</body>
</html>
