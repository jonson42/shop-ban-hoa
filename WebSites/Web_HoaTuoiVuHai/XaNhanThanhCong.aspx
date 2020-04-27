<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="XaNhanThanhCong.aspx.cs" Inherits="XaNhanThanhCong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style10
        {
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Bạn đã đặt hàng thành công, chúng tôi sẽ giao hoa đúng hẹn! Chúc bạn mua hàng 
        vui vẻ!
        Mời bạn tiếp tục mua hoa
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style10" 
            NavigateUrl="~/TrangChu.aspx">bấm vào đây</asp:HyperLink>
        !</p>
    <p>
        &nbsp;</p>
</asp:Content>

