using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Administrator_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        string username = txtAdmin.Text;
        string pass = txtPass.Text;
        if (SQL.LoginAD(username, pass))
        {
            Session.Add("username", username);
            Response.Redirect("manager.aspx");
        }
        else 
        {
            lblTB.Text = "Không đúng tên đăng nhập hoặc mật khẩu";
        }
    }
}
