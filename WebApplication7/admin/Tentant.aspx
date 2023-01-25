<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="Tentant.aspx.cs" Inherits="WebApplication7.admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 5px;
            margin-top: 15px;
            background-color: #FFFFFF;
        }
        .auto-style2 {
            width: 1092px;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            color: #660066;
        }
        .auto-style5 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><p class="auto-style2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">&nbsp;&nbsp; <span class="auto-style3"><em><strong>&nbsp;</strong></em></span></span><span class="auto-style3"><em><strong><span class="auto-style5"> Tenant Appoinment Rquest</span></strong></em></span></p></div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="userid" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" BorderColor="#999999" BorderWidth="1px" BackColor="White" BorderStyle="Solid" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="mobilenumber" HeaderText="Phonenumber" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="whatsappcontact" HeaderText="Whatsappcontact" />
            <asp:BoundField DataField="whatsappnu" HeaderText="whatsappnumber" />
            <asp:BoundField DataField="current loaction" HeaderText="Current loaction" />
            <asp:BoundField DataField="appodate" HeaderText="Appoinmentdate" />
            <asp:BoundField DataField="time" HeaderText="Time" />
            <asp:BoundField DataField="online viewing" HeaderText=" Viewing" />
            <asp:BoundField DataField="cstatus" HeaderText="Cstatus" />
            <asp:CommandField DeleteText="Confirm" EditText="" HeaderText="Confirmation" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</asp:Content>
