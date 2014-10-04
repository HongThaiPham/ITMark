using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Data.SqlClient ;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class PhanHoi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnGui_Click(object sender, EventArgs e)
    {
        SqlConnection SqlCon = new SqlConnection();
        SqlCommand SqlCom = new SqlCommand();
        string StrCom = "insert into PhanHoi values(N'" + txtTen.Text + "',N'" + txtEmail.Text + "',N'" + txtSubj.Text + "',N'" + txtNoiDung.Text + "')";
        SqlCon = SQL.GetConnect();
        SqlCom.CommandText = StrCom;
        SqlCom.Connection = SqlCon;
        SqlCom.ExecuteNonQuery();
        SqlCon.Close();
        SqlCom.Dispose();
        lblTB.Text = "Phản hồi của bạn đã được gửi đi. Chúng tôi sẽ trả lời cho bạn sớm.";

    }
}
