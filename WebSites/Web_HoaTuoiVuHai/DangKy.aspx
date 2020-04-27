<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .Title
    {
        color: #FFFFFF;
        font-size: large;
        background-color: #0000CC;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border-style: groove; border-width: thin; border-color: #C0C0C0;" 
    border="0" cellpadding="1" cellspacing="10" width="100%">
    <tr>
        <td class="Title" colspan="2" align="center">
            Đăng ký thành viên</td>
    </tr>
    <tr>
        <td style="width: 100px; height: 21px; text-align: left; color: #0000CC;">
            Tài Khoản:</td>
        <td style="width: 100px; height: 21px; text-align: left">
            <asp:TextBox ID="tbTaiKhoanDK" runat="server" CssClass="Textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 100px; height: 21px; text-align: left; color: #0000CC;">
            Mật Khẩu:</td>
        <td style="width: 100px; height: 21px; text-align: left">
            <asp:TextBox ID="tbMatKhauDK" runat="server" CssClass="Textbox" 
                TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 160px; height: 21px; text-align: left; color: #0000CC;">
            Nhập Lại Mật Khẩu:</td>
        <td style="width: 100px; height: 21px; text-align: left">
            <asp:TextBox ID="tbNhapLaiMKDK" runat="server" CssClass="Textbox" 
                TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 100px; text-align: left; color: #0000CC;">
            Họ Tên:</td>
        <td style="width: 100px; text-align: left" width="100%">
            <asp:TextBox ID="tbHoTenDK" runat="server" CssClass="Textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 100px; text-align: left; color: #0000CC;">
            Giới Tính:</td>
        <td style="width: 100px; text-align: left">
            <asp:DropDownList ID="ddlGioiTinh" runat="server">
                <asp:ListItem Selected="True" Value="1">Nam</asp:ListItem>
                <asp:ListItem Value="2">Nữ</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 150px; text-align: left; color: #0000CC;">
            Ngày Sinh:</td>
        <td style="width: 150px; text-align: left">
            <asp:DropDownList ID="ddlNgay" runat="server">
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlThang" runat="server">
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="tbNam" runat="server" CssClass="Textbox" Width="40px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 100px; text-align: left; color: #0000CC;">
            Địa Chỉ:</td>
        <td style="width: 100px; text-align: left;">
            <asp:TextBox ID="tbDiaChi" runat="server" CssClass="Textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 100px; text-align: left; color: #0000CC;">
            Email:</td>
        <td style="width: 100px; text-align: left">
            <asp:TextBox ID="tbEmail" runat="server" CssClass="Textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 100px; text-align: left; color: #0000CC;">
            Điện Thoại:</td>
        <td style="width: 100px; text-align: left">
            <asp:TextBox ID="tbDienThoai" runat="server" CssClass="Textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="height: 26px;text-align:center">
            <asp:Button ID="btDangKy" runat="server" CssClass="Button" 
                OnClick="btDangKy_Click" Text="Đăng Ký" />
            &nbsp;<asp:Button ID="btLamLai" runat="server" CssClass="Button" 
                OnClick="Button2_Click" Text="Làm Lại" />
        </td>
    </tr>
</table>
</asp:Content>

