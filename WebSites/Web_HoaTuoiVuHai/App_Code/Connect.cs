using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Collections;

/// <summary>
/// Summary description for Connect
/// </summary>
public class Connect
{
   
    public static String ConnectionString = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
    public static DataTable DocTable(string LenhSQl)
    {
        using (SqlConnection cnn = new SqlConnection(ConnectionString))
        {
            SqlDataAdapter bodocghi = new SqlDataAdapter(LenhSQl, cnn);
            DataTable bang = new DataTable();
            bodocghi.Fill(bang);
            return bang;
        }
    }
    public static void thuchienlenh(string LenhSQL)
    {
        using (SqlConnection cnn = new SqlConnection(ConnectionString))
        {
            cnn.Open();
            SqlCommand bolenh = new SqlCommand(LenhSQL, cnn);
            bolenh.ExecuteNonQuery();
            cnn.Close();
        }
    }
	public Connect()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}