<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TrangChiTietSP.aspx.cs" Inherits="TrangChiTietSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="0" CellSpacing="10" 
        DataKeyField="MaHoa" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table cellpadding="0" cellspacing="0" class="style4">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh") %>' 
                            Width="80%" />
                    </td>
                </tr>
                <tr>
                    <td style="color: #0000CC; font-size: medium;">
                        Mã Sản Phẩm:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaHoa") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="color: #0000CC; font-size: medium;">
                        Tên Sản Phẩm:
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="color: #0000CC; font-size: medium;">
                        Giá:
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                        &nbsp;Vnđ</td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/GioHang.aspx?MaHoa="+Eval("MaHoa") %>' runat="server" 
                            ImageUrl="~/HinhChucNang/muahang.gif">HyperLink</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        SelectCommand="SELECT * FROM [SanPhamHoa] WHERE ([MaHoa] = @MaHoa)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaHoa" QueryStringField="MaHoa" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

