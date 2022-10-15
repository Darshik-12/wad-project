<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="PizzaOrderSystem.payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #poh_lkbtn{
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
        #poh_lkbtn:hover{
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
        #o_lkbtn{
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
        #o_lkbtn:hover{
            font-weight: bold;
            padding: 10px;
            width: 200px;
            height: 70px;
            /*background-color: #686868;*/
            color: #FFFACD;
            font-size: 30px;
        }
        #gb_lkbtn{
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
        #gb_lkbtn:hover{
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
            /*background-color: #686868;*/
            color: #FFFACD;
            font-size: 30px;
        }
        #form1{
            color: #FFFACD;
        }
        .image{
            background-image: url(../pics/paypizza.jpg);
            height: 100%;
            width: 100%;
            background-size:cover;
        }
    </style>
</head>
<body class="image">
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="poh_lkbtn" runat="server" OnClick="poh_lkbtn_Click">Order Pizza Here</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="cyo_lkbtn" runat="server" OnClick="cyo_lkbtn_Click">Confirm Your Order</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="pab_lkbtn" runat="server">Pay a Bill</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="lo_lkbtn" runat="server" OnClick="lo_lkbtn_Click">Log Out</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="yo_lkbtn" runat="server" OnClick="yo_lkbtn_Click">Your Order</asp:LinkButton>
            <br />
            <br />
            <asp:Label ID="pi_lbl" runat="server" Font-Size="30px" Text="Payment Information"></asp:Label>
            <br />
            <br />
            <asp:Label ID="fn_lbl" runat="server" Font-Size="25px" Text="First Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="fn_tb" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fn_tb" ErrorMessage="Name is require" ForeColor="Red">please enter name</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="ln_lbl" runat="server" Font-Size="25px" Text="Last Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ln_tb" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ln_tb" ErrorMessage="last name is require" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="add_lbl" runat="server" Font-Size="25px" Text="Address:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="add_tb" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="add_tb" ErrorMessage="address is require" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="pc_lbl" runat="server" Font-Size="25px" Text="Postal Code:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="pc_tb" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pc_tb" ErrorMessage="postal code is require" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="cn_lbl" runat="server" Font-Size="25px" Text="Contact No.:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="cn_tb" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cn_tb" ErrorMessage="contact no is require" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="email_lbl" runat="server" Font-Size="25px" Text="Email:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="email_tb" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email_tb" ErrorMessage="email is require" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="pm_lbl" runat="server" Font-Size="25px" Text="Payment Method:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="pm_rbtn" runat="server" Text="Cash" Font-Size="23px" />
            <br />
            <br />
            <asp:Label ID="ap_lbl" runat="server" Font-Size="25px" Text="Amount Payable:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="l1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:LinkButton ID="o_lkbtn" runat="server" OnClick="o_lkbtn_Click">Order</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            </div>
    </form>
</body>
</html>
