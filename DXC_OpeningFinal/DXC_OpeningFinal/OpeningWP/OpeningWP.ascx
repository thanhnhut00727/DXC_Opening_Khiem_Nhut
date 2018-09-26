<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OpeningWP.ascx.cs" Inherits="DXC_OpeningFinal.OpeningWP.OpeningWP" %>
<link href="/_layouts/15/Style/CSS.css" rel="stylesheet" type="text/css" />

<style type="text/css">
    .auto-style1 {
        height: 28px;
    }
</style>

<div>
    <table id="mydata" class="display" cellspacing="0" width="100%">    
    <tbody>  
        <asp:Repeater ID="rptdatatable" runat="server">  
            <ItemTemplate>  
                <tr>  
                    <td>  
                          <h2><%# DataBinder.Eval(Container.DataItem, "_JobTitle") %></h2>
                    </td> 
                    <td>
                        <a href="#">read more</a>
                    </td>  
                </tr>  
            </ItemTemplate>  
        </asp:Repeater>  
    </tbody>  
    </table> 
</div>
<section class="Hyperlink">
    <div>
        <asp:HyperLink ID="LinkAllJob" runat="server" NavigateUrl="http://win-ikp5n1jcalv:1111/sites/HomePages/_layouts/15/DXC_OpeningFinal/AllJobs.aspx">All Job Opportunities</asp:HyperLink>
    </div>
    <div>
        <asp:HyperLink ID="LinkAddNew" runat="server" NavigateUrl="http://win-ikp5n1jcalv:1111/sites/HomePages/_layouts/15/DXC_OpeningFinal/AddNewJob.aspx">Add New</asp:HyperLink>
    </div>
</section>

