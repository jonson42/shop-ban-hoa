using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btntimKiem_Click(object sender, EventArgs e)
    {
        if (txtGiaTu.Text == "")
        {
            Response.Write("<script>alert('Giá từ không thể bỏ trống!')</script>");
        }
        else if (txtGiaDen.Text == "")
        {
            Response.Write("<script>alert('Giá đến không được bỏ trống!')</script>");
        }
        else
        {
            string Giatu = txtGiaTu.Text;
            string Giaden = txtGiaDen.Text;
            Response.Redirect("KQTimKiem.aspx?Giatu = " + Giatu + "&Giaden =" + Giaden);
        }
    }
}
