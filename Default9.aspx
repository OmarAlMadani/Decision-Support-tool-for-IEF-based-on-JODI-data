<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default9.aspx.cs" Inherits="Default9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div>

    <strong><span class="style1">Select First Country :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style1" 
        DataSourceID="AccessDataSource1" DataTextField="country_name" 
        DataValueField="country_name" Width="196px" Height="32px">
    </asp:DropDownList>
    <span class="style1">
    <br />
    Select sacond Country :&nbsp;&nbsp; </span>
    <asp:DropDownList ID="DropDownList4" runat="server" 
        DataSourceID="AccessDataSource4" DataTextField="country_name" 
        DataValueField="country_name" Height="30px" style="font-size: large" 
        Width="196px">
    </asp:DropDownList>
    &nbsp;
    <span class="style1">
    <br />
    Select Third Country :&nbsp; &nbsp;</span><asp:DropDownList 
        ID="DropDownList5" runat="server" DataSourceID="AccessDataSource4" 
        DataTextField="country_name" DataValueField="country_name" Height="31px" 
        style="font-weight: 700; font-size: medium" Width="196px">
    </asp:DropDownList>
    <asp:AccessDataSource ID="AccessDataSource4" runat="server" 
        DataFile="~/App_Data/oildata.mdb" 
        SelectCommand="SELECT [country_name] FROM [country_dim]">
    </asp:AccessDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" Height="32px" 
        style="font-weight: 700; font-size: large" Text="view" Width="109px" 
        onclick="Button1_Click" />
    <br />
    </strong>
&nbsp;&nbsp;<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/oildata.mdb" 
        SelectCommand="SELECT [country_name] FROM [country_dim]">
    </asp:AccessDataSource>

</div>
<div>

</div>
</asp:Content>

