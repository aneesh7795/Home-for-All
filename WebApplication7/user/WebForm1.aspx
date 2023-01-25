<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication7.user.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        height: 37px;
    }
    .auto-style6 {
        width: 571px;
    }
    .auto-style7 {
        width: 100%;
        height: 685px;
    }
    .auto-style8 {
        width: 86%;
        height: 5px;
    }
        .auto-style10 {
            height: 31px;
        }
        .auto-style11 {
            margin-left: 488px;
        }
        .auto-style12 {
            width: 571px;
            height: 27px;
        }
        .auto-style13 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style8">
    <tr>
        <td class="auto-style5" colspan="2"><em><strong><span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; APPOINMENT REGISTRATION&nbsp;</span></strong></em></td>
    </tr>
    <tr>
        <td class="auto-style6">Name</td>
        <td>
                <asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td class="auto-style6">Mobile Number</td>
        <td>
                <asp:DropDownList ID="dd1" runat="server" AutoPostBack="True">
                    <asp:ListItem>+49</asp:ListItem>
                    <asp:ListItem>+91</asp:ListItem>
                    <asp:ListItem>+75</asp:ListItem>
                    <asp:ListItem>+1</asp:ListItem>
                    <asp:ListItem>+226</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="phtxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="phtxt" ErrorMessage="Numbers Only" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style12">Email</td>
        <td class="auto-style13">
                <asp:TextBox ID="emailtxt" runat="server" OnTextChanged="emailtxt_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailtxt" ErrorMessage="Formal Email " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="auto-style6">Gender</td>
        <td>
                <asp:RadioButtonList ID="rb1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="rb1_SelectedIndexChanged">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
            </td>
    </tr>
    <tr>
        <td class="auto-style6">whatsapp through contact</td>
        <td>
                <asp:RadioButtonList ID="rb2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:TextBox ID="whatnutxt" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Current location</td>
        <td>
                <asp:DropDownList ID="dd2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dd2_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
    </tr>
    <tr>
        <td class="auto-style6">appionment date</td>
        <td>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" ShowNextPrevMonth="False" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
    </tr>
    <tr>
        <td class="auto-style6">Time</td>
        <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1">
                    <asp:ListItem>10 -11</asp:ListItem>
                    <asp:ListItem>14-15</asp:ListItem>
                    <asp:ListItem>16-17</asp:ListItem>
                </asp:RadioButtonList>
            </td>
    </tr>
    <tr>
        <td class="auto-style6">Viewing the appartment</td>
        <td>
                <asp:RadioButtonList ID="rb3" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="rb3_SelectedIndexChanged">
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Direct</asp:ListItem>
                </asp:RadioButtonList>
            </td>
    </tr>
    <tr>
        <td class="auto-style6">looking for apartment</td>
        <td>
                <asp:RadioButtonList ID="rb4" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="rb4_SelectedIndexChanged">
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Family</asp:ListItem>
                </asp:RadioButtonList>
            </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Make an appionment" CssClass="auto-style11" />
                <br />
            </td>
    </tr>
</table>
</asp:Content>
