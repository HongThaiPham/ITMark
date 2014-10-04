<%@ Page Language="C#" MasterPageFile="~/Administrator/MasterPage.master" AutoEventWireup="true" CodeFile="PhanHoiKH.aspx.cs" Inherits="Administrator_PhanHoiKH" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNoiDung" Runat="Server">
    <span style="font-size: 15pt; vertical-align: middle; color: #0000ff"></span>
    <table>
        <tr>
            <td align="center" style="width: 100px; height: 15px" valign="middle">
                <span style="font-size: 15pt; color: #0000ff">Trang thông tin phản hồi của khách hàng</span></td>
        </tr>
        <tr>
            <td align="center" style="width: 100px" valign="middle">
                <span style="font-size: 15pt; color: #0000ff"></span>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" BorderStyle="Solid" BorderWidth="1px" DataSourceID="SqlDataSource1"
                    Width="1048px" DataKeyNames="IDPH">
                    <Columns>
                        <asp:CommandField AccessibleHeaderText="X&#243;a" DeleteText="X&#243;a" ShowDeleteButton="True" />
                        <asp:BoundField DataField="IDPH" HeaderText="IDPH" InsertVisible="False" ReadOnly="True"
                            SortExpression="IDPH" />
                        <asp:BoundField DataField="HoTen" HeaderText="Họ t&#234;n" SortExpression="HoTen" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="TieuDe" HeaderText="Ti&#234;u đề" SortExpression="TieuDe" />
                        <asp:BoundField DataField="NoiDung" HeaderText="Nội dung" SortExpression="NoiDung" />
                    </Columns>
                    <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connect %>"
                    SelectCommand="SELECT * FROM [PhanHoi] ORDER BY [IDPH]" DeleteCommand="DELETE FROM [PhanHoi] WHERE [IDPH] = @IDPH" InsertCommand="INSERT INTO [PhanHoi] ([HoTen], [Email], [TieuDe], [NoiDung]) VALUES (@HoTen, @Email, @TieuDe, @NoiDung)" UpdateCommand="UPDATE [PhanHoi] SET [HoTen] = @HoTen, [Email] = @Email, [TieuDe] = @TieuDe, [NoiDung] = @NoiDung WHERE [IDPH] = @IDPH">
                    <DeleteParameters>
                        <asp:Parameter Name="IDPH" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="HoTen" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="TieuDe" Type="String" />
                        <asp:Parameter Name="NoiDung" Type="String" />
                        <asp:Parameter Name="IDPH" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="HoTen" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="TieuDe" Type="String" />
                        <asp:Parameter Name="NoiDung" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

