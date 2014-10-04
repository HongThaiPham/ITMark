<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="ITMARK" %>
<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cphNoiDung">

<%--    <table>
        <tr>
            <td align="center" style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px;
                margin: 3px; vertical-align: top; width: 204%; padding-top: 3px; text-align: left"
                valign="top">--%>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="IDSP" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="780px">
        <ItemTemplate>
          <table  style="width: 260px; height: 150px; border:  #ff9933 solid 1px; ">
          <tr>
             <td style="width: 85px;" align="center" valign="top">
               <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh", "~/sanpham/{0}") %>  ' width="80" height="80" /><br />
                 <br />
                 &nbsp;<asp:ImageButton ID="btnChonMua" runat="server" CommandName='<%#Eval("IDSP") %>' ImageUrl="~/images/chonmua.gif" OnCommand="btnChonMua_Command"/>
                 
             </td>
             
             <td style="width: 180px" align="left" valign="top">
             <%--<div style=" padding-top: 0px; height: 90px; margin-top: 5px; border: #99ff33 solid 0px; ">--%>
               <span style="color: #0000ff"> Tên sản phẩm: </span>
                        <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label><br />
               <span style="color: #0000ff">Giá: </span>
                        <asp:Label ID="GiaLabel" runat="server" Text='<%# Eval("Gia","{0:0,000}")+ " VND" %>'></asp:Label><br />
               <span style="color: #0000ff">Còn: </span><asp:Label ID="SoTonLabel" runat="server" Text='<%# Eval("SoTon") %>'></asp:Label> <br />


             </td>
          </tr>
          
         <tr>
                    <td style=" color: Blue; height: 25px; margin-right: 10px;" align="right" colspan="2" valign="top">
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ChiTietSP.aspx?IDSP="+Eval("IDSP") %>' ForeColor="Red">Xem chi tiết   </asp:HyperLink>
                    </td>
          </tr>
          </table>

        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connect %>"
        SelectCommand="SELECT TOP 12 * FROM [SanPham] ORDER BY NEWID()"></asp:SqlDataSource>
        
 <%--           </td>
        </tr>
    </table>--%>
    
    
</asp:Content>
