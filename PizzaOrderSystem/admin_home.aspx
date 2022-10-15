<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="PizzaOrderSystem.admin_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .ima{
            background-image: url(../pics/adpizza.jpg);
        }
        #form1{
            text-align: center;
            margin-top: 75px;
        }
        #vo_lkbtn{
            font-weight: bold;
           padding: 10px;
           width: 200px;
           height: 70px;
           background-color: #909090;
           color: white;
           font-size: 20px;
           border:1px solid #909090;
           text-align: center;
        }
        #vo_lkbtn:hover{
            font-weight: bold;
            padding: 10px;
            width: 200px;
            height: 70px;
            background-color: #686868;
            color: white;
            font-size: 20px;
        }
    </style>
</head>
<body class="ima">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="30px" Text="Welcome Admin"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:LinkButton ID="vo_lkbtn" runat="server" OnClick="vo_lkbtn_Click">View Order</asp:LinkButton>
        </div>
    </form>
</body>
</html>
