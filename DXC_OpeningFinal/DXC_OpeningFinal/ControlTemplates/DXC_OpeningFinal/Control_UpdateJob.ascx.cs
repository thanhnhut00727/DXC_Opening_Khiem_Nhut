using Microsoft.SharePoint;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace DXC_OpeningFinal.ControlTemplates.DXC_OpeningFinal
{
    public partial class Control_Update : UserControl
    {
        string IDItem;
        protected void Page_Load(object sender, EventArgs e)
        {
            clickhere.NavigateUrl = SPContext.Current.Web.Url + "/_layouts/15/page/AllJobs.aspx";
            try
            {
                if (!Page.IsPostBack)
                {
                    SPWeb web = SPContext.Current.Web;
                    if (web != null)
                    {
                        IDItem = Request.QueryString["ID"];
                        SPList list = web.Lists["JobList"];
                        SPListItemCollection items = list.Items;
                        //txtID.Text = idrequest;

                        SPListItem item = items.GetItemById(int.Parse(IDItem));
                        txtJobTitle.Text = item["_JobTitle"].ToString();
                        txtShortDes.Text = item["ShortDescription"].ToString();
                        txtLongDes.Text = setvalue(item["LongDescription"]).ToString();
                        txtReferralBonus.Text = setvalue(item["RefernalBonus"]).ToString();
                        txtHRContact.Text = item["HRContact"].ToString();
                        txtStatus.Text = item["Status"].ToString();

                    }
                    
                }             

            }
            catch (Exception)
            {
                lblNotification.Text = "Sorry, can not found !";
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            try
            {
                IDItem = Request.QueryString["ID"];
                SPWeb web = SPContext.Current.Web;
                web.AllowUnsafeUpdates = true;
                SPList list = web.Lists["JobList"];
                //SPListItemCollection items = list.Items;
                SPListItem item = list.GetItemById(int.Parse(IDItem));
                item["_JobTitle"] = txtJobTitle.Text;
                item["ShortDescription"] = txtShortDes.Text;
                item["LongDescription"] = txtJobTitle.Text;
                item["LongDescription"] = txtLongDes.Text;
                item["RefernalBonus"] = txtReferralBonus.Text;
                item["HRContact"] = txtHRContact.Text;
                item["Status"] = txtStatus.Text;
                item.Update();
                web.AllowUnsafeUpdates = false;
                lblNotification.Text = "Update job successfully. Back to see all job click ";
                notification.Visible = true;
            }
            catch (Exception)
            {
                lblNotification.Text = "Update Job failed !";
            }
            
            
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect(SPContext.Current.Web.Url + "/_layouts/15/page/AllJobs.aspx");
        }
        protected object setvalue(object value)
        {
            if (value == null)
                return "";
            return value;
        }
    }
}
