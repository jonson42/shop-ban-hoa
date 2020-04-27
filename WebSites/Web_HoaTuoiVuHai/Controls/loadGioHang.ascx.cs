using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Controls_loadGioHang : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["giohang"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["gioHang"];
            System.Decimal tongThanhTien = 0;
            foreach (DataRow r in dt.Rows)
            {
                r["thanhtien"] = Convert.ToInt32(r["soluong"]) * Convert.ToDecimal(r["Gia"]);
                tongThanhTien += Convert.ToDecimal(r["thanhtien"]);
                lblTongTien.Text = "Tổng tiền là:" + tongThanhTien.ToString();
            }
        }
    }
}