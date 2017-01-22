<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default24.aspx.cs" Inherits="Default24" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Chart ID="Chart1" runat="server" DataSourceID="AccessDataSource1" 
        Height="547px" Width="914px">
        <Series>
            <asp:Series Name="Series1" XValueMember="product_name" 
                YValueMembers="superflow_demand">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
        <Titles>
            <asp:Title Name="Title1" Text="year">
            </asp:Title>
        </Titles>
    </asp:Chart>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/oildata.mdb" 
        SelectCommand="SELECT [country_name], [product_name], [superflow_demand], [superflow_statistical_difference], [flow_name], [Month], [year] FROM [top]">
    </asp:AccessDataSource>
</asp:Content>

