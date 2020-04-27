using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class KQTimKiem : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string Giatu = Request.QueryString[0];
        string Giaden = Request.QueryString[1];
        if (Giaden.ToString() == null)
        {
            string c = "SELECT  TenHoa, MaHoa, Hinh, Gia FROM  dbo.SanPhamHoa WHERE Gia >=" + float.Parse(Giatu) + "";
            c = string.Format(c, Giatu, Giaden == "");
            DungChung connect = new DungChung();
            DataTable dt = connect.DocBang(c);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        if(Giatu.ToString() != "" && Giaden.ToString() != "")
        {
            string c = "SELECT  TenHoa, MaHoa, Hinh, Gia FROM  dbo.SanPhamHoa WHERE Gia >= " + float.Parse(Giatu) + " and Gia <= " + float.Parse(Giaden) + "";
            c = string.Format(c, Giatu, Giaden);
            DungChung connect = new DungChung();
            DataTable dt = connect.DocBang(c);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        else
        {
            lblThongBao.Text = "Không Có Sản Phẩm Cần Tìm!";
        }
    }
}

