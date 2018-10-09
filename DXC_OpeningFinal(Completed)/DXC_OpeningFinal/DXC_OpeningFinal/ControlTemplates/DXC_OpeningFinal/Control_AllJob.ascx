<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Control_AllJob.ascx.cs" Inherits="DXC_OpeningFinal.ControlTemplates.DXC_OpeningFinal.AllJob" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="/_layouts/15/Style/CSS.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <asp:SiteMapPath SiteMapProvider="CurrentNavSiteMapProviderNoEncode" ID="SiteMapPath1" SkipLinkText="" NodeStyle-CssClass="ms-sitemapdirectional" runat="server" RenderCurrentNodeAsLink="True">
        <NodeStyle CssClass="ms-sitemapdirectional" />
    </asp:SiteMapPath>
    <asp:Repeater ID="rptdatatable" runat="server">
        <ItemTemplate>
            <div id="dataAllJob">
                <div class="stamp <%# DataBinder.Eval(Container.DataItem, "Status").ToString()%>">
                    <%# DataBinder.Eval(Container.DataItem, "Status") %>
                </div>
                <div id="jobtitle">
                    <h2><%# DataBinder.Eval(Container.DataItem, "_JobTitle") %> </h2>
                </div>
                <div id="shortdescription">
                    <%# DataBinder.Eval(Container.DataItem, "ShortDescription") %>
                </div>
                <asp:LinkButton ID="lbtnReadmore" runat="server" CommandArgument='<%# Eval("ID") %>' OnClick="Linkto">read more</asp:LinkButton>
                <hr width="50%" />
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <div class="pagination">
        <div>
            <asp:LinkButton ID="lnkBtnPrev" runat="server" OnClick="lnkBtnPrev_Click"><<</asp:LinkButton>
        </div>
        <div style="overflow: hidden;">
            <asp:Repeater ID="rptPages" runat="server" OnItemCommand="rptPages_ItemCommand">
                <ItemTemplate>
                    <asp:LinkButton ID="btnPage" CommandName="Page" CssClass="pagination_1"
                        CommandArgument="<%# Container.DataItem %>"
                        runat="server"><%# Container.DataItem %>
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div>
            <asp:LinkButton ID="lnkBtnNext" runat="server" OnClick="lnkBtnNext_Click">>></asp:LinkButton>
        </div>
    </div>
    <span>
        <asp:HyperLink ID="LinkAddNewJob2" runat="server">Add New</asp:HyperLink>
    </span>
</body>
</html>



