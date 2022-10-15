﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_order.aspx.cs" Inherits="PizzaOrderSystem.view_order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AutoGenerateDeleteButton="True">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                    <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="postalcode" HeaderText="postalcode" SortExpression="postalcode" />
                    <asp:BoundField DataField="contactno" HeaderText="contactno" SortExpression="contactno" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [pizzaorder]"
                DeleteCommand="Delete from [pizzaorder] Where [Id]=@Id"
            ></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>