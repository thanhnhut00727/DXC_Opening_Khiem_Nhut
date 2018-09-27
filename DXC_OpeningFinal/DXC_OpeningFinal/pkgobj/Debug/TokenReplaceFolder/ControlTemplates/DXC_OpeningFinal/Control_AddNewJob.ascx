<%@ Assembly Name="DXC_OpeningFinal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=6ce3279edf1ab8cf" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Control_AddNewJob.ascx.cs" Inherits="DXC_OpeningFinal.ControlTemplates.DXC_OpeningFinal.Control_AddNewJob" %>



<style type="text/css">
    .auto-style1 {
        width: 120px;
    }
</style>


<div>
    <div id="divContainer">
        <table style="width: 465px;">
            <%--  --Colum Job Title--%>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblJobtTitle" runat="server">Job Title :</asp:Label>
                </td>
                <td class="col2">
                    <asp:TextBox ID="txtJobTitle" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="col3">
                    <asp:RequiredFieldValidator ID="vldJobTitle" runat="server"
                        ControlToValidate="txtJobTitle"><img src="../../../_layouts/15/img/error.png" /></asp:RequiredFieldValidator>
                </td>
            </tr>

            <%-- --Colum Short Description--%>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblShortDes" runat="server">Short Description :</asp:Label>
                </td>
                <td class="col2">
                    <asp:TextBox ID="txtShortDes" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="col3">
                    <asp:RequiredFieldValidator ID="vldShortDes" runat="server"
                        ControlToValidate="txtShortDes"><img src="../../../_layouts/15/img/error.png" /></asp:RequiredFieldValidator>
                </td>
            </tr>
            <%-- -- Colum LongShort--%>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblLongDes" runat="server">Long DesCription :</asp:Label>
                </td>
                <td class="col2">
                    <asp:TextBox ID="txtLongDes" runat="server" TextMode="MultiLine" Rows="5" Width="216px"></asp:TextBox>
                </td>
                <%--<td class="col3">
                        <asp:RequiredFieldValidator ID="vldLongDes" runat="server" 
                            ControlToValidate="txtLongDes"><img src="../../../_layouts/15/img/error_small.png" /></asp:RequiredFieldValidator>
                    </td>--%>
            </tr>

            <%-- --Column Referral Bonus--%>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblReferralBonus" runat="server">Referral Bonus :</asp:Label>
                </td>
                <td class="col2">
                    <asp:TextBox ID="txtReferralBonus" runat="server" Width="216px"></asp:TextBox>
                </td>
                <%-- <td class="col3">
                        <asp:RequiredFieldValidator ID="vldReferralBonus" runat="server" 
                            ControlToValidate="txtReferralBonus"><img src="../../../_layouts/15/img/error_small.png" /></asp:RequiredFieldValidator>
                    </td>--%>
            </tr>

            <%--  --- culunm HR Contact--%>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblHRContact" runat="server">HR Contact :</asp:Label>
                </td>
                <td class="col2">
                    <asp:TextBox ID="txtHRContact" runat="server" Width="216px"></asp:TextBox>
                </td>
                <%-- <td class="col3">
                        <asp:RequiredFieldValidator ID="vldHRContact" runat="server" 
                            ControlToValidate="txtHRContact"><img src="../../../_layouts/15/img/error_small.png" /></asp:RequiredFieldValidator>
                    </td>--%>
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
            <tr>

                <td class="auto-style1"></td>
                <td>
                    <asp:Button runat="server" Text="Save" ID="SaveButton" Height="28px" Width="90px" OnClick="SaveButton_Click"/>
                    <asp:Button runat="server" Text="Cancel" ID="CancelButton" Height="28px" Width="90px" />
                </td>
            </tr>
        </table>
    </div>
</div>
