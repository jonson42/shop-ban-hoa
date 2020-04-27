<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DoiMKThanhCong.aspx.cs" Inherits="DoiMKThanhCong" %>
<%@ Register src="Controls/TH_DangNhap.ascx" tagname="TH_DangNhap" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        Thành Công!!!!<br />
        Mời bạn đăng nhập<br />
        <uc1:TH_DangNhap ID="TH_DangNhap2" runat="server" EnableTheming="True" 
            EnableViewState="True" />
     
</asp:Content>

