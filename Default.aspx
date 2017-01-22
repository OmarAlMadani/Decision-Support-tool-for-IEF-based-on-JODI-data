<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" EnableSessionState="true"  %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style2
    {
        font-size: medium;
    }
        #Select1
        {
            width: 134px;
        }
    .style3
    {
        font-weight: bold;
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div align="right">

</div>
    <h1 style="font-family: georgia, 'Times New Roman', serif; color: rgb(255, 255, 255); margin: 0px 0px 0.5em; padding: 0.25em 0.5em; background-color: rgb(0, 157, 223); width: 55.8em; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" 
    class="style2">
        Jodi : A Global Overview</h1>
<p>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/oildata.mdb" 
            SelectCommand="SELECT [country_id] FROM [country_dim]">
        </asp:AccessDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="36px" Width="248px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            DataSourceID="AccessDataSource3" DataTextField="country_name" 
            DataValueField="country_name">
        </asp:DropDownList>
        &nbsp;&nbsp;<asp:Button ID="Button12" runat="server" 
            
            
            style="font-size: medium; font-weight: 700; margin-right: 0px; height: 29px;" Text="View" 
            Width="100px" onclick="Button12_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button8" runat="server" CssClass="style3" Height="28px" 
            Text="Top 10" Width="109px" onclick="Button8_Click" 
            PostBackUrl="~/Default8.aspx" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button10" runat="server" PostBackUrl="~/Default14.aspx" 
            style="font-weight: 700; font-size: medium" Text="Report" Width="99px" />
        &nbsp;&nbsp;
        <asp:Button ID="Button9" runat="server" CssClass="style3" Height="28px" 
            Text="Compare" Width="110px" PostBackUrl="~/Default19.aspx" 
            onclick="Button9_Click" />
        <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
            DataFile="~/App_Data/oildata.mdb" 
            SelectCommand="SELECT [country_name] FROM [country_dim]">
        </asp:AccessDataSource>
    </p>
    </asp:Content>
