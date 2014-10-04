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

public partial class Administrator_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        initCookies();
        
    }

    // Xử lý đăng nhập
    public void Login(string username, string pass)
    {

        if (SQL.Login(username, pass))
        {
            Session.Add("username", username );
            Session.Add("login", "ok");
            Menu1.Visible = true;
        }
        

    }

    // Khoi tao cac cookies
    // Neu co lay ve gia tri trong do
    public void initCookies()
    {
        // nếu trình duyệt hỗ trợ cookies
        if (Request.Browser.Cookies)
        {
            if (Request.Cookies.Get("userInfo") != null)
            {

                // lay cookies
                HttpCookie ck = Request.Cookies["userInfo"];
                string username = "";
                string pass = "";
                username = ck["username"];
                pass = ck["pass"];

                if (username != "" && pass != "")
                {
                    Login(username, pass);
                    
                }
                

            }

        }
        string log = (string)Session["login"];

        

    }


    // Ghi cookies
    public void writeCookies(string uid, string pwd)
    {
        if (Request.Browser.Cookies)
        {
            if (Request.Cookies["userInfo"] == null)
            {
                // Tao cookies luu thong tin nguoi dung
                HttpCookie ckUserInfo = new HttpCookie("userInfo");
                ckUserInfo["username"] = uid;
                ckUserInfo["pass"] = pwd;
                ckUserInfo.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(ckUserInfo);

            }

        }
    }




    protected void lbLogout_Click(object sender, EventArgs e)
    {
        Response.Cookies["username"].Expires = DateTime.Now;
        Session["username"] = "";
        Session["login"] = "";
        Response.Redirect("~/Default.aspx");
    }
    protected void lbDangXuat_Click(object sender, EventArgs e)
    {
        Response.Cookies["username"].Expires = DateTime.Now;
        Session["username"] = "";
        Session["login"] = "";
        Response.Redirect("Default.aspx");
    }
}
