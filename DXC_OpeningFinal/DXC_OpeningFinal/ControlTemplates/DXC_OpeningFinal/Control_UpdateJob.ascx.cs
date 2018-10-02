using Microsoft.SharePoint;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace DXC_OpeningFinal.ControlTemplates
{
    public partial class Control_UpdateJob : UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SPWeb web = SPContext.Current.Web;
                if (web != null)
                {
                    string ID = Request.QueryString["IDItem"];
                    SPList list = web.Lists["JobList"];
                    SPListItemCollection items = list.Items;
                    //txtID.Text = idrequest;

                    SPListItem item = items.GetItemById(int.Parse(ID));
                    txtJobTitle.Text = item["_JobTitle"].ToString();
                    txtShortDes.Text = item["ShortDescription"].ToString();
                    txtLongDes.Text = item["LongDescription"].ToString();
                    txtReferralBonus.Text = item["RefernalBonus"].ToString();
                    txtHRContact.Text = item["HRContact"].ToString();
                    txtStatus.Text = item["Status"].ToString();
                    
                }
            }

        }
        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            string ID = Request.QueryString["IDItem"];
            SPWeb web = SPContext.Current.Web;
            web.AllowUnsafeUpdates = true;
            SPList list = web.Lists["JobList"];
            //SPListItemCollection items = list.Items;
            SPListItem item = list.GetItemById(int.Parse(ID));
            item["_JobTitle"] = txtJobTitle.Text;
            item["ShortDescription"] = txtShortDes.Text;
            item["LongDescription"] = txtJobTitle.Text;
            item["LongDescription"] = txtLongDes.Text;
            item["RefernalBonus"] = txtReferralBonus.Text;
            item["HRContact"] = txtHRContact.Text;
            item["Status"] = txtStatus.Text;
            item.Update();
            web.AllowUnsafeUpdates = false;

            Response.Redirect("~/_layouts/15/page/AllJobs.aspx");
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {

        } 

    }
}
