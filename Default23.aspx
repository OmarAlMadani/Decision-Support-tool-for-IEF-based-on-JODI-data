<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default23.aspx.cs" Inherits="Default23" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div>

    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="AccessDataSource1" DataTextField="month" DataValueField="month" 
        Height="16px" Width="131px">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="AccessDataSource1" DataTextField="month" DataValueField="month" 
        Height="17px" Width="155px">
    </asp:DropDownList>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/oildata.mdb" 
        SelectCommand="SELECT [month] FROM [date_dim]"></asp:AccessDataSource>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />

</div>
    <asp:Chart ID="Chart1" runat="server" Width="880px">
        <Series>
            <asp:Series Name="Series1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/oildata.mdb" 
        SelectCommand="SELECT [country_name], [product_name], [superflow_demand], [superflow_statistical_difference], [Month], [year] FROM [top] WHERE (([Month] &gt;= ?) AND ([Month] &lt;= ?))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Month" 
                PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList2" Name="Month2" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>

