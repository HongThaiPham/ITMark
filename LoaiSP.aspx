<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoaiSP.aspx.cs" Inherits="LoaiSP" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="IDLoai" DataSourceID="SqlDataSource1" RepeatColumns="3"
        Width="775px">
        <ItemTemplate>
            <table id="TABLE1"  style="width: 260px; height:150px; border:  #ff9933 solid 1px; ">
                <tr>
                    <td align="center" style="width: 85px;" valign="top">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh", "~/sanpham/{0}") %>  ' width="80" height="80" /><br />
                    </td>
                    <td align="left" style="width: 180px;" valign="top">
                        <span style="color: #3300ff">Tên sản phẩm:
                            <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label></span><br />
                        <span style="color: #0000ff">Giá:
                            <asp:Label ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>'></asp:Label></span><br />
                        <span style="color: #000000">Còn:<asp:Label ID="SoTonLabel" runat="server" Text='<%# Eval("SoTon") %>'></asp:Label></span><br />
                        <span style="color: #0000ff">
            <asp:Label ID="IDLoaiLabel" runat="server" Text='<%# Eval("IDLoai") %>' Visible="False"></asp:Label><asp:Label ID="IDSPLabel" runat="server" Text='<%# Eval("IDSP") %>' Visible="False"></asp:Label></span></td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        <asp:ImageButton ID="btnChonMua" runat="server" CommandName='<%#Eval("IDSP") %>'
                            ImageUrl="~/images/chonmua.gif" OnCommand="btnChonMua_Command" />&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connect %>"
        SelectCommand="SELECT SanPham.TenSP, SanPham.Gia, SanPham.SoTon, SanPham.Hinh, LoaiSP.IDLoai, SanPham.IDSP FROM LoaiSP INNER JOIN SanPham ON LoaiSP.IDLoai = SanPham.IDLoai WHERE (LoaiSP.IDLoai = @IDLoai)">
        <SelectParameters>
            <asp:QueryStringParameter Name="IDLoai" QueryStringField="IDLoai" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

