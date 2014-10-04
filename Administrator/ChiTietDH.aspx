<%@ Page Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietDH.aspx.cs" Inherits="Administrator_ChiTietDH" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
    &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDDonHang,IDSP"
        DataSourceID="SqlDataSource2" Width="100%">
        <Columns>
            <asp:BoundField DataField="IDDonHang" HeaderText="M&#227; đơn h&#224;ng" ReadOnly="True" SortExpression="IDDonHang">
                <ItemStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="IDSP" HeaderText="M&#227; sản phẩm" ReadOnly="True" SortExpression="IDSP" >
                <ItemStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="TenSP" HeaderText="T&#234;n sản phẩm" SortExpression="TenSP" >
                <ItemStyle Width="600px" />
            </asp:BoundField>
            <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" SortExpression="SoLuong" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Connect %>"
        SelectCommand="SELECT ChiTietDonHang.IDDonHang, ChiTietDonHang.IDSP, SanPham.TenSP, ChiTietDonHang.SoLuong FROM ChiTietDonHang INNER JOIN SanPham ON ChiTietDonHang.IDSP = SanPham.IDSP WHERE (ChiTietDonHang.IDDonHang = @IDDonHang)">
        <SelectParameters>
            <asp:QueryStringParameter Name="IDDonHang" QueryStringField="IDDonHang" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

