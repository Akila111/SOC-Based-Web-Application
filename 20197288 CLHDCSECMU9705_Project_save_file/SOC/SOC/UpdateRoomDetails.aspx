<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateRoomDetails.aspx.cs" Inherits="SOC.UpdateRoomDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <center> <h1>Update Room Details</h1> </center>
    
<body>
    <form id="form1" runat="server">
    <div>
        <center>
        <table style="height: 374px">
        <tr>
            <td> Room ID </td>
            <td><asp:TextBox ID="txtRoomID" runat="server"></asp:TextBox> </td>
        </tr>

        <tr>
            <td>Hotel Name</td>
            <td> <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="172px">
                <asp:ListItem>Araliya Hotel</asp:ListItem>
                <asp:ListItem>Araliya Hotel</asp:ListItem>
                <asp:ListItem>Mango Mango</asp:ListItem>
                </asp:DropDownList> </td>
        </tr>
        <tr>
            <td>Room Type </td>
        <td> <asp:DropDownList ID="DropDownList2" runat="server" Height="24px" Width="172px" >
            <asp:ListItem>Standard Room</asp:ListItem>
            <asp:ListItem>Deluxe Room</asp:ListItem>
            <asp:ListItem>Suite  Room</asp:ListItem>
            </asp:DropDownList> </td>
        </tr>
        <tr>
            <td>Price </td>
            <td><asp:TextBox ID="txtPrice" runat="server"></asp:TextBox> </td>
        </tr>
        <tr>
            <td>Country </td>
            <td><asp:TextBox ID="txtCountry" runat="server"></asp:TextBox> </td>
        </tr>
         <tr>
            <td>City </td>
            <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox> </td>
        </tr>
        <tr>
            <td> Description</td>
            <td><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox> </td>
        </tr>
            <tr>
                <td> Selecg Image</td>
                <td><asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload> </td>
            </tr>

            <tr>
                    <td></td>
                 <td>

                 <asp:Button ID="btnSearch" runat="server" Text="Search Details" OnClick="btnSearch_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear Details" OnClick="btnClear_Click"  />
                     </td>
                 </tr>
                 <tr>
                   
                    <td> </td>
                       
                   <td>
                       <asp:Button ID="btnUpdate" runat="server" Text="Update Details" OnClick="btnUpdate_Click" />
                   
                        <asp:Button ID="btnDelete" runat="server" Text="Delete Details" OnClick="btnDelete_Click" /></td>
                  
                        
                         
                   
                </tr>
             <tr>
                 <td>

                 </td>
                 <td>
                     <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                 </td>
             </tr>
       
    </table></center>
    
    </div>
    </form>
</body>
</html>
