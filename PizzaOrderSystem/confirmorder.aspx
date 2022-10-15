<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmorder.aspx.cs" Inherits="PizzaOrderSystem.confirmorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #oph_lkbtn{
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
        #oph_lkbtn:hover{
            font-weight: bold;
            padding: 10px;
            width: 200px;
            height: 70px;
            /*background-color: #686868;*/
            color: #FFFACD;
            font-size: 30px;
        }
        #cyo_lkbtn{
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
        #cyo_lkbtn:hover{
            font-weight: bold;
            padding: 10px;
            width: 200px;
            height: 70px;
            /*background-color: #686868;*/
            color: #FFFACD;
            font-size: 30px;
        }
        #pab_lkbtn{
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
        #pab_lkbtn:hover{
            font-weight: bold;
            padding: 10px;
            width: 200px;
            height: 70px;
            /*background-color: #686868;*/
            color: #FFFACD;
            font-size: 30px;
        }
        #gfp_lkbtn{
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
        #gfp_lkbtn:hover{
            font-weight: bold;
            padding: 10px;
            width: 200px;
            height: 70px;
            /*background-color: #686868;*/
            color: #FFFACD;
            font-size: 30px;
        }
        #lo_lkbtn{
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
        #lo_lkbtn:hover{
            font-weight: bold;
            padding: 10px;
            width: 200px;
            height: 70px;
            /*background-color: #686868;*/
            color: #FFFACD;
            font-size: 30px;
        }
        .image{
            background-image: url(../pics/confirm.jpg);
            height: 100%;
            width: 100%;
            background-size:cover;
        }
        #form1{
            color: #FFFACD;
        }
    </style>
</head>
<body class="image">
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="oph_lkbtn" runat="server" OnClick="oph_lkbtn_Click">Order Pizza Here</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="cyo_lkbtn" runat="server">Confirm Your Order</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="pab_lkbtn" runat="server" OnClick="pab_lkbtn_Click">Pay a Bill</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="lo_lkbtn" runat="server" OnClick="lo_lkbtn_Click">Log Out</asp:LinkButton>
            <br />
            <asp:Label ID="yol_lbl" runat="server" Text="Your Order List"></asp:Label>
            <br />
            <br />
            <asp:Label ID="sess_lbl0" runat="server"></asp:Label>
            <asp:Label ID="sess_lbl1" runat="server"></asp:Label>
            <asp:Label ID="sess_lbl" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="coo_lbl" runat="server" Text="Cost of Order:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:LinkButton ID="gfp_lkbtn" runat="server" OnClick="gfp_lkbtn_Click">Go For Payment</asp:LinkButton>
        </div>
    </form>
</body>
</html>
