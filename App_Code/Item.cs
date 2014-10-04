using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for Item
/// </summary>
public class Item
{
    public string IDPR;
    public int SL;
	public Item(string  id,int slg)
	{
        this.IDPR = id;
        this.SL = slg;
	}
}
