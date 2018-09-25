<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OpeningVacancies_WP.ascx.cs" Inherits="OpeningVacancies_Procject.OpeningVacancies_WP.OpeningVacancies_WP" %>


<style type="text/css">
    .auto-style3 {
        width: 124px;
    }
</style>


<table style="width: 34%;">
   <%-- <tr>
        <td class="auto-style1">JobTitle</td>
        <td><a href="#">RedMore</a></td>

    </tr>
   <tr>
        <td class="auto-style1">JobTitle</td>
        <td><a href="#">RedMore</a></td>

    </tr>
    <tr>
        <td class="auto-style1">
            <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl="../_layouts/15/OpeningVacancies_Procject/AppPages.aspx">All Job</asp:HyperLink>

        </td>
        <td>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="../">NewJob</asp:HyperLink>

        </td>
    
    </tr>--%>
    <tbody>  
        <asp:Repeater ID="rptdatatable" runat="server">  
            <ItemTemplate>  
                <tr>  
                    <td>  
                          <%# DataBinder.Eval(Container.DataItem, "_JobTitle") %>  
                    </td>  
                    <td>  
                          <%# DataBinder.Eval(Container.DataItem, "HRContact") %>  
                    </td>  
                   
                </tr>  
            </ItemTemplate>  
        </asp:Repeater>  
    </tbody>  
    <tr>
        <td class="auto-style3">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://win-ikp5n1jcalv:6969/sites/HomePages/_layouts/15/OpeningVacancies_Procject/AppPages.aspx">All Job</asp:HyperLink>
        </td>
        <td>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://win-ikp5n1jcalv:6969/sites/HomePages/_layouts/15/OpeningVacancies_Procject/AppPages.aspx">New Job</asp:HyperLink> 
    </tr>
</table>
