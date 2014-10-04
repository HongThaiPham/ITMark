<%@ Page Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="ThemAdmin.aspx.cs" Inherits="Administrator_ThemAdmin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td style="width: 100px; text-align: left; padding-left: 20px ; ">
                <span style="font-size: 20pt; color: #0000ff ">Thêm quản trị viên<br />
                    <br />
                    <br />
                </span></td>
        </tr>
        
        <tr>
            <td style="width: 100px; height: 15px">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left: 20px; width: 15% ; height: 25px; ">
                            Tên đăng nhập</td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtTen" runat="server" Width="170px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left: 20px; width: 15%; height: 35px;">
                            Password</td>
                        <td style="width: 100px; height: 35px;">
                            <asp:TextBox ID="txtPass" runat="server" Width="170px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
                        <td style="width: 100px; height: 35px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 41px;">
                        </td>
                        <td style="width: 100px; height: 41px;">
                            <asp:Label ID="lblTB" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label></td>
                        <td style="width: 100px; height: 41px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 24px;">
                        </td>
                        <td style="width: 100px; height: 24px;">
                            <asp:Button ID="btnThem" runat="server" Text="Thêm" Width="166px" OnClick="btnThem_Click" Height="34px"  /></td>
                        <td style="width: 100px; height: 24px;">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

