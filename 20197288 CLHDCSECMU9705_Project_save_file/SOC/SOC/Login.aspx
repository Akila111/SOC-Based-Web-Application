<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SOC.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Login Page</title>

   
</head>
<body>
    <form id="form1" runat="server">
   
        <center><h2>Login</h2></center>

       <center> <table>
           <tr>
               <td>

               </td>
               <td>
                   <asp:TextBox ID="txtUser" runat="server" Text="" placeholder="Username"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>

               </td>
               <td>
                   <asp:TextBox ID="txtPassword" runat="server" Text="password" TextMode="Password" placeholder="Password"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   User type
               </td>
               <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                    </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td>

               </td>
               <td>
                   <br />
                   <br />
               
                   <asp:Button ID="Button1" runat="server" Text="Login" Width="76px" OnClick="Button1_Click1" />
                   <asp:Button ID="Button2" runat="server" Text="Signup" OnClick="Button2_Click" />
               </td>
           </tr>
       </table></center>
            
      </form>
    
    <div>
          <center><asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label></center>
    </div>
       
   
</body>
</html>
