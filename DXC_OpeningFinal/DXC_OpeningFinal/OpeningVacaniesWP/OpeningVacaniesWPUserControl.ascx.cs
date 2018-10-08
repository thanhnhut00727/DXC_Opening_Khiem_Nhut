using Microsoft.SharePoint;
using Microsoft.SharePoint.Administration.Claims;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace DXC_OpeningFinal.OpeningVacaniesWP
{
    public partial class OpeningVacaniesWPUserControl : UserControl
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
        protected bool IsUserMemberOfGroup(SPUser user, string groupName)
        {
            bool result = false;

            if (!String.IsNullOrEmpty(groupName) && user != null)
            {
                foreach (SPGroup group in user.Groups)
                {
                    if (group.Name == groupName)
                    {
                        // found it
                        result = true;
                        break;
                    }
                }
            }

            return result;
        }
             
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkAllJob.NavigateUrl = SPContext.Current.Web.Url + "/_layouts/15/page/AllJobs.aspx";
            LinkAddNew.NavigateUrl = SPContext.Current.Web.Url + "/_layouts/15/page/AddNewJob.aspx";
            getData();
            try
            {
                SPUser user = SPContext.Current.Web.CurrentUser;
                SPClaimProviderManager mgr = SPClaimProviderManager.Local;
                if (mgr != null)
                {
                    if (IsUserMemberOfGroup(user, "HR Group"))
                    {
                        LinkAddNew.Visible = true;
                    }
                    else if (IsUserMemberOfGroup(user, "User"))
                    {
                        LinkAddNew.Visible = false;
                    }
                }
            }
            catch (Exception)
            {             
             
            }                    
        }
        protected void getData()
        {
            SPWeb web = SPContext.Current.Web;
            SPListItemCollection listItems = null;
            SPList spList = web.Lists.TryGetList("JobList");
            if (spList != null)
            {
                SPQuery qry = new SPQuery();
                qry.RowLimit = 5;
                qry.Query =
                @"   <OrderBy>
                <FieldRef Name='PubDate' Ascending='FALSE' />
                </OrderBy>";
                listItems = spList.GetItems(qry);
            }

            rptdatatable.DataSource = listItems.GetDataTable();
            rptdatatable.DataBind();
        }
        protected void Linkto(object sender, EventArgs e)
        {
            LinkButton lbtnID = sender as LinkButton;
            //string sitecolURL = SPContext.Current.Web.Site.Url;
            string sitecolURL = SPContext.Current.Web.Url;
            Response.Redirect(sitecolURL + "/_layouts/15/page/JobDetail.aspx?ID=" + lbtnID.CommandArgument);
        }

    }
}
