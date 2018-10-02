<%@ Assembly Name="DXC_OpeningFinal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=6ce3279edf1ab8cf" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Control_AddNewJob.ascx.cs" Inherits="DXC_OpeningFinal.ControlTemplates.DXC_OpeningFinal.Control_AddNewJob" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="/_layouts/15/Style/CSS.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 120px;
        }
    </style>
</head>
<body>

    <div style="margin-bottom: 10px">
        <asp:SiteMapPath PathSeparator="" SiteMapProvider="CurrentNavSiteMapProviderNoEncode" ID="SiteMapPath1" SkipLinkText="" NodeStyle-CssClass="ms-sitemapdirectional" runat="server" RenderCurrentNodeAsLink="True">
        </asp:SiteMapPath>
    </div>
    <div id="notification" runat="server" class="notification" visible="false">
        <asp:Label ID="lblNotification" Text="" runat="server"></asp:Label>
    </div>

    <div id="divContainer">
        <table>
            <%--  --Colum Job Title--%>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblJobtTitle" runat="server">Job Title :</asp:Label>
                </td>
                <td class="col2">
                    <asp:TextBox ID="txtJobTitle" runat="server" Width="98%"></asp:TextBox>
                </td>
                <td class="col3">
                    <asp:RequiredFieldValidator ID="vldJobTitle" runat="server"
                        ControlToValidate="txtJobTitle"><img src="/_layouts/15/img/error.png" style="width:25px; height:25px" /></asp:RequiredFieldValidator>
                </td>
            </tr>

            <%-- --Colum Short Description--%>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblShortDes" runat="server">Short Description :</asp:Label>
                </td>
                <td class="col2">
                    <asp:TextBox ID="txtShortDes" runat="server" Width="98%"></asp:TextBox>
                </td>
                <td class="col3">
                    <asp:RequiredFieldValidator ID="vldShortDes" runat="server"
                        ControlToValidate="txtShortDes"><img src="/_layouts/15/img/error.png" style="width:25px; height:25px"/></asp:RequiredFieldValidator>
                </td>
            </tr>
            <%-- -- Colum LongShort--%>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblLongDes" runat="server">Long DesCription :</asp:Label>
                </td>
                <td class="col2">
                    <asp:TextBox ID="txtLongDes" runat="server" TextMode="MultiLine" Rows="9" Width="98%"></asp:TextBox>
                </td>
            </tr>

            <%-- --Column Referral Bonus--%>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblReferralBonus" runat="server">Referral Bonus :</asp:Label>
                </td>
                <td class="col2">
                    <asp:TextBox ID="txtReferralBonus" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="col3">
                    <asp:RegularExpressionValidator ControlToValidate="txtReferralBonus" ValidationExpression="\d+" Display="Static" EnableClientScript="true"
                        ID="RegularExpressionValidator1" runat="server" ErrorMessage="Referral must be number"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <%--  --- culunm HR Contact--%>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblHRContact" runat="server">HR Contact :</asp:Label>
                </td>
                <td class="col2">
                    <asp:TextBox ID="txtHRContact" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="col3">
                    <asp:RequiredFieldValidator ID="vldHRContact" runat="server"
                        ControlToValidate="txtHRContact"><img src="/_layouts/15/img/error.png" style="width:25px; height:25px"/></asp:RequiredFieldValidator>
                </td>
            </tr>
            <%--  --- Colum Status--%>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblStatus" runat="server"> Status :</asp:Label>
                </td>
                <td class="col2">
                    <asp:DropDownList ID="txtStatus" runat="server">
                        <asp:ListItem Text="Open" Value="Open"></asp:ListItem>
                        <asp:ListItem Text="Close" Value="Close"></asp:ListItem>
                    </asp:DropDownList>
                </td>

            </tr>
        </table>
        <div id="submitButton">
            <div>
                <asp:Button runat="server" Text="Add" ID="SaveButton" Height="28px" Width="90px" OnClick="SaveButton_Click" />
            </div>
            <div>
                <asp:Button runat="server" Text="Cancel" ID="CancelButton" Height="28px" Width="90px" OnClick="CancelButton_Click" />
            </div>
        </div>
    </div>

</body>
</html>


