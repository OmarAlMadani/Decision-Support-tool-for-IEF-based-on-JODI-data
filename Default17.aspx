<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default17.aspx.cs" Inherits="Default17" EnableSessionState="true"  %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<%@ PreviousPageType VirtualPath="~/Default16.aspx"    %>
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

    <strong><span class="style1">Select Products :<asp:TextBox ID="TextBox1" 
            runat="server" Height="16px" Visible="False" Width="16px"></asp:TextBox>
        <br />
    <asp:RadioButton ID="RadioButton1" runat="server" Text="Curdle oil" 
        GroupName="prod" />
    <br />
    <asp:RadioButton ID="RadioButton2" runat="server" Text="NGI" GroupName="prod" />
    <br />
    <asp:RadioButton ID="RadioButton3" runat="server" Text="LPG" GroupName="prod" />
    <br />
    <asp:RadioButton ID="RadioButton4" runat="server" 
        oncheckedchanged="RadioButton4_CheckedChanged" Text="Naphthe" 
        GroupName="prod" />
    <br />
    <asp:RadioButton ID="RadioButton5" runat="server" Text="Gas / Dresel oil" 
        GroupName="prod" />
    <br />
    <asp:RadioButton ID="RadioButton6" runat="server" Text="Fuel Oil" 
        GroupName="prod" oncheckedchanged="RadioButton6_CheckedChanged" />
    </span></strong><span class="style1">

</div>
<div>

    <strong>
    <br />
    Select Month : <br />
    <asp:RadioButton ID="RadioButton7" runat="server" 
        Text="1" GroupName="month" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="RadioButton13" runat="server" Text="7" GroupName="month" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:RadioButton ID="RadioButton8" runat="server" 
        Text="2" GroupName="month" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="RadioButton14" runat="server" Text="8" GroupName="month" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:RadioButton ID="RadioButton9" runat="server" 
        Text="3" GroupName="month" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="RadioButton15" runat="server" 
        oncheckedchanged="RadioButton15_CheckedChanged" Text="9" 
        GroupName="month" />
&nbsp;&nbsp;
    <br />
    <asp:RadioButton ID="RadioButton10" runat="server" Text="4" GroupName="month" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="RadioButton16" runat="server" Text="10" 
        GroupName="month" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:RadioButton ID="RadioButton11" runat="server" Text="5" GroupName="month" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="RadioButton17" runat="server" Text="11" 
        GroupName="month" />
&nbsp;&nbsp;
    <br />
    <asp:RadioButton ID="RadioButton12" runat="server" Text="6" GroupName="month" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="RadioButton18" runat="server" Text="12" 
        GroupName="month" />
    </strong>

</div>
<div>

    </span><strong><span class="style1">
    <br />
    Select Chart Type :<br />
    <asp:RadioButton ID="RadioButton19" runat="server" Text="Point" 
        GroupName="type" />
    <br />
    <asp:RadioButton ID="RadioButton20" runat="server" Text="Line" 
        GroupName="type" oncheckedchanged="RadioButton20_CheckedChanged" />
    <br />
    <asp:RadioButton ID="RadioButton21" runat="server" 
        oncheckedchanged="RadioButton21_CheckedChanged" Text="Coulumn" 
        GroupName="type" />
    <br />
    <asp:RadioButton ID="RadioButton22" runat="server" 
        oncheckedchanged="RadioButton22_CheckedChanged" Text="Area" 
        GroupName="type" />
    </span></strong>

</div>
<div style="margin-left: 240px">

    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Default18.aspx" 
        style="font-weight: 700; font-size: large" Text="Vew" Width="159px" 
        onclick="Button1_Click" />

</div>
</asp:Content>

