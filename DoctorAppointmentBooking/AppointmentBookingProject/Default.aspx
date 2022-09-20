<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 0px;
            left: 0px;
            z-index: 1;
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
    </style>
<body style="z-index: 1; width: 1163px; height: 83px; position: absolute; top: 0px; left: 0px">
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="126px" ImageUrl="~/images/Headpic.png" Width="1547px" CssClass="auto-style1" />
        </div>
        <asp:Image ID="Image2" runat="server" CssClass="auto-style2" ImageUrl="~/images/patient-having-consultation-female-doctor-260nw-534962014 (2).png" />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="XX-Large" NavigateUrl="~/DoctorLogin.aspx">Doctor Login</asp:HyperLink>
        <br />
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="XX-Large" NavigateUrl="~/PatientLogin.aspx">Patient Login</asp:HyperLink>
        </p>
    </form>
</body>
</html>

