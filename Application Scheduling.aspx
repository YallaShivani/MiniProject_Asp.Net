
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Application Scheduling.aspx.cs" Inherits="WebApplication2.Application_Scheduling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <h2 align="center">Appointment Scheduling</h2><br />
        <div>

            <table colspan="2" align="center">
                <tr>
                    <td>PatientId:</td>
                    <td><asp:TextBox ID="textbox1" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter ID" ControlToValidate="textbox1" ForeColor="Red" Font-Italic></asp:RequiredFieldValidator></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Appointment Date:</td>
                    <td><asp:TextBox ID="textbox2" runat="server" borderRadius="10px"></asp:TextBox></td>
                    <td>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Date" ControlToValidate="textbox2" ForeColor="Red" Font-Italic></asp:RequiredFieldValidator></td>

                    </td>
                    <br /><br />
                </tr>
                  <asp:RegularExpressionValidator ID="regular" runat="server" ControlToValidate="textbox2" ForeColor="Red"
      ErrorMessage="Please enter date in format YYYY-MM-DD" ValidationExpression="\d{4}-\d{2}-\d{2}" Display="Dynamic">
</asp:RegularExpressionValidator>
                <tr>
                    <td colspan="2" align="center"><asp:Button ID="btn1" Text="Schedule Appointment" runat="server" forecolor="White" BackColor="Green" PostBackUrl="~/MedicalRecords.aspx" OnClick="btn1_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
