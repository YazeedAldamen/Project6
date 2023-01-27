<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="applicationPage.aspx.cs" Inherits="Project.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .orgnaiztioncover{
             height: 373px;
    width: 100%;
            background-repeat:no-repeat;
            background-size:cover;
              background-position: center center;

        }
         .navbar {
            background-image: url(images/nav.png);
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="orgnaiztioncover" class="container-fluid orgnaiztioncover" runat="server" style="background-image: url('images/orgcover.png')">
        <h1 style="font-weight: bold; font-size: 40px; color: #F56F1A; display: flex; justify-content:center;     margin-top: 185px; ">Apply for Tool Needs</h1>
    </div>
    <div id="orgwelcome">
        <p></p>
    </div>
    <asp:GridView ID="GridView1"   class="table table-striped" runat="server" DataKeyNames="tool_id" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            
            <asp:BoundField DataField="donorName" HeaderText="Donor Name" SortExpression="donorName" />
            <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
            <asp:BoundField DataField="quality" HeaderText="Quality" SortExpression="quality" />
            <asp:BoundField DataField="dateDonated" HeaderText="Donation Date" SortExpression="dateDonated"  DataFormatString="{0:yyyy/MM/dd}"/>
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="comment" HeaderText="Comment" SortExpression="comment"  />
            <asp:TemplateField HeaderText="Image" SortExpression="image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>'  style="width:200px; height:150px"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" OnClientClick="this.disabled = true;"
 runat="server" CausesValidation="false" CommandName="" OnClick="LinkButton1_Click1" Text="Apply" class="btn btn-success"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:BoundField DataField="tool_id" HeaderText="tool_id" SortExpression="tool_id" InsertVisible="False" ReadOnly="True" Visible="False" />

        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#F56F1A" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Tool] WHERE ([status] = @status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="status" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>