<%@ Control Language="C#" AutoEventWireup="true" CodeFile="loadGioHang.ascx.cs" Inherits="Controls_loadGioHang" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>

<table cellpadding="0" cellspacing="0" class="style1">
    <tr>
        <td align="center" colspan="2" style="color: #0000CC">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/GioHang.aspx">GIỎ HÀNG CỦA BẠN</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/HinhChucNang/Cart.png" />
        </td>
        <td style="color: #FF0000">
            Số Lượng:
            <asp:Label ID="lblHoa" runat="server">0</asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Image ID="Image2" runat="server" Height="74px" 
                ImageUrl="~/HinhChucNang/tien.jpg" Width="77px" />
        </td>
        <td style="color: #FF0000">
            Tổng Tiền:
            <asp:Label ID="lblTongTien" runat="server">0</asp:Label>
        </td>
    </tr>
</table>

