<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="QuanLyChiTietDonHang.aspx.cs" Inherits="Admin_QuanLyChiTietDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaCTHD" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="MaCTHD" HeaderText="Mã CTHD" ReadOnly="True" 
                SortExpression="MaCTHD" />
            <asp:BoundField DataField="SoHD" HeaderText="Số HD" SortExpression="SoHD" />
            <asp:BoundField DataField="MaHoa" HeaderText="Mã Hoa" SortExpression="MaHoa" />
            <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" 
                SortExpression="SoLuong" />
            <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá" 
                SortExpression="DonGia" />
            <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" 
                SortExpression="ThanhTien" />
            <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" 
                HeaderText="Chức Năng" ShowDeleteButton="True" ShowEditButton="True" 
                UpdateText="Cập Nhật" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        DeleteCommand="DELETE FROM [ChiTietDonDatHang] WHERE [MaCTHD] = @MaCTHD" 
        InsertCommand="INSERT INTO [ChiTietDonDatHang] ([MaCTHD], [SoHD], [MaHoa], [SoLuong], [DonGia], [ThanhTien]) VALUES (@MaCTHD, @SoHD, @MaHoa, @SoLuong, @DonGia, @ThanhTien)" 
        SelectCommand="SELECT * FROM [ChiTietDonDatHang]" 
        UpdateCommand="UPDATE [ChiTietDonDatHang] SET [SoHD] = @SoHD, [MaHoa] = @MaHoa, [SoLuong] = @SoLuong, [DonGia] = @DonGia, [ThanhTien] = @ThanhTien WHERE [MaCTHD] = @MaCTHD">
        <DeleteParameters>
            <asp:Parameter Name="MaCTHD" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaCTHD" Type="Int32" />
            <asp:Parameter Name="SoHD" Type="Int32" />
            <asp:Parameter Name="MaHoa" Type="Int32" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="DonGia" Type="Double" />
            <asp:Parameter Name="ThanhTien" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SoHD" Type="Int32" />
            <asp:Parameter Name="MaHoa" Type="Int32" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="DonGia" Type="Double" />
            <asp:Parameter Name="ThanhTien" Type="Double" />
            <asp:Parameter Name="MaCTHD" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

