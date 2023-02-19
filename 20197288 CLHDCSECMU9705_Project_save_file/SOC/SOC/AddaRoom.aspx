<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddaRoom.aspx.cs" Inherits="SOC.AddaRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/RegistrationForm.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="RegistrationForm">
        <center><h1>&nbsp;</h1>
            <h1>&nbsp;Adding Rooms  </h1>
        </center>
    <center>
        <table style="height: 374px">
        <tr>
            <td> Room ID </td>
            <td><asp:TextBox ID="txtRoomID" runat="server"></asp:TextBox> </td>
        </tr>

        <tr>
            <td>Hotel Name</td>
            <td> <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="172px"></asp:DropDownList> </td>
        </tr>
        <tr>
            <td>Room Type </td>
        <td> <asp:DropDownList ID="DropDownList2" runat="server" Height="24px" Width="172px">
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
                <td> </td>
                <td><asp:Button ID="Button1" runat="server" Text="Add Room" OnClick="Button1_Click" ></asp:Button>
                    <asp:Label ID="lblTxt" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
      
    </table></center>
    </div>
         <br />
        <br />
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" >
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="RoomID" HeaderText="RoomID" />
                <asp:BoundField DataField="HotelID" HeaderText="Hotel ID" />
                <asp:BoundField DataField="RoomType" HeaderText="Room Type" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="Country" HeaderText="Country" />
                <asp:BoundField DataField="City" HeaderText="City" />
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:TemplateField HeaderText="Images">
                    <ItemTemplate>
                        <img src="images/<%#Eval("SelectImage") %>" style="width:80px;height:100px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
            </center>
             
    </form>
</body>
</html>
