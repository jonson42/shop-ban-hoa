<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_DangNhap.ascx.cs" Inherits="TheHien_DangNhap" %>
<style type="text/css">
    .style1
    {
        text-decoration: none;
    }
</style>
<table style="border-collapse: collapse" border="1" >
    <tr>
        <td class="Title" 
            style="width: 206px; height: 33px; font-size: large; color: #0000CC; background-image: url('HinhChucNang/HinhControls.jpg');" 
            align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;Đăng Nhập</td>
    </tr>
    <tr>
        <td style="width: 220px">
            <asp:Panel ID="pnDangNhap" runat="server" Width="220px">
                <table style="width: 100%; background-color: #66FF33;" bgcolor="#CCFF66">
                    <tr>
                        <td style="width: 127px">
                            Tài Khoản:</td>
                        <td style="width: 48px">
                            <asp:TextBox ID="tbTenDN" CssClass="Textbox" runat="server" Width="120px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 127px; height: 26px">
                            Mật Khẩu:</td>
                        <td style="width: 48px; height: 26px">
                            <asp:TextBox ID="tbMatKhau" runat="server" CssClass="Textbox" TextMode="Password" Width="120px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Button CssClass ="Button" ID="btDangNhap" runat="server"  OnClick="btDangNhap_Click" Text="Đăng Nhập" />
                            <br />
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DangKy.aspx" 
                                style="font-style: italic" CssClass="style1">Đăng ký tài khoản</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="pnThoat" runat="server" Visible="False" Width="220px" 
                BackColor="#CCFF66" style="background-color: #66FF33">
                <table>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lbLoiChao" runat="server" Text="LoiChao"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:HyperLink ID="HyperLink3" runat="server" Height="10px" 
                                ImageUrl="~/HinhChucNang/Cart.png" NavigateUrl="~/GioHang.aspx" Width="10px"></asp:HyperLink>
                        </td>
                        <td style="width: 100px; color: #66FF33; background-color: #66FF33;" 
                            bgcolor="#CCFF33">
                            <asp:Button CssClass="Button" ID="btThoat" runat="server" OnClick="btThoat_Click" Text="Thoát" />
                            <br />
                            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="style1" 
                                NavigateUrl="~/DoiMK.aspx" style="font-style: italic">Đổi mật khẩu</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    </table>
