<%@ Assembly Name="DXC_OpeningFinal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=6ce3279edf1ab8cf" %>
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewJob.aspx.cs" Inherits="DXC_OpeningFinal.Layouts.DXC_OpeningFinal.AddNewJob" DynamicMasterPageFile="~masterurl/default.master" %>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">

    <script type="text/javascript" src="/_layouts/15/JScript/AddNewJob.js" />

</asp:Content>

<asp:Content ID="Main" ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <form onsubmit="test()">   
        <p>Job Title:</p>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <p>Short Description:</p>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <p>Long Description:</p>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
        <p>Refernal Bonus:</p>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <p>HR Contact:</p>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <p>Publish Date:</p>
        <SharePoint:DateTimeControl ID="DateTimeControl1" runat="server" />
        <br/>
        <input type="submit" value="Add"/>
    </form>



</asp:Content>

<asp:Content ID="PageTitle" ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
    Add New Job
</asp:Content>

<asp:Content ID="PageTitleInTitleArea" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Add New Job
</asp:Content>
