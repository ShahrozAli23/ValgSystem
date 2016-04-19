using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Admin"] != null)
        {
            Response.Redirect("Adminpanel.aspx");
        }
        if(Session["Bruger"] != null)
        {
            Response.Redirect("showCandidate.aspx");
        }
    }


    protected void Logind(object sender, EventArgs e)
    {
        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(Server.MapPath("Configuration.xml"));

        XmlNodeList userNodes = xmlDoc.SelectNodes("//Administrator/user");
        foreach (XmlNode userNode in userNodes)
        {
            string brugernavn = userNode.Attributes["Brugernavn"].Value;
            string kodeord = userNode.Attributes["Kodeord"].Value;

            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] textToHash = Encoding.Default.GetBytes(text_Kodeord.Value);
            byte[] result = md5.ComputeHash(textToHash);



            if (text_brugernavn.Value == brugernavn && BitConverter.ToString(result) == kodeord)
            {
                Session["Admin"] = brugernavn;
                Response.Redirect("Adminpanel.aspx");
            }
        }

        if (File.Exists(Server.MapPath("Kandidat.xml")))
        {
                xmlDoc.Load(Server.MapPath("Kandidat.xml"));

                userNodes = xmlDoc.SelectNodes("//Users/user");
                foreach (XmlNode userNode in userNodes)
                {
                    string brugernavn = userNode.Attributes["Email"].Value;
                    string kodeord = userNode.Attributes["Kodeord"].Value;

                    MD5 md5 = new MD5CryptoServiceProvider();
                    byte[] textToHash = Encoding.Default.GetBytes(text_Kodeord.Value);
                    byte[] result = md5.ComputeHash(textToHash);



                    if (text_brugernavn.Value == brugernavn && BitConverter.ToString(result) == kodeord)
                    {
                        Session["Bruger"] = brugernavn;
                        Response.Redirect("editCandidate.aspx");
                    }
                }
            }
        }
    }