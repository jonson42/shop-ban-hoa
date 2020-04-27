<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DoiMK.aspx.cs" Inherits="DoiMK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td bgcolor="#6600FF" colspan="2" style="color: #FFFFFF" align="center">
                ĐỔI MẬT KHẨU&nbsp;</td>
        </tr>
        <tr>
            <td>
                Tên Đăng Nhập</td>
            <td>
                <asp:TextBox ID="txtTenDN" runat="server" Width="174px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rftendn" runat="server" 
                    ControlToValidate="txtTenDN" ErrorMessage="Chưa nhập tên" 
                    >(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Mật Khẩu&nbsp;</td>
            <td>
                <asp:TextBox ID="txtMKhau" runat="server" Width="171px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Chưa nhập mật khẩu" ControlToValidate="txtMKhau">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                Mật Khẩu Mới</td>
            <td>
                <asp:TextBox ID="txtMKhaumoi" runat="server" Width="165px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="nhập mật khẩu mới" ControlToValidate="txtMKhaumoi">(*)</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Nhập Lại Mật Khẩu Mới&nbsp;</td>
            <td>
                <asp:TextBox ID="txtNLaiMK" runat="server" Width="167px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="NHẬP lại mật khẩu" ControlToValidate="txtNLaiMK">(*)</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvmknhaplai" runat="server" 
                    ControlToCompare="txtMKhaumoi" ControlToValidate="txtNLaiMK" 
                    ErrorMessage="Mật khẩu nhập lại không đúng">(*)</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Đồng ý" Width="70px" 
                        onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Label ID="lblloi" runat="server" ></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

