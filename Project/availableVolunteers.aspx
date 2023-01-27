<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="availableVolunteers.aspx.cs" Inherits="Project.WebForm7" %>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
 <div id="orgnaiztioncover" class="container-fluid orgnaiztioncover" runat="server" style="background-image: url('images/orgcover.png')">
        <h1 style="font-weight: bold; font-size: 40px; color: #F56F1A; display: flex; justify-content:center;     margin-top: 185px; ">Available Volunteers</h1>
    </div>
    <div id="orgwelcome">
        <p></p>
    </div>
    <div id="vol" runat="server" class="containter-fluid">
                                <div class="col-12" style="padding-inline: 20px">

                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [volunteer]"></asp:SqlDataSource>
                                    <table class="table table-striped table-bordered ">
                                        <thead>
                                            <tr style="background-color: #F56F1A; color: white">
                                                <th scope="col">#</th>
                                                <th scope="col">Name</th>
                                                <th scope="col">City</th>
                                                <th scope="col">Address</th>
                                                <th scope="col">Phone</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource4">

                                                <ItemTemplate>

                                                    <tr>
                                                        <th scope="row">#</th>
                                                        <td><%#Eval("name") %></td>
                                                        <td><%#Eval("city") %></td>
                                                        <td><%#Eval("adress") %></td>
                                                        <td><%#Eval("phone") %></td>
                                                    </tr>
                                                </ItemTemplate>


                                            </asp:Repeater>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
</asp:Content>
