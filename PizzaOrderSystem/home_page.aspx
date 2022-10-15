<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home_page.aspx.cs" Inherits="PizzaOrderSystem.home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .image{
            background-image: url(../pics/pizzaback.jpg);
            height: 100%;
            width: 100%;
            background-size:cover;
        }
        #oph_lbl{
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
        #oph_lbl:hover{
            font-weight: bold;
            padding: 10px;
            width: 200px;
            height: 70px;
            color: #FFFACD;
            font-size: 30px;
        }
        #confirm_order{
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
        #confirm_order:hover{
            font-weight: bold;
            padding: 10px;
            width: 200px;
            height: 70px;
            color: #FFFACD;
            font-size: 30px;
        }
        #bill_linkbtn{
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
        #bill_linkbtn:hover{
            font-weight: bold;
            padding: 10px;
            width: 200px;
            height: 70px;
            color: #FFFACD;
            font-size: 30px;
        }
        #co_lkbtn{
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
        #co_lkbtn:hover{
            font-weight: bold;
            padding: 10px;
            width: 200px;
            height: 70px;
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
            color: #FFFACD;
            font-size: 30px;
        }
        #yo_lkbtn{
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
        #yo_lkbtn:hover{
            font-weight: bold;
            padding: 10px;
            width: 200px;
            height: 70px;
            color: #FFFACD;
            font-size: 30px;
        }
        #top_cbl{
            margin-left: 20px;
        }
        #cd_cbl{
            margin-left: 20px;
        }
        #off_cbl{
            margin-left: 20px;
        }
        #form1{
            color: #FFFACD;
        }
    </style>
    
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Great+Vibes&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server" class="image">
        <div class="image">
            <asp:Label ID="oph_lbl" runat="server" Font-Underline="True" Text="Order Pizza Here"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="confirm_order" runat="server" OnClick="confirm_order_Click">Confirm Your order</asp:LinkButton>
&nbsp;
            <asp:LinkButton ID="bill_linkbtn" runat="server" OnClick="bill_linkbtn_Click">Pay a Bill</asp:LinkButton>
            <asp:LinkButton ID="lo_lkbtn" runat="server" OnClick="lo_lkbtn_Click">Log Out</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="size_lbl" runat="server" Text="Pizza Size:" Font-Size="35px"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="small_rbtn" runat="server" Text="Small(60.00₹)" Font-Size="25px" />
&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="mediam_rbtn" runat="server" Text="Mediam(80.00₹)" Font-Size="25px"/>
&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="large_rbtn" runat="server" Text="Large(100.00₹)" Font-Size="25px"/>
&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="xlarge_rbtn" runat="server" Text="Extra Large(120.00₹)" Font-Size="25px"/>
            <br />
            <br />
            <asp:Label ID="crust_lbl" runat="server" Text="Crust:" Font-Size="35px"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="nor_rbtn" runat="server" Text="Normal" Font-Size="25px"/>
&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="chees_rbtn" runat="server" Text="Cheesy" Font-Size="25px" />
&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="brust_rbtn" runat="server" Text="Cheese Brust" Font-Size="25px" />
            <br />
            <br />
            <asp:Label ID="topping_lbl" runat="server" Text="Toppings:" Font-Size="35px"></asp:Label>
&nbsp;<asp:CheckBoxList ID="top_cbl" runat="server" Font-Size="25px">
                <asp:ListItem>Pepperoni</asp:ListItem>
                <asp:ListItem>Extra Cheese</asp:ListItem>
                <asp:ListItem>Corn</asp:ListItem>
                <asp:ListItem>Onion</asp:ListItem>
                <asp:ListItem>Paneer</asp:ListItem>
                <asp:ListItem>Tomato</asp:ListItem>
                <asp:ListItem>Capsicum</asp:ListItem>
                <asp:ListItem>Pineapple</asp:ListItem>
                <asp:ListItem>Olives</asp:ListItem>
                <asp:ListItem>Green Pepar</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:Label ID="cd_lbl" runat="server" Text="Cold Drinks" Font-Size="35px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:CheckBoxList ID="cd_cbl" runat="server" Font-Size="25px">
                <asp:ListItem>Thumbs Up</asp:ListItem>
                <asp:ListItem>Coca Cola</asp:ListItem>
                <asp:ListItem>Sprite</asp:ListItem>
                <asp:ListItem>Mazza</asp:ListItem>
                <asp:ListItem>Jira</asp:ListItem>
                <asp:ListItem>String</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:Label ID="off_lbl" runat="server" Text="Other Fast Food:" Font-Size="35px"></asp:Label>
            <br />
            <asp:CheckBoxList ID="off_cbl" runat="server" Font-Size="25px">
                <asp:ListItem>Cheesy Garlic Bread</asp:ListItem>
                <asp:ListItem>Manchurian Dry</asp:ListItem>
                <asp:ListItem>Noodles</asp:ListItem>
                <asp:ListItem>Sezwan Fried Rice</asp:ListItem>
                <asp:ListItem>Manchav Soup</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:LinkButton ID="co_lkbtn" runat="server" OnClick="co_lkbtn_Click">Confirm Order</asp:LinkButton>
        </div>
    </form>
</body>
</html>
