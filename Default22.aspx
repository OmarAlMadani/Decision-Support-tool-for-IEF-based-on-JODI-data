<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default22.aspx.cs" Inherits="Default22" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Chart ID="Chart1" runat="server" DataSourceID="AccessDataSource1" 
        Height="363px" Width="918px">
        <Series>
            <asp:Series Name="Series1" XValueMember="continent" 
                YValueMembers="superflow_demand">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
        <Titles>
            <asp:Title Name="Title1" Text="Superflow_demand">
            </asp:Title>
        </Titles>
    </asp:Chart>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/oildata.mdb" 
        SelectCommand="SELECT [continent], [product_name], [superflow_demand], [superflow_statistical_difference], [Month], [year] FROM [top]">
    </asp:AccessDataSource>
</asp:Content>

