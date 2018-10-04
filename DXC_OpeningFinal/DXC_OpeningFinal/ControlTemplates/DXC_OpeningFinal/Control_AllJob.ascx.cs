using Microsoft.SharePoint;
using Microsoft.SharePoint.Administration.Claims;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace DXC_OpeningFinal.ControlTemplates.DXC_OpeningFinal
{
    public partial class AllJob : UserControl
    {
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
            if (!IsPostBack)
            {
                LoadData();
            }          
            try
            {
                SPUser user = SPContext.Current.Web.CurrentUser;
                SPClaimProviderManager mgr = SPClaimProviderManager.Local;
                if (mgr != null)
                {
                    if (IsUserMemberOfGroup(user, "HR Group"))
                    {
                        LinkAddNewJob2.Visible = true;
                    }
                    else if (IsUserMemberOfGroup(user, "User"))
                    {
                        LinkAddNewJob2.Visible = false;
                    }
                }
            }
            catch (Exception)
            {

            }  
            //LoadData();
            //========================================================            
        }
        
        private void LoadData()
        {
            SPWeb web = SPContext.Current.Web;

            SPListItemCollection col = null;
            SPList listofEmp = web.Lists.TryGetList("JobList");
            if (listofEmp != null)
            {
                SPQuery qry = new SPQuery();
                qry.Query =
                @"   <OrderBy>
                <FieldRef Name='PubDate' Ascending='FALSE' />
                </OrderBy>";
                col = listofEmp.GetItems(qry);
            }

            DataTable dtEmp = col.GetDataTable();
           
            PagedDataSource pgitems = new PagedDataSource();
            System.Data.DataView dv = new System.Data.DataView(dtEmp);
            pgitems.DataSource = dv;
            pgitems.AllowPaging = true;
            pgitems.PageSize = 4;
            pgitems.CurrentPageIndex = PageNumber;
            int dtcount = pgitems.PageCount;
            if (pgitems.PageCount > 1)
            {
                rptPages.Visible = true;
                System.Collections.ArrayList pages = new System.Collections.ArrayList();
                for (int i = 0; i < pgitems.PageCount; i++)
                    pages.Add((i + 1).ToString());
                rptPages.DataSource = pages;
                rptPages.DataBind();
                if (dtcount - 1 == PageNumber)
                {
                    lnkBtnNext.Visible = false;
                }
                else
                {
                    lnkBtnNext.Visible = true;
                }
                if (PageNumber == 0)
                {
                    lnkBtnPrev.Visible = false;
                }
                else
                {
                    lnkBtnPrev.Visible = true;
                }
            }
            else
            {
                rptPages.Visible = false;
                lnkBtnNext.Visible = false;
                lnkBtnPrev.Visible = false;
            }               
            rptdatatable.DataSource = pgitems;
            rptdatatable.DataBind();

        }
        public int PageNumber
        {
            get
            {
                if (ViewState["PageNumber"] != null)
                    return Convert.ToInt32(ViewState["PageNumber"]);
                else
                    return 0;
            }
            set
            {
                ViewState["PageNumber"] = value;
            }
        }
        protected void lnkBtnPrev_Click(object sender, EventArgs e)
        {
            PageNumber--;
            LoadData();
        }
        protected void lnkBtnNext_Click(object sender, EventArgs e)
        {
            PageNumber++;
            LoadData();
        }
        protected void Linkto(object sender, EventArgs e)
        {
            LinkButton lbtnID = sender as LinkButton;
            string sitecolURL = SPContext.Current.Web.Site.Url;
            Response.Redirect(sitecolURL + "/_layouts/15/page/JobDetail.aspx?ID=" + lbtnID.CommandArgument);
        }

        protected void rptPages_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            LoadData();
        }
    }
}
