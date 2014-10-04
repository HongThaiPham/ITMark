<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietSP.aspx.cs" Inherits="ChiTietSP" Title="Chi tiết sản phẩm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[



// ]]>
</script>
    <span style="color: #0000ff; font-size: 20px;"> Chi tiết sản phẩm </span>  <br /> <br /> <br />
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td align="center" style="width: 100px; height: 15px">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="IDSP" DataSourceID="SqlDataSource1"  Width="100%">
        <ItemTemplate>
            <table border="1" cellpadding="0" cellspacing="0" style="width: 100%" id="TABLE1" onclick="return TABLE1_onclick()">
                <tr>
                    <td  valign="top" align="right"  style="width: 150px; margin-right:5px;">
                        <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl='<%# Eval("Hinh", "~/sanpham/{0}") %>' />
                    </td>
                    
                    <td style="width: 620px; padding-left:10px ;" align="left">
                        <span style="color: #3300ff">Tên sản phẩm: </span><asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label><br />
                        <span style="color: #0000ff">Giá: </span><asp:Label ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>'></asp:Label><br />
                        <span style="color: #0000ff">Còn:</span><asp:Label ID="SoTonLabel" runat="server" Text='<%# Eval("SoTon") %>'></asp:Label><br />
                        <span style="color: #0000ff">Chi tiết sản phẩm: </span><br />
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("ChiTiet") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="right">
                        <asp:ImageButton ID="btnChonMua" runat="server" CommandName='<%#Eval("IDSP") %>' ImageUrl="~/images/chonmua.gif" OnCommand="btnChonMua_Command" />&nbsp;</td>

                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connect %>"
        SelectCommand="SELECT * FROM [SanPham] WHERE ([IDSP] = @IDSP)">
        <SelectParameters>
            <asp:QueryStringParameter Name="IDSP" QueryStringField="IDSP" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

