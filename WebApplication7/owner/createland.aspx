<%@ Page Title="" Language="C#" MasterPageFile="~/owner/Site1.Master" AutoEventWireup="true" CodeBehind="createland.aspx.cs" Inherits="WebApplication7.owner.updateland" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            background-color: #3399FF;
        }
    .auto-style2 {
        width: 821px;
    }
    .auto-style4 {
        width: 802px;
    }
    .auto-style5 {
        width: 47%;
        height: 213px;
    }
    .auto-style6 {
        margin-left: 529px;
    }
    .auto-style7 {
        left: 0px;
        top: 0px;
        text-align: center;
        background-color: #3399FF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style5" align="center">
        <tr>
            <td class="auto-style7" colspan="2">CREATE LAND LOARD</td>
        </tr>
        <tr>
            <td class="auto-style2">STREET ADDRESS</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtsa" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">STREET NO</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtsn" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">ROOM STATUS</td>
            <td class="auto-style4">
                <asp:DropDownList ID="studedr" runat="server" AutoPostBack="True">
                    <asp:ListItem>STUDENT</asp:ListItem>
                    <asp:ListItem>FAMILY</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">ROOM</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddroom" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="DORM">DORM</asp:ListItem>
                    <asp:ListItem Value="APARTMENT">APARTMENT</asp:ListItem>
                    <asp:ListItem Value="SHARED FLAT">SHARED FLAT</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">RENT AMOUNT</td>
            <td class="auto-style4">
                <asp:DropDownList ID="rddam" runat="server" AutoPostBack="True" >
                    <asp:ListItem>BELOW 350</asp:ListItem>
                    <asp:ListItem>BETWEEN 350 TO 700</asp:ListItem>
                    <asp:ListItem>BETWWN 700 TO 1000</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">CONTRACT DURATION</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddcon" runat="server" AutoPostBack="True">
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">IMAGE</td>
            <td class="auto-style4">
                <asp:FileUpload ID="imf" runat="server" multiple="multiple"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">SQUARE FEET</td>
            <td class="auto-style4">
                <asp:TextBox ID="squarefit" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table> 
    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="41px" OnClick="Button1_Click" Text="Create" Width="91px" />

        <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>

</asp:Content>
