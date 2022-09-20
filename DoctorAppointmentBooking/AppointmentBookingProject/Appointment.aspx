<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 0px;
            left: 0px;
        }
    </style>
</head>
    <style>
        body {
            background-color:#067c75
        }
        .auto-style2 {
            position: absolute;
            top: 148px;
            left: 888px;
            z-index: 1;
            width: 330px;
            height: 226px;
        }
        .auto-style3 {
            width: 50%;
        }
        .auto-style4 {
            width: 171px;
        }
    </style>
<body style="z-index: 1; width: 1163px; height: 83px; position: absolute; top: 0px; left: 0px">
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="126px" ImageUrl="~/images/Headpic.png" Width="1547px" CssClass="auto-style1" style="z-index: 1" />
        </div>
        <asp:Image ID="Image2" runat="server" CssClass="auto-style2" ImageUrl="~/images/patient-having-consultation-female-doctor-260nw-534962014 (2).png" />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp; </p>
        <p>
            &nbsp;&nbsp;&nbsp;</p>
        <p>
            APPOINTMENT</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table align="left" class="auto-style3">
                <tr>
                    <td class="auto-style4">Patient Name</td>
                    <td>
                        <asp:TextBox ID="txtPname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Mobile</td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Gender</td>
                    <td>
                        <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Age</td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Date</td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Time</td>
                    <td>
                        <asp:RadioButtonList ID="rblTime" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Morning</asp:ListItem>
                            <asp:ListItem>Afternoon</asp:ListItem>
                            <asp:ListItem>Evening</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Address</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Book_Appointment" Text="Book Appointment" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblMsg" runat="server" Text="lblMsg"></asp:Label>
                    </td>
                </tr>
            </table>
            &nbsp;</p>
    </form>
</body>
</html>
