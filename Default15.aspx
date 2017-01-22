<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default15.aspx.cs" Inherits="Default15" %>
<%@ PreviousPageType VirtualPath="~/Default.aspx" %> 
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div>
<asp:FileUpload ID="FileUpload1" runat="server" />
<asp:Button ID="btnUpload" runat="server" Text="Upload"
            OnClick="btnUpload_Click" />
<br />
<asp:Label ID="Label1" runat="server" Text="Has Header ?" />
<asp:RadioButtonList ID="rbHDR" runat="server">
    <asp:ListItem Text = "Yes" Value = "Yes" Selected = "True" >
    </asp:ListItem>
    <asp:ListItem Text = "No" Value = "No"></asp:ListItem>
</asp:RadioButtonList>
<asp:GridView ID="GridView1" runat="server"
OnPageIndexChanging = "PageIndexChanging" AllowPaging = "True" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#330099" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <SortedAscendingCellStyle BackColor="#FEFCEB" />
    <SortedAscendingHeaderStyle BackColor="#AF0101" />
    <SortedDescendingCellStyle BackColor="#F6F0C0" />
    <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
</div>
 <div>
<asp:chart id="Chart1" runat="server"
             Height="300px" Width="400px" onload="Chart1_Load">
  <titles>
    <asp:Title ShadowOffset="3" Name="Title1" />
  </titles>
  <legends>
    <asp:Legend Alignment="Center" Docking="Bottom"
                IsTextAutoFit="False" Name="Default"
                LegendStyle="Row" />
  </legends>
  <series>
    <asp:Series Name="Default" />
  </series>
  <chartareas>
    <asp:ChartArea Name="ChartArea1"
                     BorderWidth="0" />
  </chartareas>
</asp:chart>
    </div>

</asp:Content>

