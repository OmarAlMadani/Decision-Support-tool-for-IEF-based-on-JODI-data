<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default10.aspx.cs" Inherits="Default10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style2
        {
        font-size: medium;
        text-align: left;
        font-style: oblique;
        font-weight: bold;
    }
    .style3
    {
        font-size: medium;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="style3">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p class="style1">
    <span class="style3">country_name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span><asp:TextBox 
        ID="TextBox4" runat="server" Height="25px" 
            style="font-weight: 700; " Width="217px" CssClass="style3"></asp:TextBox>
</p>
<p class="style1">
    <span class="style3">organization_sourc_num&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    </span>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="style2" Width="217px" 
        Height="28px"></asp:TextBox>
</p>
<p class="style1">
    <span class="style3">organization_dsc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    </span>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="style2" Width="217px" 
        Height="32px"></asp:TextBox>
</p>
<p class="style1">
    <span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    </span>
    <asp:Button ID="Button2" runat="server" CssClass="style2" Height="38px" 
            Text="Save" Width="86px" onclick="Button2_Click" />
    <span class="style3">&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
    <asp:Button ID="Button5" runat="server" Height="36px" onclick="Button5_Click" 
            PostBackUrl="~/Default4.aspx" style="font-weight: 700; " 
            Text="Exit" Width="81px" CssClass="style3" />
</p>
</asp:Content>

