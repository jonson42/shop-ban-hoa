<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MenuAdmin.ascx.cs" Inherits="Admin_Controls2_MenuAdmin" %>
<style type="text/css">
    .style1
    {
        width: 100%;
        font-size: medium;
    }
    .style3
    {
        text-decoration: none;
        font-size: medium;
    }
    .style5
    {
        text-decoration: none;
    }
    .style6
    {
        color: #FF0000;
    }
</style>

<table cellpadding="0" cellspacing="0" class="style1">
    <tr>
        <td align="center" style="color: #FFFFFF; background-color: #66FF33">
            <asp:HyperLink ID="HyperLink6" runat="server" CssClass="style5" 
                NavigateUrl="~/Admin/TrangChuAdmin.aspx">Trang Chủ</asp:HyperLink>
&nbsp;<span class="style6">&nbsp;||&nbsp;</span>&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/Admin/QuanLyDonHang.aspx" CssClass="style3">Quản Lý Đơn Hàng</asp:HyperLink>
            &nbsp;<span class="style6"> ||&nbsp;</span>
            <asp:HyperLink ID="HyperLink5" runat="server" CssClass="style5" 
                NavigateUrl="~/Admin/QuanLyChiTietDonHang.aspx">Quản Lý Chi Tiết Đơn Hàng</asp:HyperLink>
            &nbsp;<span class="style6"> ||&nbsp;</span>
            <asp:HyperLink ID="HyperLink2" runat="server" 
                NavigateUrl="~/Admin/QuanLyKhachHang.aspx" CssClass="style3">Quản Lý Khách Hàng</asp:HyperLink>
            &nbsp;<span class="style6"> ||&nbsp;</span>
            <asp:HyperLink ID="HyperLink4" runat="server" 
                NavigateUrl="~/Admin/QuanLySanPham.aspx" CssClass="style3">Quản Lý Sản Phẩm</asp:HyperLink>
            &nbsp;<span class="style6"> || </span>
            <asp:HyperLink ID="HyperLink3" runat="server" 
                NavigateUrl="~/Admin/ThemSanPham.aspx" CssClass="style3">Thêm Sản Phẩm</asp:HyperLink>
            &nbsp;</td>
    </tr>
</table>

