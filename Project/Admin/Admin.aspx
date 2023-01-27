<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Project.Admin.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Dashboard - SB Admin</title>


    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="admindash/css/styles.css" rel="stylesheet" />
     <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <style>
         #main5 {
            justify-content: space-around;
            color: Black;
            font-weight:700;
            font-size:25px;
            padding-bottom: 30px;
            padding-top: 30px;
            
        }
        @media only screen and (min-device-width:0px) and (max-device-width:480px) {
            table {
                overflow-x: scroll;
            }
        }
    </style>
    <script>
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <nav class="sb-topnav navbar navbar-expand" style="background-color: #2D2735; color: white;">

                    <a class="navbar-brand me-2" href="../Default.aspx" runat="server">
                        <img src="../images/pngegg.png" alt=" Logo" style="height: 40px; margin-left: 50px;" />
                    </a>

                    <%--  <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            </form>--%>
                    <!-- Sidebar Toggle-->
                    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
                    <!-- Navbar Search-->
                    <%--<form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">--%>
                    <div class="input-group">
                        <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                        <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                    </div>
                    <%-- </form>--%>
                    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white; margin-right: 50px;"><i class="fas fa-user fa-fw"></i></a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="../Default.aspx" runat="server">Back To Home</a></li>

                            </ul>
                        </li>
                    </ul>
                </nav>
                <div id="layoutSidenav">
                    <div id="layoutSidenav_nav">
                        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                            <div class="sb-sidenav-menu">
                                <div class="nav">
                                  <a class="nav-link" runat="server">
                                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                        <asp:Button ID="btnStatistics" runat="server" Text="Main"  ForeColor="White" BackColor="Transparent" BorderColor="Transparent" Width="100%" />

                                    </a>
                                     <a class="nav-link" runat="server">
                                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>

                                        <asp:Button ID="btnDonations" runat="server" Text="Donations" OnClick="btnDonations_Click" ForeColor="White" BackColor="Transparent" BorderColor="Transparent" Width="100%" />


                                    </a>
                                     <a class="nav-link" runat="server">
                                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                        <asp:Button ID="btnAvailableTools" runat="server" Text="Accepted Tools" OnClick="btnAvailableTools_Click" ForeColor="White" BackColor="Transparent" BorderColor="Transparent" Width="100%" />

                                    </a>
                                    <a class="nav-link" runat="server">
                                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                        <asp:Button ID="btnCash" runat="server" Text="Cash Donations" OnClick="btnCash_Click" ForeColor="White" BackColor="Transparent" BorderColor="Transparent" Width="100%" />


                                    </a>
                                   
                                    <a class="nav-link" runat="server">
                                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                        <asp:Button ID="btnOrganizations" runat="server" Text="Associations"  OnClick="btnOrganizations_Click" ForeColor="White" BackColor="Transparent" BorderColor="Transparent" Width="100%" />

                                    </a>
                                    
                                        <a class="nav-link" runat="server">
                                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>

                                            <asp:Button ID="btnApplications" runat="server" Text="Applications" ForeColor="White" BackColor="Transparent" BorderColor="Transparent" Width="100%" OnClick="btnApplications_Click" />
                                        </a>
                                        <a class="nav-link" runat="server">
                                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                        <asp:Button ID="btnVoulnteer" runat="server" Text="Volunteers" OnClick="btnVoulnteer_Click" ForeColor="White" BackColor="Transparent" BorderColor="Transparent" Width="100%" />


                                    </a>

                                    <%--<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Pages
                               
                           

                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>--%>
                                    <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                        <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">Authentication
                                       
                                   

                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                            </a>
                                            <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                                <nav class="sb-sidenav-menu-nested nav">
                                                    <a class="nav-link" href="usersadmin.aspx" runat="server">Users</a>
                                                    <a class="nav-link" href="addProduct.aspx" runat="server">Add Pruduct</a>
                                                    <a class="nav-link" href="productsAdmin.aspx" runat="server">All Product</a>
                                                    <a class="nav-link" href="ordersAdmin.aspx" runat="server">Total Sales</a>
                                                </nav>
                                                <%--navv.............--%>
                                            </div>
                                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">Error
                                       
                                   

                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                            </a>
                                            <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                                <nav class="sb-sidenav-menu-nested nav">
                                                    <a class="nav-link" href="admindash/401.html">401 Page</a>
                                                    <a class="nav-link" href="admindash/404.html">404 Page</a>
                                                    <a class="nav-link" href="admindash/500.html">500 Page</a>
                                                </nav>
                                            </div>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </nav>
                    </div>
                    <div id="layoutSidenav_content">
                        <main>


                            <div class="container-fluid row" id="statistics" runat="server" style="display: flex;  text-align: center; justify-content: space-between; align-items: baseline;">
                                <h3>Statistics</h3>
                                <div class="container" id="main5" style="display: flex; text-align: center; justify-content: space-around; align-items: baseline;">
            <div class="col-xl-4 col-md-6" style="background-color:#F56F1A; color:white; padding:2px">
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="FFF"></asp:Label><br />
                <p>Tools Donation</p>
            </div>
            <div  class="col-xl-4 col-md-6" style="background-color:#F56F1A; color:white; padding:2px">
                <asp:Label ID="Label2" runat="server" Text="Label" CssClass="FFF"></asp:Label><br />
                <p>Fund Donation</p>
            </div>
            <div class="col-xl-4 col-md-6" style="background-color:#F56F1A; color:white; padding:2px">
                <asp:Label ID="Label3" runat="server" Text="Label" CssClass="FFF"></asp:Label><br />
                <p>Volunteers</p>
            </div>
            <%--            <div><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><br /><p>associations</p></div>--%>
        </div>


                            </div>

                            <div class="container-fluid" id="availableTools" runat="server">

                                <h3>Available Tools</h3>


                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Tool] WHERE [tool_id] = @tool_id" InsertCommand="INSERT INTO [Tool] ([donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (@donorName, @category, @quality, @dateDonated, @phone, @email, @address, @city_id, @comment, @status, @image)" SelectCommand="SELECT *
FROM Tool AS t1
LEFT JOIN city AS t2
ON t1.city_id = t2.city_id
WHERE t1.status = 'True'"
                                    UpdateCommand="UPDATE [Tool] SET [donorName] = @donorName, [category] = @category, [quality] = @quality, [dateDonated] = @dateDonated, [phone] = @phone, [email] = @email, [address] = @address, [city_id] = @city_id, [comment] = @comment, [status] = @status, [image] = @image WHERE [tool_id] = @tool_id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="tool_id" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="donorName" Type="String" />
                                        <asp:Parameter Name="category" Type="String" />
                                        <asp:Parameter Name="quality" Type="Int32" />
                                        <asp:Parameter DbType="Date" Name="dateDonated" />
                                        <asp:Parameter Name="phone" Type="Int32" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="address" Type="String" />
                                        <asp:Parameter Name="city_id" Type="Int32" />
                                        <asp:Parameter Name="comment" Type="String" />
                                        <asp:Parameter Name="status" Type="Boolean" />
                                        <asp:Parameter Name="image" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="donorName" Type="String" />
                                        <asp:Parameter Name="category" Type="String" />
                                        <asp:Parameter Name="quality" Type="Int32" />
                                        <asp:Parameter DbType="Date" Name="dateDonated" />
                                        <asp:Parameter Name="phone" Type="Int32" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="address" Type="String" />
                                        <asp:Parameter Name="city_id" Type="Int32" />
                                        <asp:Parameter Name="comment" Type="String" />
                                        <asp:Parameter Name="status" Type="Boolean" />
                                        <asp:Parameter Name="image" Type="String" />
                                        <asp:Parameter Name="tool_id" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

                                <table class="table table-striped table-bordered ">
                                    <thead>
                                        <tr style="background-color: #F56F1A; color: white">
                                         <%--   <th scope="col">#</th>--%>
                                            <th scope="col">Category</th>
                                            <th scope="col">Donation Date</th>
                                            <th scope="col">Donor Phone</th>
                                            <th scope="col">Address</th>
                                            <th scope="col">City</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>

                                                <tr>
                                                   <%-- <th scope="row">1</th>--%>
                                                    <td><%#Eval("category") %></td>
                                                    <td><%#Eval("dateDonated").ToString().Substring(0,10) %></td>
                                                    <td>0<%#Eval("phone") %></td>
                                                    <td><%#Eval("address") %></td>
                                                    <td><%#Eval("cityName") %></td>
                                                    <%--      <td>><asp:Image ID="Image1" runat="server" Style="width: 150px" ImageUrl='<%#Eval("image") %>' /></td></td>--%>
                                                </tr>
                                            </ItemTemplate>

                                        </asp:Repeater>
                                    </tbody>
                                </table>

                            </div>
                            <div class="container-fluid" id="organizations" runat="server">

                                <h3>Associations</h3>


                                <br />
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (@Id, @Email, @EmailConfirmed, @PasswordHash, @SecurityStamp, @PhoneNumber, @PhoneNumberConfirmed, @TwoFactorEnabled, @LockoutEndDateUtc, @LockoutEnabled, @AccessFailedCount, @UserName)" SelectCommand="SELECT * FROM [AspNetUsers]" UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @Email, [EmailConfirmed] = @EmailConfirmed, [PasswordHash] = @PasswordHash, [SecurityStamp] = @SecurityStamp, [PhoneNumber] = @PhoneNumber, [PhoneNumberConfirmed] = @PhoneNumberConfirmed, [TwoFactorEnabled] = @TwoFactorEnabled, [LockoutEndDateUtc] = @LockoutEndDateUtc, [LockoutEnabled] = @LockoutEnabled, [AccessFailedCount] = @AccessFailedCount, [UserName] = @UserName WHERE [Id] = @Id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Id" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="Id" Type="String" />
                                        <asp:Parameter Name="Email" Type="String" />
                                        <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
                                        <asp:Parameter Name="PasswordHash" Type="String" />
                                        <asp:Parameter Name="SecurityStamp" Type="String" />
                                        <asp:Parameter Name="PhoneNumber" Type="String" />
                                        <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
                                        <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
                                        <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
                                        <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
                                        <asp:Parameter Name="AccessFailedCount" Type="Int32" />
                                        <asp:Parameter Name="UserName" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Email" Type="String" />
                                        <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
                                        <asp:Parameter Name="PasswordHash" Type="String" />
                                        <asp:Parameter Name="SecurityStamp" Type="String" />
                                        <asp:Parameter Name="PhoneNumber" Type="String" />
                                        <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
                                        <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
                                        <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
                                        <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
                                        <asp:Parameter Name="AccessFailedCount" Type="Int32" />
                                        <asp:Parameter Name="UserName" Type="String" />
                                        <asp:Parameter Name="Id" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" Width="100%" ForeColor="Black">
                                    <Columns>
                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#F56F1A" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>






                            </div>

                            <div id="cash" runat="server" class="containter-fluid">
                                <div class="col-12" style="padding-inline: 20px">
                                                                                <h3>Cash Donations</h3>


                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Cash]"></asp:SqlDataSource>
                                    <table class="table table-striped table-bordered ">
                                        <thead>
                                            <tr style="background-color: #F56F1A; color: white">
                                                <%--<th scope="col">#</th>--%>
                                                <th scope="col">Amount</th>
                                                <th scope="col">Donor Name</th>
                                                <th scope="col">Date Donated</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource5">
                                                <ItemTemplate>

                                                    <tr>
                                                        <%--<th scope="row">#</th>--%>
                                                        <td>$<%#Eval("amount") %></td>
                                                        <td><%#Eval("donorName") %></td>
                                                        <td><%#Eval("dateDonated").ToString().Substring(0,10) %></td>
                                                        <%--      <td>><asp:Image ID="Image1" runat="server" Style="width: 150px" ImageUrl='<%#Eval("image") %>' /></td></td>--%>
                                                    </tr>
                                                </ItemTemplate>


                                            </asp:Repeater>
                                        </tbody>
                                    </table>



                                </div>
                            </div>
                            
                <div class="container-fluid" id="donations" runat="server">

                    <div class="col-12" style="padding-inline: 20px">

                        <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server"></asp:ScriptManagerProxy>

                       

                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <h3>Donations</h3>
                                <asp:GridView ID="GridView2" runat="server" class="table table-striped table-responsive" AutoGenerateColumns="False" DataKeyNames="tool_id" DataSourceID="SqlDataSource3" CellPadding="2" GridLines="None" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Width="100%" ForeColor="Black" Style="font-size: 12px">

                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="donorName" HeaderText="Donor Name" SortExpression="donorName" />
                                        <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                                        <asp:BoundField DataField="quality" HeaderText="Quality" SortExpression="quality" />
                                        <asp:BoundField DataField="dateDonated" HeaderText="Donation Date" SortExpression="dateDonated" DataFormatString="{0:dd/MM/yyyy}" />
                                        <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                                        <asp:BoundField DataField="comment" HeaderText="Comment" SortExpression="comment" />
                                        <asp:TemplateField HeaderText="image" SortExpression="Image">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="200px" Style="height: 100px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="tool_id" HeaderText="tool_id" InsertVisible="False" ReadOnly="True" SortExpression="tool_id" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkStatus" runat="server"
                                                    AutoPostBack="True" OnCheckedChanged="chkStatus_OnCheckedChanged"
                                                    Checked='<%# Convert.ToBoolean(Eval("status")) %>'
                                                    Text='<%# Eval("status").ToString().Equals("True") ? " Status " : " Status " %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:CommandField ShowDeleteButton="True" />

                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#F56F1A" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Tool] WHERE [tool_id] = @tool_id" InsertCommand="INSERT INTO [Tool] ([donorName], [category], [quality], [dateDonated], [phone], [email], [address], [city_id], [comment], [status], [image]) VALUES (@donorName, @category, @quality, @dateDonated, @phone, @email, @address, @city_id, @comment, @status, @image)" SelectCommand="SELECT * FROM [Tool]" UpdateCommand="UPDATE [Tool] SET [donorName] = @donorName, [category] = @category, [quality] = @quality, [dateDonated] = @dateDonated, [phone] = @phone, [email] = @email, [address] = @address, [city_id] = @city_id, [comment] = @comment, [status] = @status, [image] = @image WHERE [tool_id] = @tool_id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="tool_id" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="donorName" Type="String" />
                                        <asp:Parameter Name="category" Type="String" />
                                        <asp:Parameter Name="quality" Type="Int32" />
                                        <asp:Parameter DbType="Date" Name="dateDonated" />
                                        <asp:Parameter Name="phone" Type="Int32" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="address" Type="String" />
                                        <asp:Parameter Name="city_id" Type="Int32" />
                                        <asp:Parameter Name="comment" Type="String" />
                                        <asp:Parameter Name="status" Type="Boolean" />
                                        <asp:Parameter Name="image" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="donorName" Type="String" />
                                        <asp:Parameter Name="category" Type="String" />
                                        <asp:Parameter Name="quality" Type="Int32" />
                                        <asp:Parameter DbType="Date" Name="dateDonated" />
                                        <asp:Parameter Name="phone" Type="Int32" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="address" Type="String" />
                                        <asp:Parameter Name="city_id" Type="Int32" />
                                        <asp:Parameter Name="comment" Type="String" />
                                        <asp:Parameter Name="status" Type="Boolean" />
                                        <asp:Parameter Name="image" Type="String" />
                                        <asp:Parameter Name="tool_id" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>

                </div>



                            <div id="Applications" runat="server" class="containter-fluid">
                                <div class="col-12" style="padding-inline: 20px">
                                                                                <h3>Tools Applications</h3>

                                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Application] WHERE [application_id] = @application_id" InsertCommand="INSERT INTO [Application] ([applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (@applicationDate, @tool_id, @user_id, @applicationStatus)" SelectCommand="SELECT * FROM [Application] WHERE ([applicationStatus] = @applicationStatus)" UpdateCommand="UPDATE [Application] SET [applicationDate] = @applicationDate, [tool_id] = @tool_id, [user_id] = @user_id, [applicationStatus] = @applicationStatus WHERE [application_id] = @application_id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="application_id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="applicationDate" Type="DateTime" />
                                            <asp:Parameter Name="tool_id" Type="Int32" />
                                            <asp:Parameter Name="user_id" Type="String" />
                                            <asp:Parameter Name="applicationStatus" Type="Boolean" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="False" Name="applicationStatus" Type="Boolean" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="applicationDate" Type="DateTime" />
                                            <asp:Parameter Name="tool_id" Type="Int32" />
                                            <asp:Parameter Name="user_id" Type="String" />
                                            <asp:Parameter Name="applicationStatus" Type="Boolean" />
                                            <asp:Parameter Name="application_id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                     <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" class="table table-striped" DataKeyNames="application_id" DataSourceID="SqlDataSource7" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="chkStatus_OnCheckedChanged1">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="application_id" HeaderText="Application ID" InsertVisible="False" ReadOnly="True" SortExpression="application_id" />
                                <asp:BoundField DataField="applicationDate" HeaderText="Application Date" SortExpression="applicationDate" />
                                <asp:BoundField DataField="tool_id" HeaderText="Tool ID" SortExpression="tool_id" />
                                <asp:CheckBoxField DataField="applicationStatus" HeaderText="Status" SortExpression="applicationStatus" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkStatus" runat="server" AutoPostBack="True" Checked='<%# Convert.ToBoolean(Eval("applicationStatus")) %>' OnCheckedChanged="chkStatus_OnCheckedChanged1" Text='<%# Eval("applicationStatus").ToString().Equals("True") ? " Status " : " Status " %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#F56F1A" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                                   <%-- <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Application] WHERE [application_id] = @application_id" InsertCommand="INSERT INTO [Application] ([applicationDate], [tool_id], [user_id], [applicationStatus]) VALUES (@applicationDate, @tool_id, @user_id, @applicationStatus)" SelectCommand="SELECT * FROM [Application]" UpdateCommand="UPDATE [Application] SET [applicationDate] = @applicationDate, [tool_id] = @tool_id, [user_id] = @user_id, [applicationStatus] = @applicationStatus WHERE [application_id] = @application_id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="application_id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="applicationDate" Type="Int32" />
                                            <asp:Parameter Name="tool_id" Type="Int32" />
                                            <asp:Parameter Name="user_id" Type="String" />
                                            <asp:Parameter Name="applicationStatus" Type="Boolean" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="applicationDate" Type="Int32" />
                                            <asp:Parameter Name="tool_id" Type="Int32" />
                                            <asp:Parameter Name="user_id" Type="String" />
                                            <asp:Parameter Name="applicationStatus" Type="Boolean" />
                                            <asp:Parameter Name="application_id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>--%>
                                </div>
                            </div>
<div id="vol" runat="server" class="containter-fluid">
                <div class="col-12" style="padding-inline: 20px">
                                                <h3>Volunteers</h3>

                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [volunteer]"></asp:SqlDataSource>
                    <table class="table table-striped table-bordered ">
                        <thead>
                            <tr style="background-color: #F56F1A; color: white">
                               <%-- <th scope="col">#</th>--%>
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
                                        <%--<th scope="row">#</th>--%>
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



               
                    </div>
                </div>






            


            </ContentTemplate>
        </asp:UpdatePanel>
                        </main>
                                 </div>
        </div>

        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Tools4Hunger-<%: DateTime.Now.Year %></div>

                </div>
            </div>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="admindash/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="admindash/assets/demo/chart-area-demo.js"></script>
        <script src="admindash/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="admindash/js/datatables-simple-demo.js"></script>
    </form>
</body>
</html>
