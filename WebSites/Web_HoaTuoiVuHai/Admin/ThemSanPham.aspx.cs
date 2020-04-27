using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_ThemSanPham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        if (txtTenHoa.Text == "")
        {
            Response.Write("<script>alert('Tên không được bỏ trống!')</script>");
        }
        else if (txtGia.Text == "")
        {
            Response.Write("<script>alert('Giá không được bỏ trống!')</script>");
        }
        else if ( FU_HinhAnh.FileName.ToString() == "")
        {
            Response.Write("<script>alert('Phải duyệt hình, không được để trống!')</script>");
        }
        else if (txtMaHang.Text == "")
        {
            Response.Write("<script>alert('Mã hàng không được bỏ trống!')</script>");
        }
        else
        {
            DungChung ketNoi = new DungChung();
            int maHoa = LayMaTuTangHoa();
            FU_HinhAnh.SaveAs(Server.MapPath("~//Hinh//" + FU_HinhAnh.FileName));
            string sql1 = string.Format("insert into SanPhamHoa values({0}, N'{1}', N'{2}', {3}, {4})", maHoa, txtTenHoa.Text, "Hinh/" + FU_HinhAnh.FileName, txtGia.Text, txtMaHang.Text);
            string ad = "update SanPhamHoa set maHoa = @maHoa";
            try
            {
                ketNoi.ThucHienCauLenh(sql1);
                ketNoi.ThucHienCauLenh(ad);
            }
            catch
            {
                Response.Write("<script>alert('Thêm Sản Phẩm Thất Bại!')</script>");
            }
            Response.Redirect("ThemSanPham.aspx");
        }
    }
    public int LayMaTuTangHoa()
    {
        int MaHoa = 1;
        DungChung ketNoi = new DungChung();
        string sql = "select * from SanPhamHoa";
        DataTable dt = new DataTable();
        dt = ketNoi.DocBang(sql);
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (int.Parse(dt.Rows[i][0].ToString()) != MaHoa)
                {
                    return MaHoa;
                }
                else
                {
                    MaHoa++;
                }
            }
        }
        return MaHoa;
    }
    protected void btnHuy_Click(object sender, EventArgs e)
    {
        txtTenHoa.Text = "";
        txtGia.Text = "";
        txtMaHang.Text = "";
    }
    protected void btnTroVe_Click(object sender, EventArgs e)
    {
        Response.Redirect("TrangChuAdmin.aspx");
    }
}