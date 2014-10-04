using System;
using System.Data;
using System.Data.SqlClient ;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Administrator_ThemAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnThem_Click(object sender, EventArgs e)
    {
        SqlConnection SqlCon = new SqlConnection();
        SqlCommand SqlCom = new SqlCommand();
        string StrCom = "insert into Admin values(N'" + txtTen.Text + "',N'" + txtPass.Text + "') ";
        SqlCon = SQL.GetConnect();
        SqlCom.CommandText = StrCom;
        SqlCom.Connection = SqlCon;
        SqlCom.ExecuteNonQuery();
        SqlCon.Close();
        SqlCom.Dispose();
        lblTB.Text = "Tạo admin thành công";


    }
}
