<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ThemSanPham.aspx.cs" Inherits="Admin_ThemSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style3">
        <tr>
            <td colspan="2" style="color: #0000CC; font-weight: 700; font-size: large">
                Thêm Sản Phẩm</td>
        </tr>
        <tr>
            <td style="color: #0000CC">
                Tên Hoa</td>
            <td align="left">
                <asp:TextBox ID="txtTenHoa" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #0000CC">
                Hình Ảnh</td>
            <td align="left" style="width: 100px" >
                <asp:FileUpload ID="FU_HinhAnh" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="color: #0000CC">
                Giá</td>
            <td align="left">
                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #0000CC">
                Mã Hàng</td>
            <td align="left">
                <asp:TextBox ID="txtMaHang" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FF0000">
                <asp:Label ID="lblThongBao" runat="server"></asp:Label>
            </td>
            <td align="left">
                <asp:Button ID="btnThem" runat="server" onclick="btnThem_Click" Text="Thêm" />
&nbsp;
                <asp:Button ID="btnHuy" runat="server" Text="Hủy" onclick="btnHuy_Click" />
            &nbsp;
                <asp:Button ID="btnTroVe" runat="server" onclick="btnTroVe_Click" 
                    Text="Trở Về" />
            </td>
        </tr>
    </table>
</asp:Content>

