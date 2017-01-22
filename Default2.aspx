<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        
        .style2
        {
            font-family: "Segoe UI";
            font-size: x-large;
            font-weight: bold;
            text-align: center;
            direction: ltr;   
           
        }
            
        .style1
        {
            font-family: "Segoe UI";
            font-weight: bold;
            font-size: large;
            
}
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="style2">
        <p class="style2">
        Administratior page</p>
        <p class="style2">
        &nbsp;</p>
        <p>
            <span class="style1">Enter name :&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="279px"></asp:TextBox>
        </p>
        <p>
            <span class="style1">Enter Password : </span>&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="280px" 
            TextMode="Password"></asp:TextBox>
        </p>
        <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                ID="Button1" runat="server" CssClass="bold" Height="40px" 
            Text="Back" Width="126px" PostBackUrl="~/Default.aspx" 
                onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" CssClass="bold" Height="40px" 
            onclick="Button2_Click" Text="Login" Width="126px" />
        </p>
        <br />
        <br />
    </div>
</asp:Content>

