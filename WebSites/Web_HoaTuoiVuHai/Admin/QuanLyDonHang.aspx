<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="QuanLyDonHang.aspx.cs" Inherits="Admin_QuanLyDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="SoHD" 
        DataSourceID="SqlDataSource1" CellSpacing="1" Width="100%" 
        style="font-size: medium">
        <Columns>
            <asp:BoundField DataField="SoHD" HeaderText="Số Hóa Đơn" ReadOnly="True" 
                SortExpression="SoHD" />
            <asp:BoundField DataField="MaKH" HeaderText="Mã Khách Hàng" 
                SortExpression="MaKH" />
            <asp:BoundField DataField="NgayDatHang" HeaderText="Ngày Đặt Hàng" 
                SortExpression="NgayDatHang" />
            <asp:BoundField DataField="ThoiGianGiaoHang" HeaderText="Thời Gian Giao Hàng" 
                SortExpression="ThoiGianGiaoHang" />
            <asp:BoundField DataField="DiaChiGiaoHang" HeaderText="Địa Chỉ Giao Hàng" 
                SortExpression="DiaChiGiaoHang" />
            <asp:BoundField DataField="GhiChuKhac" HeaderText="Ghi Chú" 
                SortExpression="GhiChuKhac" />
            <asp:BoundField DataField="TongTien" HeaderText="Tổng Tiền" 
                SortExpression="TongTien" />
            <asp:CommandField DeleteText="Xóa" EditText="Sửa" HeaderText="Chức Năng" 
                SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" 
                UpdateText="Cập Nhật" CancelText="Hủy" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        DeleteCommand="DELETE FROM [DonDatHang] WHERE [SoHD] = @SoHD" 
        InsertCommand="INSERT INTO [DonDatHang] ([SoHD], [MaKH], [NgayDatHang], [ThoiGianGiaoHang], [DiaChiGiaoHang], [GhiChuKhac], [TongTien]) VALUES (@SoHD, @MaKH, @NgayDatHang, @ThoiGianGiaoHang, @DiaChiGiaoHang, @GhiChuKhac, @TongTien)" 
        SelectCommand="SELECT * FROM [DonDatHang]" 
        UpdateCommand="UPDATE [DonDatHang] SET [MaKH] = @MaKH, [NgayDatHang] = @NgayDatHang, [ThoiGianGiaoHang] = @ThoiGianGiaoHang, [DiaChiGiaoHang] = @DiaChiGiaoHang, [GhiChuKhac] = @GhiChuKhac, [TongTien] = @TongTien WHERE [SoHD] = @SoHD">
        <DeleteParameters>
            <asp:Parameter Name="SoHD" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SoHD" Type="Int32" />
            <asp:Parameter Name="MaKH" Type="Int32" />
            <asp:Parameter Name="NgayDatHang" Type="DateTime" />
            <asp:Parameter Name="ThoiGianGiaoHang" Type="Int32" />
            <asp:Parameter Name="DiaChiGiaoHang" Type="String" />
            <asp:Parameter Name="GhiChuKhac" Type="String" />
            <asp:Parameter Name="TongTien" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
            <asp:Parameter Name="NgayDatHang" Type="DateTime" />
            <asp:Parameter Name="ThoiGianGiaoHang" Type="Int32" />
            <asp:Parameter Name="DiaChiGiaoHang" Type="String" />
            <asp:Parameter Name="GhiChuKhac" Type="String" />
            <asp:Parameter Name="TongTien" Type="Double" />
            <asp:Parameter Name="SoHD" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

