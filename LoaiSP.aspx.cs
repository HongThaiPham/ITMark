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

public partial class LoaiSP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnChonMua_Command(object sender, CommandEventArgs e)
    {
        string idsp = e.CommandName;
        Cart GH = (Cart)Session["GioHang"];
        if (GH == null)
        {
            GH = new Cart();
        }
        GH.AddSP(idsp, 1);
        Session.Add("GioHang", GH);
    }
}
