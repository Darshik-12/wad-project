<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="PizzaOrderSystem.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #form1{
            text-align: center;
        }
        #ad_log:hover{
            background-color: antiquewhite;
        }
        .imag{
            background-image: url(../pics/login.jpg);
        }
    </style>
    <script type="text/javascript" src="scripts/jquery-1.3.2.js"></script>
    <script type="text/javascript" src="scripts/jquery.tooltip.js"></script>
    <script type="text/javascript">
    $(function() {
        $('.has-tooltip').tooltip();
    });
 </script>
</head>
<body class="imag">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server" Font-Size="50px" Text="Admin Login" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="us_lbl" runat="server" Text="User Name:" Font-Bold="True" Font-Size="25px"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ad_tb" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password:" Font-Bold="True" Font-Size="25px"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ad_pass_tb" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:LinkButton ID="ad_log" runat="server" Font-Bold="True" Font-Size="25px">Login</asp:LinkButton>
        </div>
    </form>
</body>
</html>
