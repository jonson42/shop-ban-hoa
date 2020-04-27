using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DoiMK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = Connect.DocTable("Select * From KhachHang where TenTaiKhoan='" + txtTenDN.Text + "' and MatKhau='" + txtMKhau.Text + "'");
        if (dt.Rows.Count != 0)
        {
            //Gán giá trị cho biến 
            String Tendn = txtTenDN.Text;
            String Matkhau = txtMKhau.Text;
            String Matkhaumoi = txtMKhaumoi.Text;
            String NhapLaiMK = txtNLaiMK.Text;
            //Thực thi lệnh dieu chinh dữ liệu
            string str = "UPDATE KhachHang SET MatKhau='" + Matkhaumoi + "' WHERE TenTaiKhoan='" + Tendn + "'";
            Connect.thuchienlenh(str);
            Response.Redirect("~/DoiMKThanhCong.aspx");
        }
    }
}