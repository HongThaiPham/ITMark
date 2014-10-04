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

public partial class Administrator_ThemSP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // lay link hinh cau san pham
    public string  LayLinkHinh()
    {
        string link = "";
        if (FileUploadHinhSP.HasFile)
        {
            link = Guid.NewGuid().ToString().Substring (0, 10) + FileUploadHinhSP.PostedFile.FileName.Remove(0, FileUploadHinhSP.PostedFile.FileName.LastIndexOf("."));
            FileUploadHinhSP.PostedFile.SaveAs(Server.MapPath("../sanpham/") + link);
        }
        return link;
    }

    public void ThemSP()
    {
        int idloaisp = int.Parse(DropDownList1.SelectedValue);
        string tensp = txtTenSP.Text;
        string chitiet = txtChiTietSP.Text;
        float  gia = float.Parse(txtGia.Text);
        int soluong = int.Parse(txtSoLuong.Text);
        string hinh = LayLinkHinh();
        string ngaynhap = DateTime.Now.ToString();
        string Query = "insert into SanPham values(" + idloaisp + ",N'" + tensp + "',N'" + chitiet + "',N'" + ngaynhap + "'," + gia + "," + soluong + ",N'" + hinh + "')";
        SqlConnection SqlCon = new SqlConnection();
        SqlCommand SqlCom = new SqlCommand();
        SqlCon = SQL.GetConnect();
        SqlCom.CommandText = Query;
        SqlCom.Connection = SqlCon;
        SqlCom.ExecuteNonQuery();
        lblTB.Text = "Thêm sản phẩm thành công";
        SqlCon.Close();
        SqlCom.Dispose();
        txtTenSP.Text = "";
        txtChiTietSP.Text = "";
        txtGia.Text = "";
        txtSoLuong.Text = "";
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        ThemSP();
    }
}
