<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_page.aspx.cs" Inherits="PizzaOrderSystem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Great+Vibes&display=swap" rel="stylesheet">
    <style type="text/css">
        #form1{
            text-align: center;
        }
        .cen{
            margin: 200px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 79px;
        }
    </style>
</head>
<body style="hover: ">
    <form id="form1" runat="server">
            <div class="cen">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="login_head" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="PMingLiU-ExtB" Font-Size="XX-Large" Height="50px" Text="Login" Width="107px"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="user_name_lbl" runat="server" Font-Names="PMingLiU-ExtB" Font-Size="25px" Text="User Name:"></asp:Label>
                            <asp:TextBox ID="email_id_txt" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email_id_txt" ErrorMessage="name is require" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <asp:Label ID="password_lbl" runat="server" Font-Names="PMingLiU-ExtB" Font-Size="25px" Text="Password:"></asp:Label>
                            <asp:TextBox ID="password_txt" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password_txt" ErrorMessage="password is require" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:LinkButton ID="sign_up_page" runat="server" Font-Names="PMingLiU-ExtB" Font-Size="20px" OnClick="sign_up_page_Click">Do not have account? Register</asp:LinkButton>
                            <br />
                            <br />
                            <asp:LinkButton ID="login_btn" runat="server" Font-Names="PMingLiU-ExtB" Font-Size="20px" OnClick="login_btn_Click">Login</asp:LinkButton>
                        </td>
                    </tr>
                    </table>
            </div>
    </form>
</body>
</html>
