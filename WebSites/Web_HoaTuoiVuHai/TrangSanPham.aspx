<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TrangSanPham.aspx.cs" Inherits="TrangSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="0" CellSpacing="10" 
        DataKeyField="MaHoa" DataSourceID="SqlDataSource1" RepeatColumns="3">
        <ItemTemplate>
            <table cellpadding="0" cellspacing="0" class="style4">
                <tr>
                    <td>
                    
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh") %>' 
                            Width="230px" Height="230px" CssClass="margin-left:50px" />
                    </td>
                </tr>
                <tr>
                    <td style="color: #0000CC; font-size: small;">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="color: #0000CC; font-size: small;">
                        Giá:
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                        &nbsp;Vnđ</td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# String.Concat("TrangSanPham.aspx?MaHang=", Eval("MaHang")) %>'  runat="server" >
                              <asp:Image runat="server" ID="imgThumbnail" Width="100px"
                                    
                            ImageUrl="~/HinhChucNang/chitiet.gif" ></asp:Image></asp:HyperLink>
                        &nbsp;
                        <asp:HyperLink ID="HyperLink2" 
                            NavigateUrl='<%# "~/GioHang.aspx?MaHoa="+Eval("MaHoa") %>' runat="server">
                           <asp:Image runat="server" ID="imgThumbnail2" Width="100px" ImageUrl="~/HinhChucNang/chonmua.gif" /></asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        SelectCommand="SELECT * FROM [SanPhamHoa] WHERE ([MaHang] = @MaHang)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaHang" QueryStringField="MaHang" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

