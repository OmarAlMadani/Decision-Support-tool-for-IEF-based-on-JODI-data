<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="first.aspx.cs" Inherits="Default8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">


    .style2
    {
        font-size: large;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
   <marquee id="ml" 
            style="text-align: center; font-size:x-large; width: 907px; height: 85px;" direction="up"
scrolldelay="20" scrollamount="1">
<asp:Repeater ID="Repeater1" runat="server">
<ItemTemplate>
<br />
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("URL") %>'>
<asp:Label ID="Label1" runat="server" Text='<%# Eval("Desc") %>'></asp:Label></asp:HyperLink><br />
</ItemTemplate>
</asp:Repeater></marquee>
</div>
    <div align="center" style="font-style: italic">

    <asp:Image ID="Image1" runat="server" Height="117px" 
        ImageUrl="~/jodi-oil-footer.gif" style="text-align: center" 
        Width="803px" />

</div>
<div align="left">

        <span style="color: rgb(35, 31, 32); font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 19.1875px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;" 
            class="style2">
        he Joint Organisations Data Initiative is a concrete outcome of the 
        producer-consumer energy dialogue. The importance of exchanging data as a means 
        to enhance transparency of global energy commodity markets is recognized by IEF 
        Energy Ministers as being beneficial to energy security and in the interest of 
        producers and consumers alike. The initiative relies on the combined efforts of 
        producing and consuming countries and the seven JODI partner organisations to 
        build the timely, comprehensive, and sustainable energy data provision 
        architecture which is a prerequisite for stable energy commodity markets. By 
        helping to mitigate some of the uncertainties that may be detrimental to market 
        functionality, JODI aims to moderate undue price volatility, thereby increasing 
        investor confidence and contributing to greater stability in energy markets 
        worldwide.</span></div>
   <div align="center">

    <asp:HyperLink ID="HyperLink1" runat="server" 
        style="font-weight: 700; font-size: xx-large" NavigateUrl="~/Default.aspx">Jodi Data viewer</asp:HyperLink>

    <br />

</div>
<div align="center">

    <asp:Image ID="Image2" runat="server" ImageUrl="~/apec.gif" />
    <asp:Image ID="Image3" runat="server" ImageUrl="~/eurostat.gif" />
    <asp:Image ID="Image4" runat="server" ImageUrl="~/iea.gif" />
    <asp:Image ID="Image5" runat="server" ImageUrl="~/ief.gif" />
    <asp:Image ID="Image6" runat="server" ImageUrl="~/olade.gif" />
    <asp:Image ID="Image7" runat="server" ImageUrl="~/unsd.gif" />

</div>
<div>

</div>
</asp:Content>

