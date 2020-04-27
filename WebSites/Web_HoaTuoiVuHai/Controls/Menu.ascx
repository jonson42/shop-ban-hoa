<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Menu.ascx.cs" Inherits="Controls_Menu" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style3
    {
        text-decoration: none;
        font-size: large;
    }
    .style4
    {
        text-decoration: none;
        color: #0000CC;
        font-size: large;
    }
    .style5
    {
        color: #FFFFCC;
    }
    </style>

<table cellpadding="0" cellspacing="0" class="style1">
    <tr>
        <td align="center" bgcolor="#99FF33" style="font-size: large">
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style3" 
                NavigateUrl="~/TrangChu.aspx">Trang Chủ</asp:HyperLink>
&nbsp;&nbsp; ||&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style3" 
                NavigateUrl="~/LichSuHinhThanh.aspx">Giới Thiệu</asp:HyperLink>
&nbsp;&nbsp; ||&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="style3" 
                NavigateUrl="~/LienHe.aspx">Liên Hệ</asp:HyperLink>
&nbsp;&nbsp; ||&nbsp;<span class="style5">&nbsp; </span>
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="style4" 
                NavigateUrl="~/HuongDanMuaHang.aspx">Dịch Vụ</asp:HyperLink>
            &nbsp;</td>
    </tr>
</table>

