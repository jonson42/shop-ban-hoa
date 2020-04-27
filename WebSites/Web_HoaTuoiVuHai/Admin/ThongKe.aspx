<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ThongKe.aspx.cs" Inherits="Admin_ThongKe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style7
        {
            color: #0000FF;
        }
        .style8
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span class="style7"><span class="style8">Báo Cáo - Thống Kê</span><br />
    </span>
    <br />
&nbsp;<asp:Button ID="btnDonHang" runat="server" Text="Đơn Hàng" Width="105px" 
        onclick="btnDonHang_Click" />
&nbsp;<asp:Button ID="btnChiTietDonHang" runat="server" Text="Chi Tiết Đơn Hàng" 
        Width="122px" />
&nbsp;<asp:Button ID="btnKhachHang" runat="server" Text="Khách Hàng" 
        Width="116px" />
&nbsp;<asp:Button ID="btnSanPham" runat="server" Text="Sản Phẩm" />
&nbsp;
</asp:Content>

