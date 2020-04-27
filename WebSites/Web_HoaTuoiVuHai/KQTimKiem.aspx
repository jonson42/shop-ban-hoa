<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="KQTimKiem.aspx.cs" Inherits="KQTimKiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style9
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="0" CellSpacing="10" 
        DataKeyField="MaHoa" RepeatColumns="3">
        <ItemTemplate>
            <br />
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh") %>' 
                            Width="80%" />
                    </td>
                </tr>
                <tr>
                    <td style="color: #0000CC; font-size: medium;" class="style9">
                        Tên Sản Phẩm:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="color: #0000CC; font-size: medium;">
                        Giá:
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            ImageUrl="~/HinhChucNang/chitiet.gif" NavigateUrl='<%#
                                String.Concat("TrangChiTietSP.aspx?MaHoa=", Eval("MaHoa")) %>'>HyperLink</asp:HyperLink>
                        &nbsp;<asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/GioHang.aspx?MaHoa="+Eval("MaHoa") %>' runat="server" 
                            ImageUrl="~/HinhChucNang/chonmua.gif">HyperLink</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        
        SelectCommand="SELECT [TenHoa], [Hinh], [Gia] FROM [SanPhamHoa] WHERE ([Gia] = @Gia)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DataList1" Name="Gia" 
                PropertyName="SelectedValue" Type="Double" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblThongBao" runat="server" 
        style="color: #FF0000; font-size: xx-large;"></asp:Label>
    <br />
</asp:Content>

