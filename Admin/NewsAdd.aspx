<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NewsAdd.aspx.cs" Inherits="Admin_NewsAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <h3>Inserimento news</h3>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <InsertItemTemplate>
            <span style="">
                    <div style="width:100%; height:190px">
                        <div style="float:left">
                        <asp:Calendar ID="Calendar1" SelectedDate='<%# Bind("Data") %>' runat="server" BackColor="White" BorderColor="#999999" CellPadding="3" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                        </div><br />
                    <asp:Label ID="TitoloLabel" Width="130px" runat="server" Text="Titolo:"></asp:Label><br />
                    <span style="padding-left:20px"><asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' /></span><br />
                    <asp:Label ID="DescrizioneBreveLabel" Width="130px" runat="server" Text="Descrizione breve:"></asp:Label><br />
                    <span style="padding-left:20px"><asp:TextBox ID="DescrizioneBreveTextBox" runat="server" Text='<%# Bind("DescrizioneBreve") %>' /></style="padding-left:20px">
            <br />
            Pubblica <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                    </div>
                    <br />
            <asp:Label ID="DescrizioneLabel" Width="130px" runat="server" Text="Testo news:"></asp:Label>
            <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Descrizione") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
            <hr />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
            <br /><br />

            </span>

        </InsertItemTemplate>
        <ItemTemplate>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [News] WHERE [Id] = @Id" InsertCommand="INSERT INTO [News] ([Data], [Titolo], [DescrizioneBreve], [Descrizione], [Pubblica]) VALUES (@Data, @Titolo, @DescrizioneBreve, @Descrizione, @Pubblica)" SelectCommand="SELECT * FROM [News]" UpdateCommand="UPDATE [News] SET [Data] = @Data, [Titolo] = @Titolo, [DescrizioneBreve] = @DescrizioneBreve, [Descrizione] = @Descrizione, [Pubblica] = @Pubblica WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="DescrizioneBreve" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="DescrizioneBreve" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

</asp:Content>

