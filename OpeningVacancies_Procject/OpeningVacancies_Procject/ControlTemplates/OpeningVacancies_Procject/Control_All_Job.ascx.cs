using Microsoft.SharePoint;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace OpeningVacancies_Procject.ControlTemplates.OpeningVacancies_Procject
{
    public partial class Control_All_Job : UserControl
    {
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            SPWeb web = SPContext.Current.Web;
            if (web != null)
            {
                web.AllowUnsafeUpdates = true;

                SPList list = web.Lists["Books"];
                if (list != null)
                {
                    SPListItem newItem = list.AddItem();

                    newItem["Title"] = txtBookName.Text;
                    newItem["AuthorName"] = txtAuthor.Text;
                    newItem["BookDescription"] = txtBookDescription.Text;
                    newItem["Quantity"] = txtQuantity.Text;
                    newItem["Price"] = txtPrice.Text;
                    newItem["PublishedDate"] = SPUtility.CreateISO8601DateTimeFromSystemDateTime(DateTime.Now);

                    newItem.Update();

                    string listUrl = web.ServerRelativeUrl + "/Lists/Books";
                    SPUtility.Redirect(listUrl, SPRedirectFlags.Default, HttpContext.Current);
                }

                web.AllowUnsafeUpdates = false;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }
    }
}
