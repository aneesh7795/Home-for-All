<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="showview.aspx.cs" Inherits="WebApplication7.user.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin-left: 117px;
            }
        .auto-style5 {
            left: 0px;
            top: 0px;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" BackColor="#FFFFCC" BorderColor="Lime" CssClass="auto-style5" Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" Height="16px" Width="1318px" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1" DataKeyField="laid" RepeatColumns="3" ShowFooter="False" ShowHeader="False">
        <ItemTemplate>
            <div class="text-left">
                <asp:Image ID="Image1" runat="server" Height="206px" ImageUrl='<%# Eval("image","~/images/{0}") %>' Width="192px" />
                <br />
                <br />
                &nbsp; Amount :<asp:Label ID="rentamoLabel" runat="server" Text='<%# Eval("rentamo") %>' />
                <br />
                &nbsp; Duration:&nbsp;&nbsp;<asp:Label ID="duratLabel" runat="server" Text='<%# Eval("durat") %>' />
                &nbsp;<br />
                <asp:Button ID="viewdetails" runat="server" CommandArgument='<%# Eval("Laid") %>' CommandName="viewdetails" OnClick="Button1_Click1" Text="viewdetails" />
                <br />
            </div>
            
        </ItemTemplate>
    </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:reshmsbingenConnectionString2 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [laid], [rentamo], [image], [durat] FROM [landlord] where status=1">
    </asp:SqlDataSource>
</asp:Content>
