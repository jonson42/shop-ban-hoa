<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="QuanLyKhachHang.aspx.cs" Inherits="Admin_Controls2_QuanLyKhachHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="1" 
        DataKeyNames="MaKH" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="50%" 
        style="font-size: small">
        <Columns>
            <asp:BoundField DataField="MaKH" HeaderText="Mã Khách Hàng" ReadOnly="True" 
                SortExpression="MaKH" />
            <asp:BoundField DataField="Ten" HeaderText="Tên Khách Hàng" 
                SortExpression="Ten" />
            <asp:CheckBoxField DataField="GioiTinh" HeaderText="Giới Tính" 
                SortExpression="GioiTinh" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" 
                SortExpression="DiaChi" />
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" 
                SortExpression="NgaySinh" />
            <asp:BoundField DataField="DienThoai" HeaderText="Điện Thoại" 
                SortExpression="DienThoai" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="TenTaiKhoan" HeaderText="Tên Tài Khoản" 
                SortExpression="TenTaiKhoan" />
            <asp:BoundField DataField="MatKhau" HeaderText="Mật Khẩu" 
                SortExpression="MatKhau" />
            <asp:BoundField DataField="Quyen" HeaderText="Quyền" SortExpression="Quyen" />
            <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" 
                HeaderText="Chức năng" ShowDeleteButton="True" ShowEditButton="True" 
                UpdateText="Cập Nhật" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" 
        InsertCommand="INSERT INTO [KhachHang] ([MaKH], [Ten], [GioiTinh], [DiaChi], [NgaySinh], [DienThoai], [Email], [TenTaiKhoan], [MatKhau], [Quyen]) VALUES (@MaKH, @Ten, @GioiTinh, @DiaChi, @NgaySinh, @DienThoai, @Email, @TenTaiKhoan, @MatKhau, @Quyen)" 
        SelectCommand="SELECT * FROM [KhachHang]" 
        UpdateCommand="UPDATE [KhachHang] SET [Ten] = @Ten, [GioiTinh] = @GioiTinh, [DiaChi] = @DiaChi, [NgaySinh] = @NgaySinh, [DienThoai] = @DienThoai, [Email] = @Email, [TenTaiKhoan] = @TenTaiKhoan, [MatKhau] = @MatKhau, [Quyen] = @Quyen WHERE [MaKH] = @MaKH">
        <DeleteParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="Boolean" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="NgaySinh" Type="DateTime" />
            <asp:Parameter Name="DienThoai" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="TenTaiKhoan" Type="String" />
            <asp:Parameter Name="MatKhau" Type="String" />
            <asp:Parameter Name="Quyen" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="GioiTinh" Type="Boolean" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="NgaySinh" Type="DateTime" />
            <asp:Parameter Name="DienThoai" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="TenTaiKhoan" Type="String" />
            <asp:Parameter Name="MatKhau" Type="String" />
            <asp:Parameter Name="Quyen" Type="Int32" />
            <asp:Parameter Name="MaKH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

