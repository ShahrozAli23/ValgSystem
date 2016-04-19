using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminpanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!File.Exists(Server.MapPath("Configuration.xml")))
        {
            Response.Redirect("Velkomstsiden.aspx");
        }

        if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("createCandidate.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("Admin");
        Response.Redirect("Default.aspx");
    }
}