<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default11.aspx.cs" Inherits="Default11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style2
        {
            font-size: large;
            text-align:left;
            font-style:oblique;
            font-weight: bold;
        }
        .style3
        {
            font-size: medium;
            font-weight: normal;
        }
        .style4
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p class="style1">
        <span class="style3"><strong>flow_name&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style2" Width="217px"></asp:TextBox>
    </p>
    <p class="style1">
        <span class="style4">flow_shortname</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" CssClass="style2" Width="217px"></asp:TextBox>
    </p>
    <p class="style1">
        <span class="style4">superflow_demand</span>&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="31px" 
            Width="215px"></asp:TextBox>
    </p>
    <p class="style1">
        <span class="style4">perflow_statistical</span>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Height="33px" Width="217px"></asp:TextBox>
    </p>
    <p class="style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="style2" Height="38px" 
            Text="Save" Width="86px" onclick="Button2_Click1" />
&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Height="36px" onclick="Button5_Click" 
            PostBackUrl="~/Default5.aspx" style="font-weight: 700; font-size: large" 
            Text="Exit" Width="81px" />
    </p>
</asp:Content>

