using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsFirstApp
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divMessage.Visible = true;
            //divMessage is pulled from Contact.aspx; it is id there
            //and it makes the code an object you can tinker with here
            divMessage.Attributes.Add("style", "color: red;");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string message = string.Format($"You said your name is {textName.Text} and your " +
                $"email address is {textEmail.Text}. Your age is {textAge.Text} and your " +
                $"favorite color is {ddlColor.SelectedValue}.");
            litMessage.Text = message;
            //once again, all the variables pull in from your IDs in the aspx page.
        }
    }
}