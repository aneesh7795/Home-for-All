<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="trail.aspx.cs" Inherits="WebApplication7.user.trail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 35px;
        }
    .auto-style2 {
        margin-left: 460px;
    }
        .auto-style5 {
            left: 0px;
            top: 0px;
            width: 1324px;
            margin-left: 0px;
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="laid" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CssClass="auto-style5">
        <ItemTemplate>
&nbsp;<asp:Image ID="Image1" runat="server" Height="124px" ImageUrl='<%# Eval("image","~/images/{0}") %>' Width="147px" />
            <br />
            <br />
            StreetAddress:
            <asp:Label ID="streadLabel" runat="server" Text='<%# Eval("stread") %>' />
            <br />
            <br />
            StreetNumber:
            <asp:Label ID="streetnoLabel" runat="server" Text='<%# Eval("streetno") %>'></asp:Label>
            <br />
            <br />
            Room:
            <asp:Label ID="roomLabel" runat="server" Text='<%# Eval("room") %>'></asp:Label>
            <br />
            <br />
            Rent Amount:
            <asp:Label ID="rentamoLabel" runat="server" Text='<%# Eval("rentamo") %>' />
            <br />
            <br />
            Duration:
            <asp:Label ID="duratLabel" runat="server" Text='<%# Eval("durat") %>' />
            <br />
            <br />
            Square Feet:
            <asp:Label ID="squfLabel" runat="server" Text='<%# Eval("squf") %>' />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CommandName="appoinment"  OnClick="Button1_Click" Text="appoinment" Width="99px" />
            
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/user/showview.aspx.designer.cs" Text="Cancel" />
            
            <br />
        </ItemTemplate>
    </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:reshmsbingenConnectionString2 %>" SelectCommand="SELECT * FROM [landlord] WHERE ([laid] = @laid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="laid" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
