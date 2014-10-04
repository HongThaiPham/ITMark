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

public partial class GioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Cart GH = (Cart)Session["GioHang"];
            if (GH == null || GH.SoLuongSPInCart() == 0)
            {
                lblTB.Text = "Qúy khách chưa chọn mặt hàng nào, hãy chọn mặt hàng cần mua";
                btnTiepTuc.Visible = false;
                btnDatHang.Visible = false;
                btnXoa.Visible = false;

                Panel1.Visible = false;
                return;
            }

            grdData.DataSource = GH.DTGioHang();
            grdData.DataBind();
            lblTB.Text = "Giỏ hàng có: " + GH.SoLuongSPInCart() + " mặt hàng <b>";
            lblTongTien.Text = "Tổng cộng: " + GH.TongTienCart().ToString() +" VND";

        }
    }

    //nut tiep tuc

    protected void btnTiepTuc_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    //// nut xoa gio hang

    protected void btnXoa_Click(object sender, EventArgs e)
    {
        Cart GH = (Cart)Session["GioHang"];
        if (GH != null )
        {
            GH.ClearCart();
            GH = (Cart)Session["GioHang"];
            Response.Redirect("Default.aspx");
        }
    }


    // nut dat hang
    protected void btnDatHang_Click(object sender, EventArgs e)
    {
        string username = "";
        username  = (string)Session["username"];
        if (username == "")
        {
            lblTB2.Text = "Bạn cần đăng nhập để đặt hàng";
            
        }
        else
        {
            Cart GH = (Cart)Session["GioHang"];
            string idsp = "";
            int soluong;
            string ngaydathang = DateTime.Now.ToString() ;
            string Query = "insert into DonHang values(N'" + username  + "',N'" + ngaydathang + "')"; // truy van them vao don hang
            SqlConnection SqlCon = new SqlConnection();
            SqlCommand SqlCom = new SqlCommand();
            SqlCon = SQL.GetConnect();
            SqlCom.CommandText = Query;
            SqlCom.Connection = SqlCon;
            SqlCom.ExecuteNonQuery();

            Query  = "select max(IDDonHang) from DonHang"; //truy van lay ma don hang
            SqlCom = new SqlCommand(Query, SqlCon);
            int iddonhang = (int)SqlCom.ExecuteScalar();
            for (int i = 0; i < GH.SoLuongSPInCart(); i++)
            {
                idsp = GH.GetIDPR(i);
                soluong = GH.GetSL(i);
                Query = "insert into ChiTietDonHang values(" + iddonhang + "," + idsp + "," + soluong + ")";
                SqlCom = new SqlCommand(Query,SqlCon );
                SqlCom.ExecuteNonQuery();
            }
            SqlCon.Close();
            SqlCom.Dispose();

            lblTB2.Text = "Cảm ơn quý khách đã sử dụng sản phẩm của chúng tôi. Hàng sẽ được giao đến địa chỉ của quý khách trong thời gian ngắn nhất. Chúc quý khách vui vẻ !!!";

        }          
    }

    protected void SuaXoa(object sender, GridViewCommandEventArgs e)
    {
        string option = e.CommandName;
        string id = (string)e.CommandArgument;
        int i = int.Parse(id);
        Label la = (Label)(grdData.Rows[i].FindControl("lblidsp"));

        //neu bam nut sua

        if (option.Equals("Sua"))
        {
            TextBox t = (TextBox)(grdData.Rows[i].FindControl("txtSoLuong"));
            int sl = int.Parse(t.Text);
            string idsp = la.Text;
            Cart GH = (Cart)Session["GioHang"];
            GH.CapNhatSL(idsp, sl);
            grdData.DataSource = GH.DTGioHang();
            grdData.DataBind();
            lblTongTien.Text  = "Tổng cộng: " + GH.TongTienCart().ToString() + " VNĐ";

        }
        else if (option.Equals("Xoa"))
        {
            string idsp = la.Text;
            Cart GH = (Cart )Session["GioHang"];
            GH.XoaSP(idsp);
            grdData.DataSource = GH.DTGioHang();
            grdData.DataBind();
            lblTB.Text = "Giỏ hàng có: " + GH.SoLuongSPInCart() + " mặt hàng <br>";
            lblTongTien.Text  = "Tổng cộng: " + GH.TongTienCart().ToString() + " VNĐ" ;
        }
    }
  
}
