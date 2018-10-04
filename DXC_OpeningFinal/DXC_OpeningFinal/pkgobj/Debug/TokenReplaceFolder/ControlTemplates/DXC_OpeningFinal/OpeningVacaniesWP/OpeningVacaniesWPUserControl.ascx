<%@ Assembly Name="DXC_OpeningFinal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=6ce3279edf1ab8cf" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OpeningVacaniesWPUserControl.ascx.cs" Inherits="DXC_OpeningFinal.OpeningVacaniesWP.OpeningVacaniesWPUserControl" %>
<link href="../_layouts/15/Style/CSS.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    .auto-style1 {
        height: 28px;
    }
</style>

<h2 id="title">Opening Vacancies</h2>
<div id="OpeningWP">
    <div id="dataOpening">
        <asp:Repeater ID="rptdatatable" runat="server">
            <ItemTemplate>
                <div id="dataOpening-item">
                <div id="dataOpening-title">
                    <h2><%# DataBinder.Eval(Container.DataItem, "_JobTitle") %></h2>
                    <asp:Label CssClass="date" ID="lblDate" runat="server" Text='<%# TimeAgo((DateTime)Eval("PubDate")) %>'></asp:Label>
                </div>
                <div id="dataOpening-readmore">
                    <asp:LinkButton ID="lbtnReadmoreHome" runat="server" CommandArgument='<%# Eval("ID") %>' OnClick="Linkto">read more</asp:LinkButton>
                </div>
                    </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div class="Hyperlink">
        <div>
            <asp:HyperLink ID="LinkAllJob" runat="server" NavigateUrl="/_layouts/15/page/AllJobs.aspx">All Job Opportunities</asp:HyperLink>
        </div>
        <div>
            <asp:HyperLink CssClass="hyperlinkAddnew" ID="LinkAddNew" runat="server" NavigateUrl="/_layouts/15/page/AddNewJob.aspx">Add New</asp:HyperLink>
        </div>
    </div>
</div>

