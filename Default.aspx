<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SantuarioAzure._Default" %>
<asp:Content runat="server" ID="HeadContent" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <hr />
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" >
        <ItemTemplate >
            <div runat="server" class="NewsItems" >
                <asp:Label ID="DataLabel" CssClass="NewsData" runat="server" Text='<%# Eval("Data", "{0:dddd dd-MMM-yy}") %>' />
                <br />
                <asp:Label ID="TitoloLabel" CssClass="NewsTitolo" runat="server" Text='<%# Eval("Titolo") %>' />
                <br />
                <a href='News.aspx?ID=<%# Eval("Id") %>' class="NewsA" >
                    <img  class="NewsImg" src='<%# "NewsImg/" + Eval("ID") + "/" + Eval("id") + ".jpg" %>' /></a>
                <br />
                <span>
                <asp:Label ID="DescrizioneBreveLabel" CssClass="NewsDescrizione" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
                      </span>
                <br />
            </div>
        </ItemTemplate>
        <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <div id="itemPlaceholder" runat="server" style="">
                            </div>
                        </div>
        </LayoutTemplate>
        <EmptyItemTemplate>
            <p runat="server" ></p>
        </EmptyItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [News] WHERE ([Pubblica] = @Pubblica)">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="Pubblica" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand='SELECT * FROM [News] WHERE ([Data] &gt; { fn NOW() })'>
            </asp:SqlDataSource>
</asp:Content>
