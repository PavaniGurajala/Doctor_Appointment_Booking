<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientLogin.aspx.cs" Inherits="PatientLogin" %>

<!DOCTYPE html>

html xmlns="http://www.w3.org/1999/xhtml">
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
            width: 60%;
            height: 262px;
        }
        .auto-style4 {
            width: 156px;
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LOGIN</p>
        <table align="left" class="auto-style3">
            <tr>
                <td class="auto-style4">Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter Email"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">PassWord</td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="Please enter PassWord"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Login" Text="Login" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Reset" Text="Reset" />
                &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Don&#39;t have an account? Register Now</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="lblMsg" runat="server" Text="lblMsg"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

