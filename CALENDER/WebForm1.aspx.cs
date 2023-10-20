using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CALENDER
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.Day == 27)
                e.Cell.Controls.Add(new LiteralControl("</br>Eid Milad"));


        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.Day == 27)
                e.Cell.Controls.Add(new LiteralControl("</br>Eid Milad"));
            if ((e.Day.Date >= new DateTime(2023,10,10)) && (e.Day.Date <= new DateTime(2023, 10, 12)))
            {
                e.Cell.BackColor = System.Drawing.Color.Green;
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TimeSpan t = Calendar2.SelectedDate - Calendar1.SelectedDate;
            Label1.Text ="No of days left" +t.Days.ToString();
        }

    }
}
