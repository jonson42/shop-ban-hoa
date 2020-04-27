using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
public partial class DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btDangKy_Click(object sender, EventArgs e)
    {
       
        if (tbTaiKhoanDK.Text.Length < 6)
        {
            Response.Write("<script>alert('Tên tài khoản không được ít hơn 6 ký tự!')</script>");
        }
        else if (tbMatKhauDK.Text.Length < 6)
        {
            Response.Write("<script>alert('Mật khẩu không được ít hơn 6 ký tự!')</script>");
        }
        else if (tbMatKhauDK.Text != tbNhapLaiMKDK.Text)
        {
            Response.Write("<script>alert('Mật khẩu không khớp!')</script>");
        }
        else if (tbNam.Text.Length != 4)
        {
            Response.Write("<script>alert('Năm sinh nhâp không chính xác!')</script>");
        }
        else if (KiemTraTaiKhoanTonTai(tbTaiKhoanDK.Text))
        {
            Response.Write("<script>alert('Tên đăng nhập đã tồn tại!');</script>");
        }
        else
        {
            DateTime ngaySinh = new DateTime();
            int maKH = LayMaTuTang();
           try
            {

                ngaySinh = DateTime.Parse(ddlThang.Text + "/" + ddlNgay.Text + "/" + tbNam.Text);
            
            }
            catch
            {
                Response.Write("<script>alert('Nam sinh không phải là số!')</script>");
            }
            bool kq = true;
            string sql = string.Format("insert into KhachHang values({0}, N'{1}', {2}, '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', {9})", maKH, tbHoTenDK.Text, ddlGioiTinh.SelectedValue, tbDiaChi.Text, ngaySinh, tbDienThoai.Text, tbEmail.Text, tbTaiKhoanDK.Text, tbMatKhauDK.Text, 1);
            DungChung ketNoi = new DungChung();
            try
           {
                ketNoi.ThucHienCauLenh(sql);
            }
            catch
            {
                kq = false;
                Response.Write("<script>alert('Đăng ký thất bại')</script>");
            }
            if (kq == true)
            {
                Response.Write("<script>alert('Đăng ký thành công!')</script>");
                Response.Redirect("DoiMKThanhCong.aspx");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        tbTaiKhoanDK.Text = "";
        tbMatKhauDK.Text = "";
        tbNhapLaiMKDK.Text = "";
        tbHoTenDK.Text = "";
        ddlGioiTinh.Text = "Nam";
        ddlNgay.Text = "1";
        ddlThang.Text = "1";
        tbNam.Text = "";
        tbDiaChi.Text = "";
        tbEmail.Text = "";
        tbDienThoai.Text = "";
    }
    public static bool KiemTraTaiKhoanTonTai(string taiKhoan)
    {
        bool kq;
        DungChung ketNoi = new DungChung();
        string sql = "select * from KhachHang where TenTaiKhoan = '" + taiKhoan + "'";
        DataTable dt = ketNoi.DocBang(sql);
        if (dt.Rows.Count > 0)
        {
            kq = true;
        }
        else
        {
            kq = false;
        }
        return kq;
    }
    public static int LayMaTuTang()
    {
        string sql = "select * from KhachHang";
        DungChung ketNoi = new DungChung();
        DataTable dt = new DataTable();
        dt = ketNoi.DocBang(sql);
        int maTuTang = 1;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (int.Parse(dt.Rows[i][0].ToString()) != maTuTang)
            {
                return maTuTang;
            }
            else
            {
                maTuTang++;
            }
        }
        return maTuTang;
    }
 
}