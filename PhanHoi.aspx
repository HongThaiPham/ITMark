<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PhanHoi.aspx.cs" Inherits="PhanHoi" Title="Phản hồi khách hàng" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
    <table border="0" cellpadding="3" cellspacing="0" style="width: 100%; color: aqua">
        <tr>
            <td colspan="2" style="height: 49px; text-align: center;">
                <span style="font-size: 16pt; color: red">
                Thông tin phản hồi của khách hàng
                </span>
            </td>
        </tr>
        <tr>
            <td style="width: 209px; height: 15px">
            </td>
            <td style="width: 100px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 20px; margin-left: 20px; width: 209px; height: 32px; text-align: right; color: Black;" align="left">
                Họ tên:</td>
            <td style="width: 100px; height: 32px">
                <asp:TextBox ID="txtTen" runat="server" Width="312px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="padding-right: 20px; margin-left: 20px; width: 209px; height: 32px; text-align: right; color: Black;" align="left">
                Email:</td>
            <td style="width: 100px; height: 32px">
                <asp:TextBox ID="txtEmail" runat="server" Width="312px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="padding-right: 20px; margin-left: 20px; width: 209px; height: 32px; text-align: right; color: Black;" align="left">
                Tiêu đề:</td>
            <td style="width: 100px; height: 32px">
                <asp:TextBox ID="txtSubj" runat="server" Width="312px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="padding-right: 20px; margin-left: 20px; width: 209px; height: 119px; color: Black; text-align: top;" align="right" valign="top">
                Nội dung:</td>
            <td style="width: 100px; height: 119px;">
                <asp:TextBox ID="txtNoiDung" runat="server" Height="112px" 
                    TextMode="MultiLine" Width="312px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 209px; height: 53px;">
            </td>
            <td style="width: 100px; height: 53px;">
                <asp:Label ID="lblTB" runat="server" Height="40px" Width="439px" ForeColor="Black"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 209px; height: 32px;">
            </td>
            <td style="width: 100px; height: 32px;">
                <asp:Button ID="btnGui" runat="server" Text="Gửi" Width="101px" OnClick="btnGui_Click" Height="28px" /></td>
        </tr>
    </table>
    <br />
    
</asp:Content>

