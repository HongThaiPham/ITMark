<%@ Page Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="SuaXoaAdmin.aspx.cs" Inherits="Administrator_SuaXoaAdmin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
        DataSourceID="SqlDataSource1" Width="100%" BorderColor="#FF8000">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connect %>"
        DeleteCommand="DELETE FROM [Admin] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Admin] ([Name], [Pass]) VALUES (@Name, @Pass)"
        SelectCommand="SELECT * FROM [Admin]" UpdateCommand="UPDATE [Admin] SET [Name] = @Name, [Pass] = @Pass WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>


