using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void rdbXem_CheckedChanged(object sender, EventArgs e)
    {
        Server.Transfer("Xem.aspx");
    }

    protected void rdbThem_CheckedChanged(object sender, EventArgs e)
    {
        Server.Transfer("Them.aspx");
    }

    protected void rdbSua_CheckedChanged(object sender, EventArgs e)
    {
        Server.Transfer("Sua.aspx");
    }
}