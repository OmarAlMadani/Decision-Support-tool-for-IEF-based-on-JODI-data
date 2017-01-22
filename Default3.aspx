<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            font-size: large;
        }
        .style2
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p style="font-weight: 700; font-size: large ; background-color: #00CC99; text-align: left ;">
   
        <asp:HyperLink  ID="HyperLink1" runat="server" style="text-align: left" 
            NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
    
    </p>
    <div style="font-weight: 700; font-size: large; background-color: #00CC99;" 
        class="style2">
    
    
    
        <br />
    
    
    
        <asp:Button ID="Button1" runat="server" Height="63px" 
            Text="Country Information" Width="214px" 
            style="font-weight: 700; font-size: large" PostBackUrl="~/Default4.aspx" />
&nbsp;
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Height="63px" Text="Flow Information" 
            Width="214px" style="font-weight: 700; font-size: large" 
            PostBackUrl="~/Default5.aspx" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Height="63px" 
            Text="Product Information" Width="214px" 
            style="font-weight: 700; font-size: large" PostBackUrl="~/Default7.aspx" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Height="63px" Text="Unit Informatin" 
            Width="214px" CssClass="style1" PostBackUrl="~/Default6.aspx" />
    
    
    
        <br />
    
    
    
    </div>
</asp:Content>

