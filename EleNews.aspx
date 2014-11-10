<%@ Page Title="Eventi e attività" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="EleNews.aspx.cs" Inherits="EleNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%= Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server">Vedi</asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dddd dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                </td>
                <td>
                    <asp:Label ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">Data</th>
                                <th runat="server">Titolo</th>
                                <th runat="server">DescrizioneBreve</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server">Chiudi</asp:LinkButton>
            <img class="NewsImg" style="float:left; margin-right: 20px;" src='<%# "NewsImg/" + Eval("ID") + "/" + Eval("ID") + ".jpg" %>' /></a>
                </td>
                <td>
                    <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [News] ORDER BY [Data] DESC">

    </asp:SqlDataSource>

</asp:Content>

