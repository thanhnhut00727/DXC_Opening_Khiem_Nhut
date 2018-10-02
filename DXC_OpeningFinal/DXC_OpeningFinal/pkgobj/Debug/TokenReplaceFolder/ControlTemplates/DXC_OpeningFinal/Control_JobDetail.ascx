﻿<%@ Assembly Name="DXC_OpeningFinal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=6ce3279edf1ab8cf" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Control_JobDetail.ascx.cs" Inherits="DXC_OpeningFinal.ControlTemplates.DXC_OpeningFinal.Control_JobDetail" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="/_layouts/15/Style/CSS.css" rel="stylesheet" type="text/css" />
    <link href="/_layouts/15/Style/font-awesome-ie7.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/_layouts/15/Style/font-awesome-ie7.min.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/_layouts/15/Style/font-awesome.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/_layouts/15/Style/font-awesome.min.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
    <i class="icon-usd"></i> icon-usd
    <i class="icon-paper-clip"></i> icon-paper-clip
    <div style="margin-bottom: 10px">
        <asp:SiteMapPath SiteMapProvider="CurrentNavSiteMapProviderNoEncode" ID="SiteMapPath1" SkipLinkText="" NodeStyle-CssClass="ms-sitemapdirectional" runat="server" RenderCurrentNodeAsLink="True">
            <NodeStyle CssClass="ms-sitemapdirectional" />
        </asp:SiteMapPath>
    </div>
    <div id="jobDetail">
        <div id="title_Job">
            <p>
                <asp:Literal ID="p_jobtitle" runat="server"></asp:Literal>
            </p>
            <div class="date margin">
                <i style="padding-right: 10px; vertical-align: inherit;" class="icon-time"></i><asp:Label ID="lblpubDate" Text="" runat="server"></asp:Label>
            </div>
        </div>
        <p id="shortDes">
            <asp:Literal ID="p_shortDes" runat="server"></asp:Literal>
        </p>
        <p id="longDes">
            <asp:Literal ID="p_longDes" runat="server"></asp:Literal>
        </p>
        <p id="bonus">
            <asp:Literal ID="p_bonus" runat="server"></asp:Literal>
        </p>
        <p id="contact">
            <asp:Literal ID="p_contact" runat="server"></asp:Literal>
        </p>
        <p id="status">
            <asp:Literal ID="p_status" runat="server"></asp:Literal>
        </p>

        <div id="editButton">
            <div>
                <asp:LinkButton ID="btn_Update" runat="server">Update</asp:LinkButton>
            </div>
            <div>
                <asp:LinkButton ID="btn_Delete" runat="server" OnClick="btn_Delete_Click">Delete</asp:LinkButton>
            </div>
            <div>
                <asp:LinkButton ID="btn_Cancel" runat="server" OnClick="btn_Cancel_Click">Cancel</asp:LinkButton>

            </div>
        </div>
    </div>
</body>
</html>


