<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
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
</head>
<body>

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
                <div style="margin-right: 6px">
                    <img width="20" height="20" src="/_layouts/15/img/time.png" />
                </div>
                <div>
                    <asp:Label ID="lblpubDate" Text="" runat="server"></asp:Label>
                </div>

            </div>
        </div>
        <p id="shortDes">
            <asp:Literal ID="p_shortDes" runat="server"></asp:Literal>
        </p>
        <p id="longDes">
            <asp:Literal ID="p_longDes" runat="server"></asp:Literal>
        </p>
        <div id="bonus">
            <div>
                <img width="20" height="20" src="/_layouts/15/img/gift-icon.png" />
            </div>
            <div>Referral Bonus: </div>
            <div>
                <asp:Literal ID="p_bonus" runat="server"></asp:Literal>
            </div>
            <div>$</div>
            
        </div>
        <div id="contact">
            <div>
                <img width="20" height="20" src="/_layouts/15/img/hrcontact.png" />
            </div>
            <div>HR Contact: </div>
            <div>
                <asp:Literal ID="p_contact" runat="server"></asp:Literal>
            </div>
        </div>
        <p id="status">
            <asp:Label ID="jobstatus" runat="server"></asp:Label>
            <%--<asp:Literal ID="p_status" runat="server"></asp:Literal>--%>
        </p>
        <div id="editButton">
            <div class="editbutton" runat="server" id="updatejob">
                <asp:LinkButton ID="btn_Update" runat="server" OnClick="btn_Update_Click">Update</asp:LinkButton>
            </div>
            <div class="editbutton" runat="server" id="deletejob">
                <asp:LinkButton ID="btn_Delete" runat="server" OnClick="btn_Delete_Click" OnClientClick="return confirm('Are you sure ???');">Delete</asp:LinkButton>
            </div>
            <div class="editbutton">
                <asp:LinkButton ID="btn_Cancel" runat="server" OnClick="btn_Cancel_Click">Cancel</asp:LinkButton>

            </div>
        </div>
    </div>
</body>
</html>


