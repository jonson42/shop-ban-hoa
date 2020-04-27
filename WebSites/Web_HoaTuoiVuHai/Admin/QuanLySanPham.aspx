<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="QuanLySanPham.aspx.cs" Inherits="Admin_QuanLySanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="MaHoa" DataSourceID="SqlDataSource1" 
        style="margin-bottom: 0px">
        <Columns>
            <asp:BoundField DataField="MaHoa" HeaderText="Mã Hoa" ReadOnly="True" 
                SortExpression="MaHoa" />
            <asp:BoundField DataField="TenHoa" HeaderText="Tên Hoa" 
                SortExpression="TenHoa" />
            <asp:ImageField DataImageUrlField="Hinh" 
                DataImageUrlFormatString="~/{0}" HeaderText="Hình Ảnh" ControlStyle-Width="150px">
            </asp:ImageField>
            <asp:BoundField DataField="Gia" HeaderText="Giá" SortExpression="Gia" />
            <asp:BoundField DataField="MaHang" HeaderText="Mã Hàng" 
                SortExpression="MaHang" />
            <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" 
                HeaderText="Chức Năng" InsertText="Thêm" ShowDeleteButton="True" 
                ShowEditButton="True" UpdateText="Cập Nhật" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        DeleteCommand="DELETE FROM [SanPhamHoa] WHERE [MaHoa] = @MaHoa" 
        InsertCommand="INSERT INTO [SanPhamHoa] ([MaHoa], [TenHoa], [Hinh], [Gia], [MaHang]) VALUES (@MaHoa, @TenHoa, @Hinh, @Gia, @MaHang)" 
        SelectCommand="SELECT * FROM [SanPhamHoa]" 
        UpdateCommand="UPDATE [SanPhamHoa] SET [TenHoa] = @TenHoa, [Hinh] = @Hinh, [Gia] = @Gia, [MaHang] = @MaHang WHERE [MaHoa] = @MaHoa">
        <DeleteParameters>
            <asp:Parameter Name="MaHoa" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaHoa" Type="Int32" />
            <asp:Parameter Name="TenHoa" Type="String" />
            <asp:Parameter Name="Hinh" Type="String" />
            <asp:Parameter Name="Gia" Type="Double" />
            <asp:Parameter Name="MaHang" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenHoa" Type="String" />
            <asp:Parameter Name="Hinh" Type="String" />
            <asp:Parameter Name="Gia" Type="Double" />
            <asp:Parameter Name="MaHang" Type="Int32" />
            <asp:Parameter Name="MaHoa" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

