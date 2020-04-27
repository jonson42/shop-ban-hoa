using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
/// <summary>
/// Summary description for DungChung
/// </summary>
public class DungChung
{
    public  SqlConnection ketNoi;
    public  DataTable dt;
    public  SqlDataAdapter boDocGhi;
    public  void TaoKetNoi()
    {
        string chuoiKetNoi;
        chuoiKetNoi = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        ketNoi = new SqlConnection(chuoiKetNoi);
    }
    public  DataTable DocBang(string sql)
    {
        TaoKetNoi();
        DataTable dt = new DataTable();
        boDocGhi = new SqlDataAdapter(sql, ketNoi);
        boDocGhi.Fill(dt);
        return dt;
    }

    public void ThucHienCauLenh(string cauLenh)
    {
        TaoKetNoi();
        SqlCommand boLenh = new SqlCommand(cauLenh, ketNoi);
        ketNoi.Open();
        boLenh.ExecuteNonQuery();
        ketNoi.Close();
        boLenh.Dispose();
    }
	public DungChung()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}