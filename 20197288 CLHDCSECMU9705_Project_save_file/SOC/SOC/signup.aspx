<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="SOC.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

   

</head>
<body>
 <form id="form1" runat="server">
    <div>
       <center> <h2> User Registration </h2> </center>
    <center>
        <table>
        <tr>

            <td>User Name</td>
            <td> <asp:TextBox ID ="txtUserName" runat="server" ></asp:TextBox> </td>
        </tr>
        <tr>

            <td> Email </td>
            <td> <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> </td>
        </tr>
        <tr>

            <td> NIC Number </td>
            <td> <asp:TextBox ID="txtNicNumber" runat="server"></asp:TextBox> </td>

        </tr>
        <tr>

            <td> Address </td>
            <td> <asp:TextBox ID="txtAddres" runat="server" TextMode="MultiLine"></asp:TextBox> </td>

        </tr>
        <tr>

            <td>  PhoneNumber </td>
            <td> <asp:TextBox ID="txtphone" runat="server"></asp:TextBox> </td>

        </tr>
         <tr>

            <td>  Password </td>
            <td> <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox> </td>

        </tr>
        <tr>
            <td> Select User Type</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" >
                    <asp:ListItem>User</asp:ListItem>
                    <asp:ListItem>Admin </asp:ListItem>
                </asp:DropDownList> </td>
        </tr>
        <tr>  
            <td>
                
            </td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="User Registration" OnClick="btnSubmit_Click"  />
            </td>

        </tr>
    </table></center>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
    </div>
    </form>


</body>
</html>
