<%@ Assembly Name="DXC_OpeningFinal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=6ce3279edf1ab8cf" %>
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllJobs.aspx.cs" Inherits="DXC_OpeningFinal.Layouts.DXC_OpeningFinal.AllJobs" DynamicMasterPageFile="~masterurl/default.master" %>
<%@ Register TagPrefix="wssuc" TagName="AllJob"  Src="~/_controltemplates/15/DXC_OpeningFinal/AllJob.ascx" %>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
 
</asp:Content>

<asp:Content ID="Main" ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <div class="container">
       <div>
           <wssuc:AllJob runat="server" ID="AllJob"></wssuc:AllJob>
       </div>

        <span>
            <asp:HyperLink ID="LinkAddNewJob2" runat="server" NavigateUrl="http://win-ikp5n1jcalv:1111/sites/HomePages/_layouts/15/DXC_OpeningFinal/AddNewJob.aspx">Add New</asp:HyperLink>
        </span>
    </div>

</asp:Content>

<asp:Content ID="PageTitle" ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
    All Job Opportunities
</asp:Content>

<asp:Content ID="PageTitleInTitleArea" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    All Job Opportunities
</asp:Content>
