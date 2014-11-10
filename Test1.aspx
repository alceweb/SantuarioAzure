<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Test1.aspx.cs" Inherits="Test1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:FileUpload ID="FileUpload1" AllowMultiple="true" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <asp:Label ID="Label1" runat="server" ></asp:Label>
    <asp:Repeater ID="lista" runat="server" EnableTheming="False" >
        <HeaderTemplate>
            <div>

            </div>
        </HeaderTemplate>
        <ItemTemplate>
                    <img style="margin: 5px; height: 100px; float: left" src='<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
            </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
</asp:Content>

