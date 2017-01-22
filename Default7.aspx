<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="Default7" %>

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
        product_id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
            ID="TextBox1" runat="server" CssClass="style2" Width="212px"></asp:TextBox>
    </p>
    <p class="style1">
        product_name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style2" Width="217px"></asp:TextBox>
    </p>
    <p class="style1">
        product_shortname&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" CssClass="style2" Width="217px"></asp:TextBox>
    </p>
    <p class="style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="style2" Height="38px" 
            Text="New" Width="74px" onclick="Button1_Click1" 
            PostBackUrl="~/Default13.aspx" />
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
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" Text="Next" CssClass="style3" 
            Height="37px" onclick="Button6_Click" Width="71px" />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="Button7" runat="server" Height="36px" 
            style="font-weight: 700; font-size: medium" Text="Prev" Width="82px" />
        &nbsp;&nbsp;
    </p>
</asp:Content>

