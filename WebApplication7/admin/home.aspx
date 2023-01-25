<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication7.admin.home" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:reshmsbingenConnectionString2 %>" SelectCommand="SELECT [activity], [Id] FROM [signup]"></asp:SqlDataSource>

       
          
   <asp:Chart ID="Chart1" runat="server" CssClass="auto-style1" DataSourceID="SqlDataSource2" Height="494px" style="margin-top: 0px; margin-left: 21px;" Width="742px" OnLoad="Chart1_Load">
              <series>
                  <asp:Series Name="Series1" ChartArea="ChartArea1" ChartType="Pie" XValueMember="activity" YValueMembers="Id">
                  </asp:Series>
              </series>
              <chartareas>
                  <asp:ChartArea Name="ChartArea1">
                  </asp:ChartArea>
              </chartareas>
</asp:Chart>
          
       
          
          </asp:Content>
