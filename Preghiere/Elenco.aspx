﻿<%@ Page Title="Le preghiere dei fedeli" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Elenco.aspx.cs" Inherits="Preghiere_Elenco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script src="../Scripts/ddaccordion.js"></script>
    <script src="../Scripts/jquery-1.2.2.pack.js"></script>
        <style type="text/css">
        .mypets {
            /*header of 1st demo*/
            border-style: none none solid none;
            cursor: pointer;
            padding: 2px 5px;
            border-width: 1px;
            border-color: #FFFFFF;
        }
        .openpet {
            /*class added to contents of 1st demo when they are open*/
            border-style: none solid solid solid;
            background: #938f88;
            text-shadow: 2px 2px 5px #FFFFFF;
        }
        .ImgNews {
            height:150px;
            text-align: center;
            vertical-align: bottom;
            border-radius:4px;
            -webkit-box-shadow: 4px 4px 5px rgba(50, 50, 50, 0.75);
            -moz-box-shadow:    4px 4px 5px rgba(50, 50, 50, 0.75);
            box-shadow:         4px 4px 5px rgba(50, 50, 50, 0.75);

        }
        .Titolo {
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            color: #3D2614;
            text-transform: uppercase;
            text-shadow:2px 2px 5px #FFFFFF;
        }
        .Descrizione {
            font-style: italic;
            font-size:18px;
            color: #3D2614;
        }
        .Data {
            font-weight:bold;
            text-shadow:2px 2px 5px #FFFFFF;
        }
        .DescrizioneLunga {
            font-style: italic;
            width:90%;
            text-align:justify;
        }
        .TdNews {
            border-style: solid none solid none;
            border-width: 1px;
            border-color: #A9A394;
        }
    </style>
<script type="text/javascript">
    ddaccordion.init({
        headerclass: "mypets", //Gruppo di testa
        contentclass: "thepet", //Gruppo contenuto
        revealtype: "click", //Valori ammessi: "click" or "mouseover"
        collapseprev: true, //Valori ammessi: true/false 
        defaultexpanded: [], //indice contenuto di defaule [index1, index2, etc]. [] nessun contenuto.
        onemustopen: false, //Specifica se almeno un contenuto di testa deve essere aperto 
        animatedefault: false, //Should contents open by default be animated into view?
        persiststate: false, //persist state of opened contents within browser session?
        toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
        togglehtml: ["none", "", ""], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
        animatespeed: "fast", //speed of animation: "fast", "normal", or "slow"
        oninit: function (expandedindices) { //custom code to run when headers have initalized
            //do nothing
        },
        onopenclose: function (header, index, state, isuseractivated) { //custom code to run whenever a header is opened or closed
            //do nothing
        }
    })


</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2><%= Title %></h2><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="border-style: solid; border-width: 1px; border-color: #C4B7A7; Border-Radius:10px; background-image: url('<%: ResolveUrl("~/Images/SfondoTabellaNews.png")%>'); background-repeat: repeat">
        <asp:LinkButton ID="ButtonNew" runat="server" Text="Lascia la tua preghiera" PostBackUrl="~/Preghi/Inserisci.aspx" />
        <table style="width:100%">
            <tr>
                <td style="width:250px; vertical-align:top">
                    <img style="border:none; box-shadow:none" src="<%: ResolveUrl("~/Images/Madonna.png")%>" />
                </td>
                <td style="vertical-align:top">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <EmptyDataTemplate>
                <span>Non è stato restituito alcun dato.</span>
            </EmptyDataTemplate>
            <ItemTemplate>
                <div class="mypets">
                    <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server">
                    <asp:Label ID="dataLabel" runat="server" Text='<%# Eval("Data", "{0: dddd dd MMM yyyy}")%>' CssClass="Data" />-
            <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome")%>' CssClass="Nome" />, da  
            <asp:Label ID="CittàLabel" runat="server" Text='<%# Eval("Citta")%>' />

                    </asp:LinkButton></div><div class="thepet" style="border-style: none solid solid solid; border-width: 1px; border-color: #ffffff; border-radius: 0 0 5px 5px">
                <table>
                    <tr>
                         <td style="vertical-align:top; padding: 5px 10px 5px 10px;">
                    <asp:Label ID="PreghieraLabel" runat="server" Text='<%# Eval("Preghiera")%>' CssClass="Preghiera" />
                        </td>
                    </tr>
                </table>
                </div>
            </ItemTemplate>
            <SelectedItemTemplate>
                <div class="mypets" >
                    <asp:Label ID="dataLabel" runat="server" Text='<%# Eval("Data", "{0: dddd dd MMM yyyy}")%>' CssClass="Data" />- <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome")%>' CssClass="Nome" />, da <asp:Label ID="CittàLabel" runat="server" Text='<%# Eval("Citta")%>' />
                </div>
                <div class="thepet" style="border-style: none solid solid solid; border-width: 1px; border-color: #ffffff; border-radius: 0 0 5px 5px">
                <table>
                    <tr>
                         <td style="vertical-align:top; padding: 5px 10px 5px 10px;">
                    <asp:Label ID="PreghieraLabel" runat="server" Text='<%# Eval("Preghiera")%>' CssClass="Preghiera" />
                        </td>
                    </tr>
                </table>
                </div>
            </SelectedItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                </div>
            </LayoutTemplate>
        </asp:ListView>

                </td>
            </tr>
        </table>

        <h1>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
                ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" 
                SelectCommand="SELECT [id], [Nome], [Cognome], [Citta], [Preghiera], [Data] FROM [FedPreg] ORDER BY [Data] DESC">

            </asp:SqlDataSource>
        </h1>
    </div>

</asp:Content>

