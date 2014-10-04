using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        initCookies();
        Cart GH = (Cart)Session["GioHang"];
        if (GH != null)
        {
            string soluong = GH.SoLuongSPInCart().ToString();
            lblSoLuong.Text = soluong;
            string tongtien = GH.TongTienCart().ToString();
            lblTongTien.Text = tongtien  + "VNĐ";
        }
        else
        {
            lblSoLuong.Text = "0";
            lblTongTien.Text = "0 VNĐ";
        }
        lblLuongTruyCap.Text  = Application["Visited"].ToString();
    }

    public void Login(string idtv, string pass)
    {

        if (SQL.Login(idtv, pass))
        {
            Session.Add("username", idtv);
            Session.Add("login", "ok");
            PanelDangNhap.Visible = false;
            PanelChaoMung.Visible = true;
            if (cboGhiNho.Checked == true)
            {
                writeCookies(idtv, pass);
            }

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

        if (log == null || log == "")
        {

            PanelDangNhap.Visible = true;
            PanelChaoMung.Visible = false;

        }
        else
        {
            PanelChaoMung.Visible = true;
            PanelDangNhap.Visible = false;
        }

    }


    // Ghi cookies
    public void writeCookies(string username, string pass)
    {
        if (Request.Browser.Cookies)
        {
            if (Request.Cookies["userInfo"] == null)
            {
                // Tao cookies luu thong tin nguoi dung
                HttpCookie ckUserInfo = new HttpCookie("userInfo");
                ckUserInfo["username"] = username ;
                ckUserInfo["pass"] = pass ;
                ckUserInfo.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(ckUserInfo);

            }

        }
    }

    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        string username = txtTen.Text;
        string pass = txtPass.Text;
        Login(username, pass);
    }
    protected void lbLogout_Click(object sender, EventArgs e)
    {
        Response.Cookies["username"].Expires = DateTime.Now;
        Session["username"] = "";
        Session["login"] = "";
        Response.Redirect("Default.aspx");      
    }
}
