using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class duyurular : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "ömkljk";
    }
    protected void btnarama_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ara.aspx?q=" + txtarama.Text.Trim());

    }
}