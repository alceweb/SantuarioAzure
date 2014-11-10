using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Test1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cartella = "~/NewsImg/6/";
        string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*.jpg");
        lista.DataSource = immagini;
        lista.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String path = Server.MapPath("~/NewsImg/5/");

        if (FileUpload1.HasFiles)
        {
            foreach (var file in FileUpload1.PostedFiles)
            {
                //upload logic
                FileUpload1.SaveAs( path + System.IO.Path.GetFileName(file.FileName));
            }
        }

    }
}