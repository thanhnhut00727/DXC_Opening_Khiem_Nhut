using Microsoft.SharePoint;
using Microsoft.SharePoint.Administration.Claims;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


namespace DXC_OpeningFinal.ControlTemplates.DXC_OpeningFinal
{
    
    public partial class Control_JobDetail : UserControl
    {
        string IDItem;
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
            loaddata();
            try
            {
                SPUser user = SPContext.Current.Web.CurrentUser;
                SPClaimProviderManager mgr = SPClaimProviderManager.Local;
                if (mgr != null)
                {
                    if (IsUserMemberOfGroup(user, "HR Group"))
                    {
                        deletejob.Visible = true;
                        updatejob.Visible = true;
                    }
                    else if (IsUserMemberOfGroup(user, "User"))
                    {
                        deletejob.Visible = false;
                        updatejob.Visible = false;
                    }
                }
            }
            catch (Exception)
            {

            } 
        }
        protected void loaddata()
        {
            
            SPWeb web = SPContext.Current.Web;
            if (web != null)
            {
                IDItem = Request.QueryString["ID"];
                SPList list = web.Lists["JobList"];
                SPListItemCollection items = list.Items;
                SPListItem item = items.GetItemById(int.Parse(IDItem));
                p_jobtitle.Text = item["_JobTitle"].ToString();
                lblpubDate.Text = TimeAgo((DateTime)item["PubDate"]);
                p_bonus.Text = setvalue(item["RefernalBonus"]).ToString();
                p_contact.Text = item["HRContact"].ToString();
                p_shortDes.Text = item["ShortDescription"].ToString();
                p_longDes.Text = setvalue(item["LongDescription"]).ToString();
                jobstatus.Text = item["Status"].ToString();
            }
            if (jobstatus.Text == "Open")
                jobstatus.CssClass = "statusOpen";
            else if (jobstatus.Text == "Close")
                jobstatus.CssClass = "statusClose";
        }
        protected object setvalue(object value)
        {
            if (value == null)
                return "";
            return value;
        }
        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            IDItem = Request.QueryString["ID"];
            SPWeb oWeb = SPContext.Current.Web;
            //Get a Particular List  
            SPList oList = oWeb.Lists["JobList"];
            SPListItem itemToDelete = oList.GetItemById(int.Parse(IDItem));
            // SPListItem item = oList.Items;
            itemToDelete.Delete();
            Response.Redirect(SPContext.Current.Web.Url + "/_layouts/15/page/AllJobs.aspx");
        }

        protected void btn_Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect(SPContext.Current.Web.Url + "/_layouts/15/page/AllJobs.aspx");
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            IDItem = Request.QueryString["ID"];
            //LinkButton lbtnID = sender as LinkButton;
            //string sitecolURL = SPContext.Current.Web.Site.Url;
            string sitecolURL = SPContext.Current.Web.Url;
            Response.Redirect(sitecolURL + "/_layouts/15/page/UpdateJob.aspx?ID=" + IDItem);
        }
    }
}
