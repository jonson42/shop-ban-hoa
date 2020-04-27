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
using System.Data.SqlClient;

public partial class TheHien_DangNhap : System.Web.UI.UserControl
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["MaKH"] != null)
        {
            lbLoiChao.Text = "Chào: " + Session["TenTaiKhoan"].ToString();
            pnDangNhap.Visible = false;
            pnThoat.Visible = true;
        }
        else
        {
            pnDangNhap.Visible = true;
            pnThoat.Visible = false;
        }
    }

    protected void btDangNhap_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        DungChung ketnoi = new DungChung();
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);
        string sql = string.Format("select * from KhachHang where TenTaiKhoan = '{0}' and MatKhau = '{1}'", tbTenDN.Text, tbMatKhau.Text);
        SqlCommand cmd = new SqlCommand("select * from KhachHang where TenTaiKhoan='" + tbTenDN.Text + "'and MatKhau ='" + tbMatKhau.Text + "'", cn);
        cmd.CommandType = CommandType.Text;
        cn.Open();
        SqlDataReader rs = cmd.ExecuteReader();
        
        if (rs.Read())
        {
            string maquyen = rs["Quyen"].ToString();
            string TenTaiKhoan=rs["TenTaiKhoan"].ToString();
            Session["TenTaiKhoan"] = tbTenDN.Text;
            cmd.Dispose();
            rs.Close();
            SqlCommand cmd2 = new SqlCommand("select * from KhachHang where Quyen=" + maquyen, cn);
            cmd2.CommandType = CommandType.Text;
            SqlDataReader rs2 = cmd2.ExecuteReader();            
            if (rs2.Read())
            {
                string nhom1 = rs2["quyen"].ToString();
                switch (nhom1)
                {
                    case "2":
                        FormsAuthentication.SetAuthCookie(TenTaiKhoan, false);
                        Response.Redirect("~/Admin/TrangChuAdmin.aspx");
                        break;
                    case "1":
                        dt = ketnoi.DocBang(sql);
                        if (dt.Rows.Count > 0)
                        {
                            Session["MaKH"] = dt.Rows[0]["MaKH"];
                            Session["hoTen"] = dt.Rows[0]["Ten"];
                            lbLoiChao.Text = "Chào: " + Session["hoTen"].ToString();
                            pnThoat.Visible = false;
                            pnDangNhap.Visible = true;
                        }
                        Response.Redirect("TrangChu.aspx");
                        break;                        
                }
            }
             else Response.Redirect("DangNhap.aspx");
        }
        else Response.Write("<script>alert('Bạn đã đăng nhập sai')</script>");
        
    }
   
    protected void btThoat_Click(object sender, EventArgs e)
    {
        Session["TenTaiKhoan"] = "";
        pnThoat.Visible = false;
        pnDangNhap.Visible = true;
        tbTenDN.Text = "";
        tbMatKhau.Text = "";
    }
}
