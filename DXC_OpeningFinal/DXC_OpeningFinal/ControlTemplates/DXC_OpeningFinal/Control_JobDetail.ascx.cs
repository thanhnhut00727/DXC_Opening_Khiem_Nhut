﻿using Microsoft.SharePoint;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


namespace DXC_OpeningFinal.ControlTemplates.DXC_OpeningFinal
{
    
    public partial class Control_JobDetail : UserControl
    {
        public static string TimeAgo(DateTime dateTime)
        {
            string result = string.Empty;
            var timeSpan = DateTime.Now.Subtract(dateTime);
            if (timeSpan <= TimeSpan.FromSeconds(60))
            {
                result = string.Format("{0} seconds ago", timeSpan.Seconds);
            }
            else if (timeSpan <= TimeSpan.FromMinutes(60))
            {
                result = timeSpan.Minutes > 1 ?
                    String.Format("about {0} minutes ago", timeSpan.Minutes) :
                    "about a minute ago";
            }
            else if (timeSpan <= TimeSpan.FromHours(24))
            {
                result = timeSpan.Hours > 1 ?
                    String.Format("about {0} hours ago", timeSpan.Hours) :
                    "about an hour ago";
            }
            else if (timeSpan <= TimeSpan.FromDays(5))
            {
                result = timeSpan.Days > 1 ?
                    String.Format("about {0} days ago", timeSpan.Days) :
                    "yesterday";
            }
            else if (timeSpan <= TimeSpan.FromDays(365))
            {
                result = timeSpan.Days > 30 ?
                    String.Format("about {0} months ago", timeSpan.Days / 30) :
                    "about a month ago";
            }
            else
            {
                result = timeSpan.Days > 365 ?
                    String.Format("about {0} years ago", timeSpan.Days / 365) :
                    "about a year ago";
            }

            return result;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            SPWeb web = SPContext.Current.Web;
            if (web != null)
            {
                string ID = Request.QueryString["IDItem"];
                SPList list = web.Lists["JobList"];
                SPListItemCollection items = list.Items;
                SPListItem item = items.GetItemById(int.Parse(ID));
                p_jobtitle.Text = item["_JobTitle"].ToString();
                lblpubDate.Text = TimeAgo((DateTime)item["PubDate"]);
                p_bonus.Text = item["RefernalBonus"].ToString();
                p_contact.Text = item["HRContact"].ToString();
                p_shortDes.Text = item["ShortDescription"].ToString();
                p_longDes.Text = item["LongDescription"].ToString();
                p_status.Text = item["Status"].ToString();

            }          
        }
        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            string ID = Request.QueryString["IDItem"];
            SPWeb oWeb = SPContext.Current.Web;
            //Get a Particular List  
            SPList oList = oWeb.Lists["JobList"];
            SPListItem itemToDelete = oList.GetItemById(int.Parse(ID));
            // SPListItem item = oList.Items;
            itemToDelete.Delete();
            Response.Redirect("~/_layouts/15/page/AllJobs.aspx");
        }

        protected void btn_Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/_layouts/15/page/AllJobs.aspx");
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            string ID = Request.QueryString["IDItem"];
            //LinkButton lbtnID = sender as LinkButton;
            string sitecolURL = SPContext.Current.Web.Site.Url;
            Response.Redirect(sitecolURL + "/_layouts/15/page/UpdateJob.aspx?IDItem=" + ID);
        }
    }
}
