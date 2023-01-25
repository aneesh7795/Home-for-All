<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="landlord.aspx.cs" Inherits="WebApplication7.admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 936px;
            background-color: #FFFFFF;
        }
    .auto-style2 {
        text-align: left;
        font-size: x-large;
        color: #33CCCC;
    }
        .auto-style4 {
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            margin-right: 0px;
            background-color: #FFFFFF;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div align="center" class="auto-style1" > <p class="auto-style2"> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em><span class="auto-style4"> LAND LORD REQUEST</span></em></strong></p></div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="laid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="77px" Width="442px" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CssClass="auto-style5" BorderStyle="None" CellPadding="3">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="phonenumber" HeaderText="Mobile Number" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="stread" HeaderText="StreetAddress" />
            <asp:BoundField DataField="streetno" HeaderText="Str.no" />
            <asp:BoundField DataField="room" HeaderText="Room" />
            <asp:BoundField DataField="durat" HeaderText="Duration" />
            <asp:BoundField DataField="rentamo" HeaderText="Rent" />
            <asp:BoundField DataField="squf" HeaderText="Area" />
            <asp:ImageField DataImageUrlField="image" DataImageUrlFormatString="~/images/{0}" HeaderText="image" ControlStyle-Height="150 px">
<ControlStyle Height="150px"></ControlStyle>

                <FooterStyle Height="10px" />
                <ItemStyle Height="10px" Width="10px" />
            </asp:ImageField>
            <asp:CommandField HeaderText="Confirmation" ShowDeleteButton="True" DeleteText="Confirm" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
  
</asp:Content>
