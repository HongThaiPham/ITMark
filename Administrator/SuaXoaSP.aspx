<%@ Page Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="SuaXoaSP.aspx.cs" Inherits="Administrator_SuaXoaSP" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
    <table>
        <tr>
            <td style="width: 898px">
            </td>
        </tr>
        <tr>
            <td style="width: 898px">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" DataKeyNames="IDSP" DataSourceID="SqlDataSource1"
                    Width="888px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="IDSP" HeaderText="IDSP" InsertVisible="False" ReadOnly="True"
                            SortExpression="IDSP" />
                        <asp:BoundField DataField="IDLoai" HeaderText="IDLoai" SortExpression="IDLoai" />
                        <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                        <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                        <asp:BoundField DataField="SoTon" HeaderText="SoTon" SortExpression="SoTon" />
                        <asp:BoundField DataField="Hinh" HeaderText="Hinh" SortExpression="Hinh" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connect %>"
                    DeleteCommand="DELETE FROM [SanPham] WHERE [IDSP] = @IDSP" InsertCommand="INSERT INTO [SanPham] ([IDLoai], [TenSP], [Gia], [SoTon], [Hinh]) VALUES (@IDLoai, @TenSP, @Gia, @SoTon, @Hinh)"
                    SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [IDLoai] = @IDLoai, [TenSP] = @TenSP, [Gia] = @Gia, [SoTon] = @SoTon, [Hinh] = @Hinh WHERE [IDSP] = @IDSP">
                    <DeleteParameters>
                        <asp:Parameter Name="IDSP" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="IDLoai" Type="Int32" />
                        <asp:Parameter Name="TenSP" Type="String" />
                        <asp:Parameter Name="Gia" Type="Decimal" />
                        <asp:Parameter Name="SoTon" Type="Int32" />
                        <asp:Parameter Name="Hinh" Type="String" />
                        <asp:Parameter Name="IDSP" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="IDLoai" Type="Int32" />
                        <asp:Parameter Name="TenSP" Type="String" />
                        <asp:Parameter Name="Gia" Type="Decimal" />
                        <asp:Parameter Name="SoTon" Type="Int32" />
                        <asp:Parameter Name="Hinh" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

