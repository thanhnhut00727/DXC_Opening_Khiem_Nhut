﻿using Microsoft.SharePoint;
using Microsoft.SharePoint.Utilities;
using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace DXC_OpeningFinal.ControlTemplates.DXC_OpeningFinal
{
    public partial class Control_AddNewJob : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {         
            try
            {

                SPWeb web = SPContext.Current.Web;
                if (web != null)
                {
                    web.AllowUnsafeUpdates = true;

                    SPList list = web.Lists["JobList"];
                    if (list != null)
                    {
                        SPListItem newItem = list.AddItem();

                        newItem["_JobTitle"] = txtJobTitle.Text;
                        newItem["ShortDescription"] = txtShortDes.Text;
                        newItem["LongDescription"] = txtLongDes.Text;
                        newItem["RefernalBonus"] = txtReferralBonus.Text;
                        newItem["HRContact"] = txtHRContact.Text;
                        newItem["Status"] = txtStatus.Text;
                        newItem["PubDate"] = DateTime.Now;
                        newItem.Update();
                    }
                    web.AllowUnsafeUpdates = false;
                }
                
                lblNotification.Text = "Add new job was successful";
                notification.Visible = true;
                
            }
            catch (Exception)
            {
                lblNotification.Text = "Sorry, can not add new job !";
            }
            
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/_layouts/15/page/AllJobs.aspx");
        }
    }
}