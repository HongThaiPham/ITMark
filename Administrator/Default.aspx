<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Administrator_Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="width: 100%; height: 100%">
    <form id="form1" runat="server">
    <div style="text-align: center; vertical-align: top;">
      <table border="0" cellpadding="0" cellspacing="0" style="text-align: center; width:400px;">
                    <tr>
                        <td colspan="3" style="height: 15px">
                            <span style="color: #0000cc; font-size: 14pt;">Quản trị viên đăng nhập</span></td>
                    </tr>
                    <tr>
                        <td style="width: 14786px; height: 17px;">
                        </td>
                        <td style="width: 2909px; height: 17px;">
                        </td>
                        <td style="width: 25574px; height: 17px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 14786px">
                            <span style="font-size: 13pt">Tên đăng nhập:</span></td>
                        <td style="width: 2909px">
                            <asp:TextBox ID="txtAdmin" runat="server"></asp:TextBox></td>
                        <td style="width: 25574px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdmin"
                                ErrorMessage="Chưa nhập tên đăng nhập"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 14786px">
                            <span style="font-size: 13pt">Password:</span></td>
                        <td style="width: 2909px">
                            <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox></td>
                        <td style="width: 25574px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass"
                                ErrorMessage="Chưa nhập password"></asp:RequiredFieldValidator></td>
                    </tr>
          <tr>
              <td style="width: 14786px">
              </td>
              <td style="width: 2909px">
                  <asp:Label ID="lblTB" runat="server" ForeColor="Red"></asp:Label></td>
              <td style="width: 25574px">
              </td>
          </tr>
                    <tr>
                        <td style="width: 14786px">
                        </td>
                        <td style="width: 2909px">
                            <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" Width="96px" OnClick="btnDangNhap_Click" /></td>
                        <td style="width: 25574px">
                        </td>
                    </tr>
                </table>
    
    </div>
    </form>
</body>
</html>
