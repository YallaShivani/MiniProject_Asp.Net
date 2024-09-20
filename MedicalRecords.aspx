<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicalRecords.aspx.cs" Inherits="WebApplication2.MedicalRecords" %>

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
                        <h2>Medical Records</h2>
                    </td>
                </tr>
                <tr>
                    <td>PatientId:</td>
                    <td><asp:TextBox ID="textbox1" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter ID" Display="Dynamic" ControlToValidate="textbox1" ForeColor="Red" Font-Italic></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                     <td>Diagnosis:</td>
                     <td><asp:TextBox ID="textbox2" runat="server"></asp:TextBox></td>
                    <td colspan="5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Diagnosis" Display="Dynamic" ControlToValidate="textbox2" ForeColor="Red" Font-Italic></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                     <td>Treatment:</td>
                     <td><asp:TextBox ID="textbox3" runat="server"></asp:TextBox></td>
                    <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Treatment" Display="Dynamic" ControlToValidate="textbox3" ForeColor="Red" Font-Italic></asp:RequiredFieldValidator></td>

                </tr>
                <tr>
                     <td>Prescription:</td>
                     <td><asp:TextBox ID="textbox4" runat="server"></asp:TextBox></td>
                    <td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Prescription" Display="Dynamic" ControlToValidate="textbox4" ForeColor="Red" Font-Italic></asp:RequiredFieldValidator></td>

                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btn1" Text="Save Medical Record" ForeColor="White" BackColor="Green" runat="server" PostBackUrl="~/InventoryManagement.aspx" OnClick="btn1_Click"/>
                    </td>
                </tr>
            </table>
            <asp:Label ID="label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
