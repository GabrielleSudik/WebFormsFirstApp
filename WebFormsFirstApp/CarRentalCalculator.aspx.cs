using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Fee2;
//reminder: you needed to add a reference to the Fee2 library, 
//which is where you created info about the states and their fees.
//if "fee" and "fee3" and "calculator" are still in your project, delete them)

namespace WebFormsFirstApp
{
    public partial class CarRentalCalculator : System.Web.UI.Page
    {

        public decimal BasePrice = 100.00m;

        protected void Page_Load(object sender, EventArgs e)
        {
            //this line sets the base price (100) to the "literal" on the asp
            ltBasePrice.Text = BasePrice.ToString("C");
        }

        protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
        {
            States states = new States();
            //States comes your library Fee2
            //next line gets two letter code from drop down list
            decimal fee = states.GetFeeForState(ddlStates.SelectedValue);
            decimal finalPrice = BasePrice + fee;
            //next line passes fee to the literal on the asp. "C" for currency.
            ltCustomPrice.Text = finalPrice.ToString("C");
        }
    }
}