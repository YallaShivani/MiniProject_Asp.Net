<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillingDetails.aspx.cs" Inherits="WebApplication2.BillingDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <table>
                <tr>
                    <td colspan="2" align="center">
                        <h2>Billing Details</h2>
                    </td>
                </tr>
                <tr>
                    <td>PatientId:</td>
                    <td><asp:TextBox ID="textbox1" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter ID" Display="Dynamic" ControlToValidate="textbox1" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>Amount:</td>
                    <td><asp:TextBox ID="textbox2" runat="server"></asp:TextBox></td>
                    <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Amount" Display="Dynamic" ControlToValidate="textbox2" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>PaymentStatus:</td>
                    <td><asp:TextBox ID="textbox3" runat="server"></asp:TextBox></td>
                    <td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter PaymentStatus" Display="Dynamic" ControlToValidate="textbox3" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                    </td>
                    
                </tr>
                

                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btn1" Text="Generate Bill" runat="server" ForeColor="White" BackColor="Green" OnClick="btn1_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
