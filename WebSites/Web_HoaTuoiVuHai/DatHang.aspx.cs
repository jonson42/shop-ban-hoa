using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DatHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["MaKH"] == null)
            Response.Redirect("DangNhap.aspx");
        if (Session["giohang"] == null)
            Response.Redirect("~/Giohang.aspx");
        if (Session["Giohang"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["GioHang"];
            System.Int32 tongThanhTien = 0;
            foreach (DataRow r in dt.Rows)
            {
                r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToInt32(r["Gia"]);
                tongThanhTien += Convert.ToInt32(r["ThanhTien"]);
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        if (!IsPostBack)
        {
         
        }
    }
    protected void btnGuiDonHang_Click(object sender, EventArgs e)
    {
        
        if (tbDCGH.Text == "")
        {
            Response.Write("<script>alert('Địa chỉ giao hàng không hợp lệ!')</script>");
        }
        else if (tbTGGH.Text == "")
        {
            Response.Write("<script>alert('Ngày giao hàng không hợp lệ!')</script>");
        }
        else
        {
            string ngayDH;
            DungChung ketNoi = new DungChung();
            DataTable dt = (DataTable)Session["GioHang"];
            int soHD = LayMaTuTangDonDatHang();
            int MaKH = int.Parse(Session["MaKH"].ToString());
            ngayDH = DateTime.Today.ToString("dd-MM-yyyy");
            int thoiGianGH = int.Parse(tbTGGH.Text);
            string diaChiGH = tbDCGH.Text;
            string ghiChuKhac = tbGCK.Text;
            double tongTien = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                double thanhTien = double.Parse(dt.Rows[i][3].ToString()) * int.Parse(dt.Rows[i][4].ToString());
                tongTien = tongTien + thanhTien;
            }
            bool kq = true;
            string sql1 = string.Format("insert into DonDatHang values({0}, {1}, N'{2}', {3}, N'{4}', N'{5}', {6})", soHD, MaKH, ngayDH, thoiGianGH, diaChiGH, ghiChuKhac, tongTien);
            ketNoi.ThucHienCauLenh(sql1);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                int maCTHD = LayMaTuTangChiTietDonDatHang();
                int maDT = int.Parse(dt.Rows[i][0].ToString());
                int soLuong = int.Parse(dt.Rows[i][3].ToString());
                double donGia = double.Parse(dt.Rows[i][4].ToString());
                double thanhTien = double.Parse(dt.Rows[i][3].ToString()) * int.Parse(dt.Rows[i][4].ToString());
                string sql2 = string.Format("insert into ChiTietDonDatHang values({0}, {1}, {2}, {3}, {4}, {5})", maCTHD, soHD, maDT, soLuong, donGia, thanhTien);
                ketNoi.ThucHienCauLenh(sql2);
            }
            Session["giohang"] = null;
            Response.Redirect("XaNhanThanhCong.aspx");
           
            kq = false;
            {
                lblThongBao.Text = " Đặt hàng không thành công, mời bạn thử lại";
            }
        }
    }
    public int LayMaTuTangDonDatHang()
    {
        int soHD = 1;
        DungChung ketNoi = new DungChung();
        string sql = "select * from DonDatHang";
        DataTable dt = new DataTable();
        dt = ketNoi.DocBang(sql);
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (int.Parse(dt.Rows[i][0].ToString()) != soHD)
                {
                    return soHD;
                }
                else
                {
                    soHD++;
                }
            }
        }
        return soHD;
    }
    public int LayMaTuTangChiTietDonDatHang()
    {
        int maCTHD = 1;
        DungChung ketNoi = new DungChung();
        string sql = "select * from ChiTietDonDatHang";
        DataTable dt = new DataTable();
        dt = ketNoi.DocBang(sql);
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (int.Parse(dt.Rows[i][0].ToString()) != maCTHD)
                {
                    return maCTHD;
                }
                else
                {
                    maCTHD++;
                }
            }
        }
        return maCTHD;
    }
    protected void btnHuyDonHang_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Bạn Đã Hủy Đơn Hàng!')</script>");
        Session["giohang"] = null;
        Response.Redirect("~/TrangChu.aspx");
    }
}