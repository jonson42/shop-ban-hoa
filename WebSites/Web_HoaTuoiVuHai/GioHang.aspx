<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style5
        {
            color: #FF0000;
            font-size: x-large;
            background-color: #0000CC;
        }
    .style13
    {
        color: #FFFFCC;
        font-size: large;
        width: 193px;
        height: 43px;
        background-color: #0000CC;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style4">
        <tr>
            <td>
                <table cellpadding="2" cellspacing="10" class="style4" width="100%">
                    <tr>
                        <td class="style13" colspan="2" align="left">
                            Giỏ hàng của bạn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#3366CC" BorderStyle="Groove" BorderWidth="1px" 
                                CellPadding="4" CellSpacing="10" onrowcommand="GridView1_RowCommand" 
                                Width="100%" style="margin-top: 0px">
                                <Columns>
                                    <asp:BoundField DataField="MaHoa" HeaderText="Mã Hoa" />
                                    <asp:BoundField DataField="TenHoa" HeaderText="Tên Hoa" />
                                    <asp:BoundField DataField="Gia" HeaderText="Đơn Giá" />
                                    <asp:TemplateField HeaderText="Số Lượng">
                                        <ItemTemplate>
                                            <asp:Label ID="lblsl" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label>
                                            &nbsp;
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" />
                                </Columns>
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" ForeColor="#003399" />
                                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td style="color: #0000CC; font-size: medium;" align="center">
                            Tổng Cộng</td>
                        <td style="color: #0000CC; font-size: medium;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblTongTien" runat="server"></asp:Label>
                        &nbsp;Vnđ</td>
                    </tr>
                </table>
                <br />
                <table cellpadding="0" cellspacing="0" class="style4">
                    <tr>
                        <td align="center">
                            <asp:Button ID="btnTiepTuc" runat="server" onclick="btnTiepTuc_Click" 
                                Text="Tiếp Tục Mua Hàng" />
                        </td>
                        <td align="center">
                            <asp:Button ID="btnDatHang" runat="server" onclick="btnDatHang_Click" 
                                Text="Đặt Hàng" />
                        </td>
                        <td align="center">
                            <asp:Button ID="btnXoa" runat="server" onclick="btnXoa_Click" 
                                Text="Xóa Giỏ Hàng" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="color: #FF0000; font-size: medium;">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

