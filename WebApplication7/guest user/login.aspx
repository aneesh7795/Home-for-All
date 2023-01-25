<%@ Page Title="" Language="C#" MasterPageFile="~/guest user/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication7.guest_user.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 37%;
        text-align: center;
        height: 270px;
        margin-bottom: 0px;
    }
    .auto-style4 {
        width: 17px;
        text-align: center;
        font-size: x-large;
    }
    .auto-style5 {
        text-align: center;
        font-size: x-large;
            margin-left: 40px;
        }
        .auto-style6 {
            font-size: x-large;
            color: #000000;
        text-align: center;
    }
    .auto-style7 {
        color: #66CCFF;
    }
    .auto-style8 {
        width: 17px;
        text-align: center;
        font-size: x-large;
        color: #66CCFF;
    }
    .auto-style9 {
        font-size: small;
    }
    .auto-style10 {
        font-size: large;
        margin-left: 4px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
    <tr>
        <td colspan="2" class="auto-style6">
            <asp:Image ID="Image2" runat="server" Height="118px" ImageUrl="~/guest user/img/660611.png" Width="127px" />
            <em>
            <br />
            <strong>LOGIN</strong></em></td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br class="auto-style7" />
            <span class="auto-style7"><strong>Username</strong></span></td>
        <td>
            <br />
            <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Password</strong></td>
        <td>
            <asp:TextBox ID="txtpassword" runat="server" OnTextChanged="txtpassword_TextChanged" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5" colspan="2">
            <em>
            <br class="auto-style9" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" CssClass="auto-style10" />
            <span class="auto-style9">
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" NavigateUrl="~/guest user/signup.aspx">Create an account !</asp:HyperLink>
            </span></em>
        </td>
    </tr>
</table>
</asp:Content>
