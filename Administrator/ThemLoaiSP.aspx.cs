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

public partial class Administrator_ThemLoaiSP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        string ten = txtTenLoai.Text;
        if (ten == "")
        {
            lblTB.Text = "Bạn chưa nhập tên loại";
        }
        else
        {
            SqlConnection SqlCon = new SqlConnection();
            SqlCommand SqlCom = new SqlCommand();
            string Query = "insert into LoaiSP values(N'" + ten + "')";
            SqlCon = SQL.GetConnect();
            SqlCom.CommandText = Query;
            SqlCom.Connection = SqlCon;
            SqlCom.ExecuteNonQuery();
            SqlCon.Close();
            SqlCom.Dispose();
            lblTB.Text = "Thêm loại sản phẩm thành công";
        }
    }
}
