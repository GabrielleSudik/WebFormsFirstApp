using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsFirstApp
{
    public partial class Calendar : System.Web.UI.Page
    {
        //next variable adds list of events to be used by MyEvent and the repeater

        private List<MyEvent> myEvents;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["MyEvents"] = new List<MyEvent>();
            }
        }

        protected void btnEvent_Click(object sender, EventArgs e)
        {
            //two things happen when someone clicks the button:
            UpdateEvents();
            BindEvents();
        }

        //this method is also added by hand:

        private void UpdateEvents()
        {
            //if the list already contains events:
            //I'm not sure what Session does... but I think the effect here is 
            //just "summoning" the list
            if(Session["MyEvents"] != null)
            {
                myEvents = (List<MyEvent>)Session["MyEvents"];
            }
            //if there are no events yet, pressing the button will start the list
            else
            {
                myEvents = new List<MyEvent>();
            }

            //and either way, the textEvent and calendarEvent from the aspx page will be added to the list:
            myEvents.Add(new MyEvent(textEvent.Text, calendarEvents.SelectedDate));

            //again, not sure what Session means, but it makes it equal to the new list
            Session["MyEvents"] = myEvents;
        }

        //this method also added by hand
        //it binds the event and date to the repeater on the aspx page

        private void BindEvents()
        {
            //rptEvents comes from the ID in aspx page
            rptEvents.DataSource = myEvents;
            rptEvents.DataBind();
        }
    }

    //next class is done by hand. it's to create the events for the calendar
    //you added a couple properties and the constructor (requires two params-- the name and date)

    public class MyEvent
    {
        public string EventName
        {
            get;
            private set;
        }
        public string EventDate
        {
            get;
            private set;
        }

        public MyEvent(string eventName, DateTime eventDate)
        {
            EventName = eventName;
            EventDate = eventDate.ToShortDateString();
        }
    }

    //this class will be used to bind data to the repeater in the aspx page
}