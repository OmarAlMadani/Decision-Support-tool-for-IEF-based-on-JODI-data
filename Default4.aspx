<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: large;
            text-align:left;
            font-style:oblique;
            font-weight: bold;
            
            
        }
        .style2
        {
            font-size: large;
            text-align:left;
            font-style:oblique;
            font-weight: bold;
        }
        .style3
        {
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="style1">
        country_id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" CssClass="style2" Width="212px" 
            ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    </p>
<p class="style1">
        country_name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="25px" 
            style="font-weight: 700; font-size: large" Width="217px"></asp:TextBox>
    </p>
    <p class="style1">
        organization_sourc_num&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style2" Width="217px"></asp:TextBox>
    </p>
    <p class="style1">
        organization_dsc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox3" runat="server" CssClass="style2" Width="217px"></asp:TextBox>
    </p>
    <p class="style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="style2" Height="38px" 
            Text="New" Width="74px" onclick="Button1_Click" 
            PostBackUrl="~/Default10.aspx" />
&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" CssClass="style2" Height="37px" 
            Text="Update" Width="86px" onclick="Button3_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" CssClass="style2" Height="37px" 
            onclick="Button4_Click" Text="Delet" Width="90px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Height="36px" onclick="Button5_Click" 
            PostBackUrl="~/Default3.aspx" style="font-weight: 700; font-size: large" 
            Text="Exit" Width="81px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" CssClass="style3" Height="34px" 
            Text="Prev" Width="76px" onclick="Button6_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button7" runat="server" CssClass="style3" Height="35px" 
            onclick="Button7_Click" Text="Next" Width="71px" />
    </p>
</asp:Content>

