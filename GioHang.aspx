<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" Title="Chi tiết giỏ hàng " %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td colspan="3" style="text-align: center">
                <span style="font-size: 14pt; color: #0000ff">Thông tin giỏ hàng của quý khách</span></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
            <td style="width: 100px; height: 21px;">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lblTB" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;<asp:Panel ID="Panel2" runat="server" Width="100%">
                <asp:GridView ID="grdData" runat="server" AutoGenerateColumns ="False" 
        CellPadding ="3" BorderColor ="#CCCCCC" Width="100%" Height="88px" 
        BorderWidth="1px" AllowPaging="True" BorderStyle="None" 
        BackColor="White" OnRowCommand="SuaXoa">
<FooterStyle ForeColor="#000066"  BackColor="White"  />
    <RowStyle ForeColor="#000066" />
<Columns>

<asp:TemplateField  HeaderText="IDSP" Visible="False" >
    <EditItemTemplate>
        <asp:TextBox runat="server"  ID="txtidsp" Text='<% #Bind("IDSP") %>'>
        </asp:TextBox>
    </EditItemTemplate>
    <ItemTemplate>
        <asp:Label ID="lblidsp" runat="server" Text='<% #Bind("IDSP") %>'>
        </asp:Label>
    </ItemTemplate>
</asp:TemplateField>

<asp:BoundField DataField="TenSP" HeaderText ="T&#234;n H&#224;ng" SortExpression ="TenSP"/>
<asp:TemplateField HeaderText ="Số Lượng" SortExpression="SoLuong" >
    <EditItemTemplate >
        <asp:TextBox ID="t1" runat="server" Text ='<% #Bind("SoLuong") %>' Width ="30px">
        </asp:TextBox>
    </EditItemTemplate>
    <ItemTemplate>
        <asp:TextBox ID="txtSoLuong" runat="server" Text ='<% #Bind("SoLuong") %>' Width="30px">
        </asp:TextBox>        
    </ItemTemplate>
    <ItemStyle HorizontalAlign ="Center" Wrap="False" />
</asp:TemplateField>

<asp:TemplateField HeaderText ="Gi&#225; Tiền" SortExpression="SoLuong" >
    <ItemTemplate>
        <asp:Label ID="l3" runat="server" Text ='<% # Eval("Gia","{0:0,000}")+" VND" %>' Width="70px">
        </asp:Label>      
    </ItemTemplate>
    <ItemStyle HorizontalAlign ="Center" Wrap="False" />
</asp:TemplateField>

<asp:TemplateField HeaderText ="Th&#224;nh Tiền" SortExpression="SoLuong" >
    <ItemTemplate>
        <asp:Label ID="l1" runat="server" Text ='<% # Eval("TongTien","{0:0,000}")+" VND" %>' Width="70px">
        </asp:Label>      
    </ItemTemplate>
    <ItemStyle HorizontalAlign ="Center" Wrap="False" />
</asp:TemplateField>

<asp:ButtonField CommandName="Sua" Text="Sửa">

    
<ControlStyle ForeColor="Blue"></ControlStyle>    
</asp:ButtonField>


<asp:ButtonField CommandName="Xoa" Text ="Xo&#225;">
   
</asp:ButtonField>
</Columns>
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
</asp:GridView>
                </asp:Panel>

            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="lblTongTien" runat="server"></asp:Label></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnTiepTuc" runat="server"  Text="Tiếp tục"
                    Width="104px" OnClick="btnTiepTuc_Click" />
                <asp:Button ID="btnXoa" runat="server" Text="Xóa giỏ hàng"
                    Width="104px" OnClick="btnXoa_Click" /></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 20px">
                <asp:Label ID="lblTB2" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 16px">
                <asp:Panel ID="Panel1" runat="server" Width="100%">
                    <table border="0" cellpadding="0" cellspacing="0" style="vertical-align: top; width: 100%;
                        text-align: center">
                        <tr>
                            <td style="width: 100px">
                                <span style="font-size: 13pt; color: #0000ff; background-color: transparent">Gửi đơn
                                    đặt hàng</span></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                Nếu quý khách đã đăng ký, Click để đặt hàng</td>
                        </tr>
                        <tr>
                            <td style="width: 100px" align="center">
                                <asp:Button ID="btnDatHang" runat="server"  Text="Đặt hàng" OnClick="btnDatHang_Click" Width="96px" /></td>
                        </tr>
                    </table>
                    <table style="vertical-align: top; width: 100%; text-align: center" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                Nếu quý khách chưa đăng ký, xin mời đăng ký để đặt hàng.</td>
                        </tr>
                        <tr>
                            <td style="width: 100px" align="center">
                                <asp:Button ID="btnDangKy" runat="server" PostBackUrl="~/DangKy.aspx" Text="Đăng ký" Width="96px" /></td>
                        </tr>
                    </table>
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                        <tr>
                            <td style="width: 100px">
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

