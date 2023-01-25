<%@ Page Title="" Language="C#" MasterPageFile="~/guest user/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication7.guest_user.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            background-color: #CCFFFF;
        }
    .auto-style2 {
        width: 60%;
        height: 396px;
            margin-left: 276px;
            margin-right: 0px;
            margin-bottom: 0px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            background-color: #CCFFFF;
            text-align: left;
            left: -5px;
            top: -17px;
            width: 688px;
            height: 171px;
            color: #FFFFFF;
        }
        .auto-style6 {
            font-size: xx-large;
        }
        .auto-style7 {
            color: #000000;
        }
        .auto-style8 {
            text-align: left;
            width: 291px;
        }
        .auto-style9 {
        text-align: left;
        width: 144px;
    }
        .auto-style10 {
            margin-left: 140px;
        }
    .auto-style11 {
        text-align: left;
        width: 144px;
        height: 27px;
    }
    .auto-style12 {
        text-align: left;
        width: 291px;
        height: 27px;
    }
        .auto-style13 {
            font-size: medium;
        }
        .auto-style14 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td colspan="2" >
                <h1 class="auto-style4" color="white"><em><strong><span class="auto-style1">
                    <span class="text-white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Image ID="Image2" runat="server" CssClass="auto-style3" Height="120px" Width="147px" ImageAlign="TextTop" ImageUrl="~/guest user/img/660611.png"/>
                    </span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style6"><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style7">REGISTER</span></span></td>
        </tr>
        <tr>
            <td class="auto-style11">NAME</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">PHONE NUMBER</td>
            <td class="auto-style8">
                <asp:DropDownList ID="ddcode" runat="server" AutoPostBack="True" Height="6px" Width="2px">
                    <asp:ListItem>+49</asp:ListItem>
                    <asp:ListItem>+91</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txtph" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtph" ErrorMessage="Digit only" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">EMAIL ADRESS</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Email Id Formal Format" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">USERNAME</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">PASSWORD</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtpsw" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">STATUS</td>
            <td class="auto-style12">
                <asp:DropDownList ID="ddsatus" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddsatus_SelectedIndexChanged">
                    <asp:ListItem>Owner</asp:ListItem>
                    <asp:ListItem>Tenant</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-left" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="38px" Text="Register" Width="137px" OnClick="Button1_Click" CssClass="auto-style10" />
            &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="Green"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        </table>

    <div><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em><span class="auto-style13"><strong>&nbsp;</strong><strong class="ui-priority-primary">&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF3300" NavigateUrl="~/guest user/login.aspx" CssClass="auto-style14">Are you Already registered?</asp:HyperLink>
        </strong></span></em></p>
    </div>
</asp:Content>
