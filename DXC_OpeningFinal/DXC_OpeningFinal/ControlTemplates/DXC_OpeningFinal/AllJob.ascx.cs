using Microsoft.SharePoint;
using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace DXC_OpeningFinal.ControlTemplates.DXC_OpeningFinal
{
    public partial class AllJob : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SPWeb web = SPContext.Current.Web;
            SPList list = web.Lists["JobList"];           
            SPListItemCollection items = list.Items;
            rptdatatable.DataSource = items.GetDataTable();
            rptdatatable.DataBind();
           //========================================================            
            
        }
    }
}
