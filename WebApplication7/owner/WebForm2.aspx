<%@ Page Language="C#"  MasterPageFile="~/owner/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication7.owner.WebForm2" %>

     <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
          <style type="text/css">
        .auto-style1 {
            background-color: #3399FF;
        }
    .auto-style2 {
        width: 821px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="laid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="943px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="Stread" HeaderText="Roomaddress" />
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="mobilenumber" HeaderText="PhoneNumber" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="whatsappcontact" HeaderText="Whatsappcontact" />
                    <asp:BoundField DataField="Whatsappnu" HeaderText="WhatsappNumber" />
                    <asp:BoundField DataField="current loaction" HeaderText="Native Location" />
                    <asp:BoundField DataField="appodate" HeaderText="AppoinmentDate" />
                    <asp:BoundField DataField="time" HeaderText="Time" />
                    <asp:BoundField DataField="online viewing" HeaderText="Onlinemeeting" />
                    <asp:BoundField DataField="cstatus" HeaderText="Status" />
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
