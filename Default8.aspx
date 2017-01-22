<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default8.aspx.cs" Inherits="Default8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="style1">

    <strong>Select prodact :<asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="AccessDataSource1" DataTextField="product_name" 
        DataValueField="product_name" Height="22px" 
        style="font-weight: 700; font-size: large" Width="181px">
    </asp:DropDownList>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/oildata.mdb" 
        SelectCommand="SELECT [product_name] FROM [product_dim]" 
        onselecting="AccessDataSource1_Selecting">
    </asp:AccessDataSource>
    <asp:Button ID="Button1" runat="server" Height="30px" 
        style="font-weight: 700; font-size: large" Text="Vew by superflow" 
        Width="195px" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        style="font-weight: 700; font-size: medium" Text="Vew by superflow statistical" 
        Width="252px" />
    </strong>

</div>
<div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="AccessDataSource2" Height="224px" 
        style="font-weight: 700; font-size: medium" Width="925px" CellPadding="4" 
        ForeColor="#333333" GridLines="None" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="country_name" HeaderText="country_name" 
                SortExpression="country_name" />
            <asp:BoundField DataField="product_name" HeaderText="product_name" 
                SortExpression="product_name" />
            <asp:BoundField DataField="superflow_demand" HeaderText="superflow_demand" 
                SortExpression="superflow_demand" />
            <asp:BoundField DataField="superflow_statistical_difference" 
                HeaderText="superflow_statistical_difference" 
                SortExpression="superflow_statistical_difference" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/oildata.mdb" 
        
        
        SelectCommand="SELECT TOP 10 country_name , product_name ,superflow_demand , superflow_statistical_difference FROM [top] WHERE ([product_name] = ?) ORDER BY superflow_demand DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="product_name" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="AccessDataSource3" GridLines="Horizontal" 
        Height="195px" style="font-weight: 700; font-size: small" Visible="False" 
        Width="924px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="country_name" HeaderText="country_name" 
                SortExpression="country_name" />
            <asp:BoundField DataField="product_name" HeaderText="product_name" 
                SortExpression="product_name" />
            <asp:BoundField DataField="superflow_demand" HeaderText="superflow_demand" 
                SortExpression="superflow_demand" />
            <asp:BoundField DataField="superflow_statistical_difference" 
                HeaderText="superflow_statistical_difference" 
                SortExpression="superflow_statistical_difference" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
        DataFile="~/App_Data/oildata.mdb" 
        SelectCommand="SELECT TOP 10 country_name , product_name ,superflow_demand , superflow_statistical_difference FROM [top] WHERE ([product_name] = ?) ORDER BY superflow_statistical_difference DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="?" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:Chart ID="Chart2" runat="server" DataSourceID="AccessDataSource2" 
        Width="923px">
        <Series>
            <asp:Series Name="Series1" XValueMember="country_name" 
                YValueMembers="superflow_demand">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="AccessDataSource3" 
        onload="Chart1_Load" Visible="False" Width="924px">
        <Series>
            <asp:Series Name="Series1" XValueMember="country_name" 
                YValueMembers="superflow_statistical_difference">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

</div>
</asp:Content>

