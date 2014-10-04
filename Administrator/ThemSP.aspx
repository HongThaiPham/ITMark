<%@ Page Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="ThemSP.aspx.cs" Inherits="Administrator_ThemSP" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td colspan="3" style="height: 15px; text-align: center">
                <span style="font-size: 20pt; color: #0000ff">
                Thêm sản phẩm mới</span></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="lblTB" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px ; padding-right: 10px; height: 66px;" align="right" >
                Loại sản phẩm</td>
            <td style="width: 100px; height: 66px;">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
                    DataTextField="TenLoai" DataValueField="IDLoai"
                    Width="200px" BorderColor="#FF8000">
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connect %>"
                    SelectCommand="SELECT * FROM [LoaiSP] ORDER BY [IDLoai]"></asp:SqlDataSource>
            </td>
            <td style="width: 100px; height: 66px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px ; padding-right: 10px; height: 32px;" align="right">
                Tên sản phẩm</td>
            <td style="width: 100px; height: 32px;">
                <asp:TextBox ID="txtTenSP" runat="server" Width="344px" BorderColor="#FF8000"></asp:TextBox></td>
            <td style="width: 100px; height: 32px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px ; padding-right: 10px; height: 53px;" align="right">
                Chi tiết sản phẩm</td>
            <td style="width: 100px; height: 53px;">
                <asp:TextBox ID="txtChiTietSP" runat="server" TextMode="MultiLine" Width="344px" BorderColor="#FF8000"></asp:TextBox></td>
            <td style="width: 100px; height: 53px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px;  padding-right: 10px; height: 33px;" align="right">
                Số lượng</td>
            <td style="width: 100px; height: 33px;">
                <asp:TextBox ID="txtSoLuong" runat="server" Width="144px" BorderColor="#FF8000"></asp:TextBox></td>
            <td style="width: 100px; height: 33px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; padding-right: 10px; height: 30px;" align="right">
                Giá</td>
            <td style="width: 100px; height: 30px;">
                <asp:TextBox ID="txtGia" runat="server" Width="144px" BorderColor="#FF8000"></asp:TextBox></td>
            <td style="width: 100px; height: 30px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px ; padding-right: 10px; height: 29px;" align="right">
                Hình ảnh</td>
            <td style="width: 100px; height: 29px;">
                <asp:FileUpload ID="FileUploadHinhSP" runat="server" BorderColor="#FF8000"/></td>
            <td style="width: 100px; height: 29px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px" align="right">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 23px;" align="right">
            </td>
            <td style="width: 100px; height: 23px;">
                <asp:Button ID="btnThem" runat="server" Text="Thêm mới" Width="120px" Height="29px" OnClick="btnThem_Click" /></td>
            <td style="width: 100px; height: 23px;">
            </td>
        </tr>
    </table>
</asp:Content>

