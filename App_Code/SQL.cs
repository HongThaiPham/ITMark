using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

/// <summary>
/// Summary description for SQL
/// </summary>
public class SQL
{
    public static SqlConnection GetConnect()
    {
        string StrConnect = ConfigurationManager.ConnectionStrings["Connect"].ConnectionString;
        SqlConnection SqlCon = new SqlConnection(StrConnect);
        SqlCon.Open();
        return SqlCon;
    }

    //kiem tra dang nhap
    public static Boolean  Login(string username, string Pass)
    {
        int x=0;
        string StrSqlCom = "select count(*) from ThanhVien where Username = '" + username + "'and Password = '" + Pass + "'";
        SqlConnection SqlCon = new SqlConnection();
        SqlCommand SqlCom = new SqlCommand();
        SqlCon = GetConnect();
        SqlCom.CommandText = StrSqlCom ;
        SqlCom.Connection =SqlCon;
        x = (int)SqlCom.ExecuteScalar();
        SqlCon.Close();
        SqlCom.Dispose();
        return (x != 0);
    }


    public static Boolean LoginAD(string username, string Pass)
    {
        int x = 0;
        string StrSqlCom = "select count(*) from Admin where Name = N'" + username  + "'and Pass = N'" + Pass + "'";
        SqlConnection SqlCon = new SqlConnection();
        SqlCommand SqlCom = new SqlCommand();
        SqlCon = GetConnect();
        SqlCom.CommandText = StrSqlCom;
        SqlCom.Connection = SqlCon;
        x = (int)SqlCom.ExecuteScalar();
        SqlCon.Close();
        SqlCom.Dispose();
        return (x != 0);
    }

    //kiem tra ton tai nguoi dung
    public static Boolean KTTonTaiUser(string username)
    {
        int x=0;
        string StrSqlCon = "select count(*) from ThanhVien where Username = '" + username + "'";
        SqlConnection SqlCon = new SqlConnection();
        SqlCommand SqlCom = new SqlCommand();
        SqlCon = GetConnect();
        SqlCom.CommandText = StrSqlCon ;
        SqlCom.Connection = SqlCon;
        x = (int)SqlCom.ExecuteScalar();
        SqlCon.Close();
        SqlCom.Dispose();
        return(x!=0);
    }













    //lay du lieu vao dataset
    public static SqlDataReader getData(string query)
    {
        SqlConnection SqlCon = new SqlConnection();
        SqlCommand SqlCom = new SqlCommand();
        SqlDataReader dr;
        SqlCon = GetConnect();
        SqlCom.CommandText = query;
        dr = SqlCom.ExecuteReader();
        SqlCon.Close();
        SqlCom.Dispose();
        return dr;


    }

    //kiem tra tinh trang san pham, con hang hay het hang
    //public static string KTTinhTrangSP(string masp)
    //{
    //    int x=0;
    //    SqlConnection SqlCon = new SqlConnection();
    //    SqlCommand SqlCom = new SqlCommand();
    //    SqlDataReader dr;
    //    string StrSqlCon = "select SOLUONG from SANPHAM where IDSP = '" + masp + "'";
    //    SqlCon = GetConnect();
    //    SqlCom.CommandText = StrSqlCon ;
    //    dr = SqlCom.ExecuteReader();
    //    if (dr.Read())
    //    {
    //        x = dr.GetInt32(8);
    //    }
    //    SqlCon.Close();
    //    SqlCom.Dispose();
    //    if (x == 0) return "Hết hàng";
    //    else return "Còn hàng";
    //}

    // dinh dang cach hien thi tien
 

	public SQL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
