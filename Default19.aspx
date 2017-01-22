<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default19.aspx.cs" Inherits="Default19" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style6
        {
            font-weight: bold;
            font-size: medium;
            margin-left: 0px;
        }
        .style7
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="style7">
        How many country do you want to compare ?</p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style6" 
            Height="35px" Width="174px">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
        </asp:DropDownList>
        <span class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="style6" Text="Submit" Width="107px" 
            onclick="Button1_Click" />
    </p>
    <p class="style7">
        copmare continent&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="style6" Text="Submit" 
            Width="111px" PostBackUrl="~/Default22.aspx" />
    </p>
    <p class="style7">
        compare by month</p>
    <p>
        <span class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button3" runat="server" CssClass="style6" Text="Submit" 
            Width="112px" onclick="Button3_Click" />
    </p>
    <p class="style7">
        compare by Year</p>
    <p>
        <span class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:Button ID="Button4" 
            runat="server" CssClass="style6" Text="Submit" 
            Width="115px" PostBackUrl="~/Default24.aspx" onclick="Button4_Click" />
    </p>
</asp:Content>

