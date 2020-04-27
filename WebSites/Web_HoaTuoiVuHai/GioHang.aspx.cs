using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class GioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["MaKH"] == null)
            Response.Redirect("DangNhap.aspx");
        if (!IsPostBack)
        {
            if (Request.QueryString["MaHoa"] != null)
            {
                int SPham = int.Parse(Request.QueryString["MaHoa"]);
                DataTable dt = Connect.DocTable("Select TenHoa,Gia From SanPhamHoa  where MaHoa=" + SPham);
                String TenSP = dt.Rows[0][0].ToString();
                int Gia = int.Parse(dt.Rows[0][1].ToString());
                int Soluong = 1;
                //lblTenDN.Text = Session["tbTenDN"].ToString();
                ThemVaoGioHang(SPham, TenSP, Gia, Soluong);
            }
            if (Session["giohang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["giohang"];
                System.Decimal tongThanhTien = 0;
                foreach (DataRow r in dt.Rows)
                {
                    r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToDecimal(r["Gia"]);
                    tongThanhTien += Convert.ToDecimal(r["ThanhTien"]);
                    lblTongTien.Text = tongThanhTien.ToString();
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
    public void ThemVaoGioHang(int MaHoa, string TenHoa, int Gia, int Soluong)
    {
        DataTable dt;
        if (Session["giohang"] == null)
        {
            dt = new DataTable();
            dt.Columns.Add("MaHoa");
            dt.Columns.Add("TenHoa");
            dt.Columns.Add("Gia");
            dt.Columns.Add("soLuong");
            dt.Columns.Add("ThanhTien");
        }
        else
            dt = (DataTable)Session["giohang"];
        int dong = SPdacotronggiohang(MaHoa, dt);
        if (dong != -1)
        {
            dt.Rows[dong]["soluong"] = Convert.ToInt32(dt.Rows[dong]["soluong"]) + Soluong;
        }
        else
        {
            DataRow dr = dt.NewRow();
            dr["MaHoa"] = MaHoa;
            dr["TenHoa"] = TenHoa;
            dr["Gia"] = Gia;
            dr["Soluong"] = Soluong;
            dr["ThanhTien"] = Gia * Soluong;
            dt.Rows.Add(dr);
        }
        Session["giohang"] = dt;
    }
    public static int SPdacotronggiohang(int MaHoa, DataTable datatable)
    {
        int dong = -1;
        for (int i = 0; i < datatable.Rows.Count; i++)
        {
            if (int.Parse(datatable.Rows[i]["MaHoa"].ToString()) == MaHoa)
            {
                dong = i;
                break;
            }
        }
        return dong;
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        Session["giohang"] = null;
        Response.Redirect("~/TrangChu.aspx"); 
    }
   
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       
    }
    protected void btnTiepTuc_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/TrangChu.aspx");
    }

    protected void btnDatHang_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DatHang.aspx");
    }
}