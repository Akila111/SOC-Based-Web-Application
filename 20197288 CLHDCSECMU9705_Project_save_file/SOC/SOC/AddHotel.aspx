<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddHotel.aspx.cs" Inherits="SOC.AddHotel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Hotel</title>

    <link rel="stylesheet" href="css/RegistrationForm.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="RegistrationForm">
       <center style="margin-left: 40px"> <h1> Hotel Registration Form </h1> </center>

        <table>
            <tr>
                <td> Hotel ID     
                    <br />
                    <br />
                </td>
                <td>  <asp:TextBox ID="txtHotelID" runat="server"></asp:TextBox>    
                    <br />
                    <br />
                </td>
            </tr>
         
            <tr>
                <td> Hotel Name 
                    <br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txtHotelName" runat="server"></asp:TextBox> 
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td> Location 
                    <br />
                    <br />
                </td>
                <td> <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox> 
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td> Contact Number<br />
                    <br />
                </td>
                <td>  <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>   
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td> Email Address 
                    <br />
                    <br />
                </td>
                <td> <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> 
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td> Hotel Rooms<br />
                    <br />
                </td>
                <td><asp:TextBox ID="txtHotelRooms" runat="server"></asp:TextBox> 
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>Number Of Employes<br />
                    <br />
                </td>
                <td><asp:TextBox ID="txtNumberOfEmployes" runat="server"></asp:TextBox> 
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>Images 
                    <br />
                    <br />
                </td>
                <td> <asp:FileUpload ID="imgFile" runat="server" />   
                    <br />
                    <br />
                </td>
                <tr>
                    <td></td>
                   
                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnRegister" runat="server" Text= "Register" Height="43px" Width="123px" OnClick="btnRegister_Click"  /> 
                        <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </tr>
        </table>

    </div>
        <br />
        <br />
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="HotelID" HeaderText="Hotel ID" />
                <asp:BoundField DataField="HotelName" HeaderText="Hotel Name" />
                <asp:BoundField DataField="Location" HeaderText="Location" />
                <asp:BoundField DataField="ContactInformation" HeaderText="Contact Information" />
                <asp:BoundField DataField="EmailAddress" HeaderText="Email Address" />
                <asp:BoundField DataField="HotelRoom" HeaderText="Hotel Room" />
                <asp:BoundField DataField="NumerOfEmployes" HeaderText="Numer Of Employes" />
                <asp:TemplateField HeaderText="Images">
                    <ItemTemplate>
                        <img src="images/<%#Eval("Images") %>" style="width:80px;height:100px" />
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
