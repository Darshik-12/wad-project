<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="PizzaOrderSystem.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .image{
            background-image: url(../pics/home.jpg);
            height: 100%;
            width: 100%;
            text-align: center;
            background-size:cover;
        }
        #form1{
            color: #FFFACD;
        }
        #op_lkbtn{
            font-weight: bold;
           padding: 10px;
           width: 200px;
           height: 70px;
           /*background-color: #909090;*/
           color: white;
           font-size: 30px;
           color: #FFA500;
           /*border:1px solid #909090;*/
        }
        #op_lkbtn:hover{
            font-weight: bold;
            padding: 10px;
            width: 200px;
            height: 70px;
            /*background-color: #686868;*/
            color: #FFFACD;
            font-size: 30px;
        }
    </style>
</head>
<body class="image">
    <form id="form1" runat="server">
        <div class="home1">
            <asp:Label ID="Label1" runat="server" Font-Names="Bradley Hand ITC" Font-Size="100pt" Text="Welcome" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <br />
                    <asp:LinkButton ID="op_lkbtn" runat="server" OnClick="op_lkbtn_Click" Font-Bold="True" Font-Size="25pt">For Order a Pizza Click</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Order Pizza according to your taste..." Font-Bold="True" Font-Size="30pt"></asp:Label>
            
        </div>
    </form>
</body>
</html>
