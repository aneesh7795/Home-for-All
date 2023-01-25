<%@ Page Title="" Language="C#" MasterPageFile="~/owner/Site1.Master" AutoEventWireup="true" CodeBehind="confirmation.aspx.cs" Inherits="WebApplication7.owner.confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" ForeColor="Red" Text="please wait for admin confirmation.."></asp:Label>
    </strong>
</asp:Content>
