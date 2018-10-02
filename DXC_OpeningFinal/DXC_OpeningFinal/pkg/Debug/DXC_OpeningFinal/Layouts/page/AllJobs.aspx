﻿<%@ Assembly Name="DXC_OpeningFinal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=6ce3279edf1ab8cf" %>
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllJobs.aspx.cs" Inherits="DXC_OpeningFinal.Layouts.DXC_OpeningFinal.AllJobs" DynamicMasterPageFile="~masterurl/default.master" %>
<%@ Register TagPrefix="wssuc" TagName="Control_AllJob"  Src="~/_controltemplates/15/DXC_OpeningFinal/Control_AllJob.ascx" %>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">

</asp:Content>

<asp:Content ID="Main" ContentPlaceHolderID="PlaceHolderMain" runat="server">
    
   <asp:SiteMapPath SiteMapProvider="CurrentNavSiteMapProviderNoEncode" id="SiteMapPath1" SkipLinkText="" NodeStyle-CssClass="ms-sitemapdirectional" runat="server" RenderCurrentNodeAsLink="True">
				<NodeStyle CssClass="ms-sitemapdirectional" />
			</asp:SiteMapPath> 
   
    
    <div class="container">
       <span>
           <wssuc:Control_AllJob runat="server" ID="AllJob"></wssuc:Control_AllJob>
       </span>

        <span>
            <asp:HyperLink ID="LinkAddNewJob2" runat="server" NavigateUrl="~/_layouts/15/page/AddNewJob.aspx">Add New</asp:HyperLink>
        </span>
    </div>

</asp:Content>

<asp:Content ID="PageTitle" ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
    All Job Opportunities
</asp:Content>

<asp:Content ID="PageTitleInTitleArea" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    All Job Opportunities
</asp:Content>