<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" Title="Đăng ký thành viên" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="padding-right: 3px; padding-left: 3px;
        padding-bottom: 3px; margin: 3px; width: 100%; padding-top: 3px;">
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td align="left" colspan="3" style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px;
                margin: 3px; width: 165px; padding-top: 3px; height: 15px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <br />
                <asp:Label ID="lblTB" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td align="center" colspan="3" style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px;
                margin: 3px; width: 165px; padding-top: 3px; height: 15px">
                <span style="font-size: 13pt; color: #ff0000"><strong style="float: left; font-size: 20px;">Thông tin đăng ký thành viên</strong></span></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
                <span style="font-size: 13pt; color: #0000ff;">Tên đăng nhập:</span></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:TextBox ID="txtTen" runat="server" Width="216px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTen"
                    ErrorMessage="Tên đăng nhập không được để trống" Width="208px">*</asp:RequiredFieldValidator></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
                <span style="font-size: 13pt; color: #0000ff;">Email:</span></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:TextBox ID="txtEmail" runat="server" Width="216px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email không hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
                <span style="font-size: 13pt; color: #0000ff;">Password:</span></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="216px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass"
                    ErrorMessage="Pasword không được để trống">*</asp:RequiredFieldValidator></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
                <span style="font-size: 13pt; color: #0000ff;">Nhập lại :</span></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:TextBox ID="txtRepass" runat="server" TextMode="Password" Width="216px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass"
                    ControlToValidate="txtRepass" ErrorMessage="Password không trùng nhau">*</asp:CompareValidator></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td align="center" colspan="3" style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px;
                margin: 3px; width: 165px; padding-top: 3px; height: 15px">
                <span style="font-size: 13pt; color: #ff0000"><strong style="float: left; font-size: 20px;">Thông tin cá nhân</strong></span></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px; padding-top: 3px; height: 15px" colspan="3">
                <span style="color: #0000ff">Nhập đầy đủ thông tin để chúng tôi có thể giao hàng đúng
                    nơi.</span></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
                <span style="font-size: 13pt; color: #0000ff;">Họ tên:</span></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:TextBox ID="txtHoTen" runat="server" Width="216px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtHoTen"
                    ErrorMessage="Chưa nhập họ tên.">*</asp:RequiredFieldValidator></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px; vertical-align: top;">
                <span style="font-size: 13pt; color: #0000ff; ">Địa chỉ:</span></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:TextBox ID="txtDiaChiDK" runat="server" Height="48px" TextMode="MultiLine" Width="216px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDiaChiDK"
                    ErrorMessage="Chưa nhập địa chỉ.">*</asp:RequiredFieldValidator></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
                <span style="font-size: 13pt; color: #0000ff;">Số điện thoại:</span></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:TextBox ID="txtSoDT" runat="server" Width="216px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSoDT"
                    ErrorMessage="Chưa nhập số điện thoại.">*</asp:RequiredFieldValidator></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
                <span style="font-size: 13pt; color: #0000ff;">Nghề nghiệp:</span></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:TextBox ID="txtNgheNghiep" runat="server" Width="216px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
                <span style="font-size: 13pt; color: #0000ff;">Mã xác nhận:</span></td>
            <td align="left" style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px;
                margin: 3px; width: 165px; padding-top: 3px; height: 15px">
                <asp:TextBox ID="txtMaXacNhan" runat="server" ReadOnly="True" Width="150px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
                <span style="font-size: 13pt; color: #ff0000">Nhập mã xác nhận:</span></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:TextBox ID="txtMaXN" runat="server" Width="150px" BorderColor="#C04000" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtMaXacNhan"
                    ControlToValidate="txtMaXN" ErrorMessage="Xã xác nhận không đúng">*</asp:CompareValidator></td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td colspan="3" style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px;
                margin: auto; width: 165px; padding-top: 3px; height: 15px">
                <asp:CheckBox ID="cboCheck" runat="server" Font-Size="Large" ForeColor="Blue" Text="Tôi đồng ý với các quy định của công ty" />
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
        <tr>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 153px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 194px; padding-top: 3px; height: 15px">
                </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px" align="center">
                <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" Width="90px" OnClick="btnDangKy_Click" Height="30px" />
                &nbsp;&nbsp;&nbsp;
                </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
            <td style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; margin: 3px;
                width: 165px; padding-top: 3px; height: 15px">
            </td>
        </tr>
    </table>
</asp:Content>

