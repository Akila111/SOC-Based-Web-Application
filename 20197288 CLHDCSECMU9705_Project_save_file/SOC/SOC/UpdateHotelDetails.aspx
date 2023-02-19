<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateHotelDetails.aspx.cs" Inherits="SOC.UpdateHotelDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <center> <h1>Update Hotel Details</h1> </center>
   <center>
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
                <td>Select Image
                    <br />
                    <br />
                </td>
                <td> <asp:FileUpload ID="imgFile" runat="server" />   
                    <br />
                    <br />
                </td>
                </tr>
             <tr>
                    <td></td>
                 <td>

                 <asp:Button ID="btnSearch" runat="server" Text="Search Details" OnClick="btnSearch_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear Details" OnClick="btnClear_Click" />
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
        </table>
       </center>
    </div>
    </form>
</body>
</html>
