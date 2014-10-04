<%@ Page Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="ThemLoaiSP.aspx.cs" Inherits="Administrator_ThemLoaiSP" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
    &nbsp;<table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 100%">
        <tr>
            <td align="center" style="width: 100px" valign="top">
                <table>
                    <tr>
                        <td colspan="2">
                            <span style="font-size: 13pt; color: #ff0000">Thêm loại sản phẩm</span></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblTB" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            Tên loại:</td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtTenLoai" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                            <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm" Width="104px" /></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

