<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DatHang.aspx.cs" Inherits="DatHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style5
        {
            color: #FF0000;
            font-size: x-large;
            background-color: #0000CC;
        }
    .Textbox{
border-color:#AEAEAE;
border-style:solid;
border-width:2px 1px 1px 2px;
font-family:Arial,Times New Roman,Tahoma,Verdana;
font-size:10pt;
padding-bottom:3px;
padding-top:2px;
}
        .style6
        {
            width: 171px;
            height: 28px;
        }
        .style7
        {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" cellspacing="10" class="style4" width="100%">
        <tr>
            <td class="style5" align="left">
                            Giỏ Hàng Của
                            Bạn</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="Groove" BorderWidth="1px" 
                    CellPadding="4" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="MaHoa" HeaderText="Mã Hoa" />
                        <asp:BoundField DataField="TenHoa" HeaderText="Tên Hoa" />
                        <asp:BoundField DataField="Gia" HeaderText="Đơn Giá" />
                        <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" />
                        <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" />
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label>
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:GridView>
            </td>
        </tr>
        </table>
    <table cellpadding="0" cellspacing="0" class="style4">
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: left; color: #0000CC;" class="style6">
                            Địa Chỉ Giao Hàng:</td>
                        <td style="text-align: left" class="style7">
                            <asp:TextBox ID="tbDCGH" runat="server" Width="195px" CssClass="Textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 171px; text-align: left; color: #0000CC;">
                            Thời Gian Giao Hàng(số ngày):</td>
                        <td style="text-align: left;">
                            <asp:TextBox ID="tbTGGH" runat="server" Width="195px" CssClass="Textbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 171px; text-align: left; color: #0000CC;">
                            Ghi Chú Khác:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="tbGCK" runat="server" Width="193px" CssClass="Textbox"></asp:TextBox></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <asp:Label ID="lblThongBao" runat="server" 
        style="font-size: large; color: #FF0000"></asp:Label>
    <br />
    <asp:Button ID="btnGuiDonHang" runat="server" onclick="btnGuiDonHang_Click" 
        Text="Gửi Đơn Hàng" />
&nbsp;<asp:Button ID="btnHuyDonHang" runat="server" onclick="btnHuyDonHang_Click" 
        Text="Hủy Đơn Hàng" />
    <br />
</asp:Content>

