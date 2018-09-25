<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Control_All_Job.ascx.cs" Inherits="OpeningVacancies_Procject.ControlTemplates.OpeningVacancies_Procject.Control_All_Job" %>


<body>
    <form id="form1" runat="server">

        <div>
            <div id="divContainer">
                <table style="width: 370px;">
                    <%--  --Colum Job Title--%>
                    <tr>
                        <td class="col1">
                            <asp:Label ID="lblJobtTitle" runat="server">Job Title :</asp:Label>
                        </td>
                        <td class="col2">
                            <asp:TextBox ID="txtJobTitle" runat="server"></asp:TextBox>
                        </td>
                        <td class="col3">
                            <asp:RequiredFieldValidator ID="vldJobTitle" runat="server"
                                ControlToValidate="txtJobTitle"><img src="../../../_layouts/15/img/error_small.png" /></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <%-- --Colum Short Description--%>
                    <tr>
                        <td class="col1">
                            <asp:Label ID="lblShortDes" runat="server">Short Description :</asp:Label>
                        </td>
                        <td class="col2">
                            <asp:TextBox ID="txtShortDes" runat="server"></asp:TextBox>
                        </td>
                        <td class="col3">
                            <asp:RequiredFieldValidator ID="vldShortDes" runat="server"
                                ControlToValidate="txtShortDes"><img src="../../../_layouts/15/img/error_small.png" /></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <%-- -- Colum LongShort--%>
                    <tr>
                        <td class="col1">
                            <asp:Label ID="lblLongDes" runat="server">Long DesCription :</asp:Label>
                        </td>
                        <td class="col2">
                            <asp:TextBox ID="txtLongDes" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
                        </td>
                        <%--<td class="col3">
                        <asp:RequiredFieldValidator ID="vldLongDes" runat="server" 
                            ControlToValidate="txtLongDes"><img src="../../../_layouts/15/img/error_small.png" /></asp:RequiredFieldValidator>
                    </td>--%>
                    </tr>

                    <%-- --Column Referral Bonus--%>
                    <tr>
                        <td class="col1">
                            <asp:Label ID="lblReferralBonus" runat="server">Referral Bonus :</asp:Label>
                        </td>
                        <td class="col2">
                            <asp:TextBox ID="txtReferralBonus" runat="server"></asp:TextBox>
                        </td>
                        <%-- <td class="col3">
                        <asp:RequiredFieldValidator ID="vldReferralBonus" runat="server" 
                            ControlToValidate="txtReferralBonus"><img src="../../../_layouts/15/img/error_small.png" /></asp:RequiredFieldValidator>
                    </td>--%>
                    </tr>

                    <%--  --- culunm HR Contact--%>
                    <tr>
                        <td class="col1">
                            <asp:Label ID="lblHRContact" runat="server">HR Contact :</asp:Label>
                        </td>
                        <td class="col2">
                            <asp:TextBox ID="txtHRContact" runat="server"></asp:TextBox>
                        </td>
                        <%-- <td class="col3">
                        <asp:RequiredFieldValidator ID="vldHRContact" runat="server" 
                            ControlToValidate="txtHRContact"><img src="../../../_layouts/15/img/error_small.png" /></asp:RequiredFieldValidator>
                    </td>--%>
                    </tr>

                    <%--  --- Colum Status--%>
                    <tr>
                        <td class="col1">
                            <asp:Label ID="lblStatus" runat="server"> Status :</asp:Label>
                        </td>
                        <td class="col2">
                            <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
                        </td>
                        <td class="col3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txtHRContact"><img src="../../../_layouts/15/img/error_small.png" /></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:Button runat="server" Text="Save" ID="SaveButton" />
                            <asp:Button runat="server" Text="Cancel" ID="CancelButton" />
                        </td>
                    </tr>
            </div>
        </div>
    </form>
</body>
