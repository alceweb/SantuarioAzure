<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
<table>
    <tr>
        <td rowspan="2">
            uno rows
        </td>
        <td>
            uno
        </td>
        <td>
            sdff
        </td>
    </tr>
    <tr>
        <td>
            dur
        </td>
    </tr>
</table>
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="uno" Value="uno"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand='SELECT * FROM [News] WHERE ([Data] = Now())'>
            </asp:SqlDataSource>
    </form>
</body>
</html>
