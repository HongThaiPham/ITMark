using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class DangKy : System.Web.UI.Page
{
    
    protected  void Page_Load(object sender, EventArgs e)
    {
        #region TaoMaXacNhan
        txtMaXacNhan.Text = "";
        Random rd = new Random();
        const string Chuoi = "QWERTYUIOPASDFGHJKLZXCVBNM0123456789";        
        for (int i = 0; i < 5; i++)
        {

            txtMaXacNhan.Text  += Chuoi[rd.Next() % Chuoi.Length];
        }
        #endregion
        txtMaXN.Text = txtMaXacNhan.Text;
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtTen.Text = "";
        txtEmail.Text = "";
        txtPass.Text = "";
        txtRepass.Text = "";
    }

    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        if (cboCheck.Checked == false)
        {
            lblTB.Text = "Bạn phải đồng ý với các quy định của công ty";
        }
        else
        {

            string un = txtTen.Text;
            string email = txtEmail.Text;
            string pas = txtPass.Text;
            string hoten = txtHoTen.Text;
            string diachi = txtDiaChiDK.Text;
            string sdt = txtSoDT.Text;
            string nghe = txtNgheNghiep.Text;

            if (SQL.KTTonTaiUser(un))
            {
                lblTB.Text = "Tên đăng nhập đã tồn tại, hãy chọn tên khác";
            }
            else
            {

                SqlConnection SqlCon = new SqlConnection();
                SqlCommand SqlCom = new SqlCommand();
                string StrCom = "insert into ThanhVien values(N'" + un + "',N'" + email + "',N'" + pas + "',N'" + hoten + "',N'" + diachi + "',N'" + sdt + "',N'" + nghe + "')";
                SqlCon = SQL.GetConnect();
                SqlCom.CommandText = StrCom;
                SqlCom.Connection = SqlCon;
                SqlCom.ExecuteNonQuery();
                SqlCon.Close();
                SqlCom.Dispose();
            }
        }
        
    }

    
}
