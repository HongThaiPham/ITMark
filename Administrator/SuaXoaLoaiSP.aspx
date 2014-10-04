<%@ Page Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="SuaXoaLoaiSP.aspx.cs" Inherits="Administrator_SuaXoaLoaiSP" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
    &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDLoai"
        DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="IDLoai" HeaderText="Mã loại" InsertVisible="False" ReadOnly="True"
                SortExpression="IDLoai" />
            <asp:BoundField DataField="TenLoai" HeaderText="Tên loại" SortExpression="TenLoai" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connect %>"
        DeleteCommand="DELETE FROM [LoaiSP] WHERE [IDLoai] = @IDLoai" InsertCommand="INSERT INTO [LoaiSP] ([TenLoai]) VALUES (@TenLoai)"
        SelectCommand="SELECT * FROM [LoaiSP] ORDER BY [IDLoai]" UpdateCommand="UPDATE [LoaiSP] SET [TenLoai] = @TenLoai WHERE [IDLoai] = @IDLoai">
        <DeleteParameters>
            <asp:Parameter Name="IDLoai" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenLoai" Type="String" />
            <asp:Parameter Name="IDLoai" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="TenLoai" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

