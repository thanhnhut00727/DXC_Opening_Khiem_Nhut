﻿using Microsoft.SharePoint;
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
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }          
            //LoadData();
            //========================================================            
        }
        private void LoadData()
        {
            SPWeb web = SPContext.Current.Web;
            //SPList listofEmp = web.Lists["JobList"];  //ListName
            //SPListItemCollection col = listofEmp.GetItems();

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

            //rptdatatable.DataSource = col.GetDataTable();
            //rptdatatable.DataBind();


            DataTable dtEmp = col.GetDataTable();
            int dtcount = dtEmp.Rows.Count;
            PagedDataSource pgitems = new PagedDataSource();
            System.Data.DataView dv = new System.Data.DataView(dtEmp);
            pgitems.DataSource = dv;
            pgitems.AllowPaging = true;
            pgitems.PageSize = 4;
            pgitems.CurrentPageIndex = PageNumber;

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
                rptPages.Visible = false;
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

        protected void rptPages_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            LoadData();
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

    }
}
