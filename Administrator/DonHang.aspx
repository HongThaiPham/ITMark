<%@ Page Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="DonHang.aspx.cs" Inherits="Administrator_DonHang" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
<%--<asp:GridView ID="grdData" runat="server" AutoGenerateColumns ="False" 
        CellPadding ="3" BorderColor ="#CCCCCC" Width="100%" Height="88px" 
        BorderWidth="1px" AllowPaging="True" BorderStyle="None" 
        BackColor="White" OnRowCommand="ChiTiet" DataKeyNames="IDDonHang" DataSourceID="SqlDataSource1">
<FooterStyle ForeColor="#000066"  BackColor="White"  />
    <RowStyle ForeColor="#000066" />
<Columns>
    <asp:BoundField DataField="IDDonHang" HeaderText="IDDonHang" InsertVisible="False"
        ReadOnly="True" SortExpression="IDDonHang" />
    <asp:BoundField DataField="TenKhach" HeaderText="TenKhach" SortExpression="TenKhach" />
    <asp:BoundField DataField="NgayDat" HeaderText="NgayDat" SortExpression="NgayDat" />
    <asp:ButtonField CommandName="ChiTiet" Text="Chi tiết" />
    

</Columns>
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connect %>"
        SelectCommand="SELECT * FROM [DonHang]"></asp:SqlDataSource>
    <br />--%>
    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="IDDonHang" DataSourceID="SqlDataSource2" RepeatColumns="3" Width="100%">
        <ItemTemplate>
            Mã đơn hàng:
            <asp:Label ID="IDDonHangLabel" runat="server" Text='<%# Eval("IDDonHang") %>'></asp:Label>
            <br />
            Tên khách hàng:
            <asp:Label ID="TenKhachLabel" runat="server" Text='<%# Eval("TenKhach") %>'></asp:Label>
            <br />
            Ngày đặt hàng:
            <asp:Label ID="NgayDatLabel" runat="server" Text='<%# Eval("NgayDat") %>'></asp:Label><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ChiTietDH.aspx?IDDonHang=" + Eval("IDDonHang") %>'>Chi tiết đơn hàng</asp:HyperLink>
        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Connect %>"
        SelectCommand="SELECT * FROM [DonHang] ORDER BY [NgayDat] DESC"></asp:SqlDataSource>
</asp:Content>

