<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<%@ Register src="Controls/TH_DangNhap.ascx" tagname="TH_DangNhap" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 193px;
            color: #FFFFCC;
            margin-right: 6px;
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        Nếu bạn là thành viên của Website, mời bạn đăng nhập. 
        Nếu chưa, bạn hãy đăng ký thành viên để được thực hiện các chức năng của Website!
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DangKy.aspx" 
            CssClass="style13">Bấm vào đây</asp:HyperLink>
&nbsp;<uc1:TH_DangNhap ID="TH_DangNhap2" runat="server" />
        </p>
        <br />
</asp:Content>

