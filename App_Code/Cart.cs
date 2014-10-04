//using System;
//using System.Data;
//using System.Data.SqlClient;
//using System.Configuration;
//using System.Web;
//using System.Web.Security;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Web.UI.WebControls.WebParts;
//using System.Web.UI.HtmlControls;
//using System.Collections;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections;

/// <summary>
/// Lop thong tin gio hang ma khach dat
/// </summary>
public class Cart
{
    private ArrayList DSSanPham = new ArrayList();
    private double   TongTien;
    //phuong thuc tra ve doi tuong ket noi csdl
    public static SqlConnection GetConnect()
    {
        string strConnect = ConfigurationManager.ConnectionStrings["Connect"].ConnectionString;
        SqlConnection sqlcon = new SqlConnection(strConnect);
        sqlcon.Open();
        return sqlcon;
    }

    //them san pham
    public void AddSP(string id, int slg)
    {
        Item item = null;
        Boolean KiemTraTonTai = false;
        for (int i = 0; i < DSSanPham.Count; i++)
        {
            item = (Item)DSSanPham[i];
            if (item.IDPR.Contains(id))
            {
                KiemTraTonTai = true;
                break;
            }
        }

        //neu ton tai san pham co idpr thi cong so luong
        if (KiemTraTonTai)
        {
            item.SL += slg;
        }
        else
        {
            item = new Item(id, slg);
            DSSanPham.Add(item);
        }
    }

    //so luogn san pham trong gio hang
    public int SoLuongSPInCart()
    {
        return DSSanPham.Count;
    }

    //tong so tien cua gio hang
    public double  TongTienCart()
    {
        TongTien = 0;
        Item item;
        for (int i = 0; i < DSSanPham.Count; i++)
        {
            item = (Item)DSSanPham[i];
            TongTien += item.SL * GetGia(item.IDPR);
        }
        return TongTien;
    }

    //lay id san pham
    public string GetIDPR(int index)
    {
        string id = " ";
        Item item = (Item)DSSanPham[index];
        id = item.IDPR;
        return id;
    }

    //lay so luong san pham
    public int GetSL(int index)
    {
        int slg = 0;
        Item item = (Item)DSSanPham[index];
        slg = item.SL;
        return slg;
    }

    //lay ten san pham
    public string GetTenSP(string id)
    {
        SqlConnection SQLCon = new SqlConnection();
        SqlCommand SQLCom = new SqlCommand();
        SqlDataReader SQLDr = null;
        string Query = "select * from SanPham where IDSP='" + id + "'";
        string TenSp = "";
        SQLCon = GetConnect();
        SQLCom.CommandText = Query;
        SQLCom.Connection = SQLCon;
        SQLDr = SQLCom.ExecuteReader();
        if (SQLDr.Read())
        {
            TenSp = (string)SQLDr["TenSp"];
        }
        SQLCon.Close();
        SQLCom.Dispose();
        return TenSp;

    }

    //lay gai san pham
    public double GetGia(string id)
    {
        SqlConnection SQLCon = new SqlConnection();
        SqlCommand SQLCom = new SqlCommand();
        SqlDataReader SQLDr = null;
        string Query = "select * from SanPham where IDSP='" + id + "'";
        double  GiaSP = 0;
        SQLCon = GetConnect();
        SQLCom.CommandText = Query;
        SQLCom.Connection = SQLCon;
        SQLDr = SQLCom.ExecuteReader();
        if (SQLDr.Read())
        {
            GiaSP = (double)SQLDr["Gia"];
        }
        SQLCon.Close();
        SQLCom.Dispose();
        return GiaSP;
    }

    //xoa gio hang
    public void ClearCart()
    {
        DSSanPham.Clear();
    }

    //cap nhat so luogn san pham
    public void CapNhatSL(string id, int slg)
    {
        Item item;
        for (int i = 0; i < DSSanPham.Count; i++)
        {
            item = (Item)DSSanPham[i];
            if (item.IDPR.Contains(id))
            {
                item.SL = slg;
                break;
            }
        }
    }

    //xoa san pham trong gio hang
    public void XoaSP(string id)
    {
        Item item;
        for (int i = 0; i < DSSanPham.Count; i++)
        {
            item = (Item)DSSanPham[i];
            if (item.IDPR.Contains(id))
            {
                DSSanPham.RemoveAt(i);
            }
        }
    }

    //lay du lieu tren gio hang vao datatable

    public DataTable DTGioHang()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("IDSP", System.Type.GetType("System.String"));
        dt.Columns.Add("TENSP", System.Type.GetType("System.String"));
        dt.Columns.Add("SoLuong", System.Type.GetType("System.String"));
        dt.Columns.Add("Gia", System.Type.GetType("System.String"));
        dt.Columns.Add("TongTien", System.Type.GetType("System.String"));

        Item item = null;
        DataRow rowItem;

        for(int i=0;i<DSSanPham.Count;i++)
        {
            item = (Item )DSSanPham[i];
            rowItem = dt.NewRow();
            rowItem["IDSP"] = item.IDPR;
            rowItem["TenSP"] = GetTenSP(item.IDPR );
            rowItem["SoLuong"] = item.SL;
            rowItem["Gia"] = GetGia(item.IDPR );
            rowItem["TongTien"] = item.SL * GetGia(item.IDPR );
            dt.Rows.Add(rowItem );


        }
        return dt;
    }

}


