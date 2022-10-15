<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_up_page.aspx.cs" Inherits="PizzaOrderSystem.sign_up_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1{
            text-align: center;
        }
        .cen{
            margin: 200px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="cen">
                            <asp:Label ID="sign_up_head" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="PMingLiU-ExtB" Font-Size="XX-Large" Height="63px" Text="Sign Up" Width="163px"></asp:Label>
                            <br />
            <br />
                            <asp:Label ID="username_lbl" runat="server" Font-Names="PMingLiU-ExtB" Font-Size="25px" Text="User Name:"></asp:Label>
                            <asp:TextBox ID="username_txt" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username_txt" ErrorMessage="user name is requre" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
            <br />
                            <asp:Label ID="email_id_lbl" runat="server" Font-Names="PMingLiU-ExtB" Font-Size="25px" Text="Email ID:"></asp:Label>
                            <asp:TextBox ID="email_id_txt" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email_id_txt" ErrorMessage="email is require" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
            <br />
                            <asp:Label ID="pass_word_lbl" runat="server" Font-Names="PMingLiU-ExtB" Font-Size="25px" Text="Password:"></asp:Label>
                            <asp:TextBox ID="pass_word_txt" runat="server" ViewStateMode="Disabled" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pass_word_txt" ErrorMessage="password is require" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
            <br />
            <asp:LinkButton ID="loginpage" runat="server" Font-Names="PMingLiU-ExtB" Font-Size="20px" OnClick="loginpage_Click">Are you already Register? then Login</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="sign_up" runat="server" Font-Names="PMingLiU-ExtB" Font-Size="20px" OnClick="lkbtn_sign_up">Sign Up</asp:LinkButton>
            <br />
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
