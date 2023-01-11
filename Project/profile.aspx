<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Project.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
 body {
    background: #2B2533; /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #4ca2cd, #67B26F); /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #F56F1A,#2B2533); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    padding: 0;
    margin: 0;
    font-family: 'Lato', sans-serif;
    color: #000;
}

.student-profile .card {
    border-radius: 10px;
}

    .student-profile .card .card-header .profile_img {
        width: 150px;
        height: 150px;
        object-fit: cover;
        margin: 10px auto;
        border: 10px solid #ccc;
        border-radius: 50%;
    }

    .student-profile .card h3 {
        font-size: 20px;
        font-weight: 700;
    }

    .student-profile .card p {
        font-size: 16px;
        color: #000;
    }

.student-profile .table th,
.student-profile .table td {
    font-size: 14px;
    padding: 5px 10px;
    color: #000;
}
           .navbar{
            background-image:url("images/nav.png");
        }
</style>
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your Update info has been succesfully sent',
                type: 'success'
            });
        }
    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

        <div class="ScriptTop">
            <div class="rt-container">

                <div class="rt-container">
                    <div class="col-rt-12">
                        <div class="Scriptcontent">

                            <!-- Student Profile -->
                            <div class="student-profile py-4">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="card shadow-sm">
                                                <div class="card-header bg-transparent text-center">
                                                    <asp:Image ID="userPic" runat="server" src="Images/user.png" class="profile_img" />
                                                    
                                                    <br />
                                                    <asp:Label ID="lblName" runat="server"></asp:Label>
                                                </div>
                                                <div class="card-body">
                                                   <a href="profile.aspx"><strong class="pr-1">Profile</strong> </a><br />
                                                    <a href="Order.aspx"><strong class="pr-1">Order</strong> </a>
                                                    <br />


                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <asp:PlaceHolder ID="userInfo" runat="server">
                                                <div class="card shadow-sm">
                                                    <div class="card-header bg-transparent border-0">
                                                        <h3 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h3>
                                                    </div>
                                                    <div class="card-body pt-0">
                                                        <table class="table table-bordered">
                                                            <tr>
                                                                <th width="30%">Name</th>
                                                                <td>
                                                                    <asp:Label ID="lblUName" runat="server"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <th width="30%">Email</th>
                                                                <td>
                                                                    <asp:Label ID="lblEmail" runat="server"></asp:Label></td>
                                                            </tr>
                                                           <%-- <tr>
                                                                <th width="30%">Address</th>
                                                                <td>
                                                                    <asp:Label ID="lblAddr" runat="server"></asp:Label></td>

                                                            </tr>--%>
                                                            <tr>
                                                                <th width="30%">Phone</th>
                                                                <td>
                                                                    <asp:Label ID="lblPhone" runat="server"></asp:Label></td>
                                                            </tr>

                                                        </table>
                                                        <asp:Button ID="btnEdit" runat="server" class="btn btn-primary" Text="Edit" OnClick="btnEdit_Click" />
                                                    </div>

                                                </div>
                                                <br />
                                                <br />
                                            </asp:PlaceHolder>


                                            <asp:PlaceHolder ID="editInfo" runat="server" Visible="false">
                                                <div class="card shadow-sm">
                                                    <div class="card-header bg-transparent border-0">
                                                        <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Edit Information</h3>
                                                        <table class="table table-bordered">
                                                            <tr>
                                                                <th width="30%">Name</th>
                                                                <td>
                                                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                                            </tr>
                                                            <tr>
                                                                <th width="30%">Email</th>
                                                                <td>
                                                                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <%--<tr>
                                                                <th width="30%">Address</th>
                                                                <td>
                                                                    <asp:TextBox ID="txtAddr" runat="server"></asp:TextBox>
                                                                </td>

                                                            </tr>--%>
                                                            <tr>
                                                                <th width="30%">Phone</th>
                                                                <td>
                                                                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
                                                            </tr>
                                                           <%-- <tr>
                                                                <th width="30%">Password</th>
                                                                <td>
                                                                    <asp:TextBox ID="txtPass" runat="server" Type="password"></asp:TextBox></td>
                                                            </tr>--%>
                                                           <%-- <tr>
                                                                <th width="30%">Picture</th>

                                                                <td>
                                                                    <asp:FileUpload ID="userImg" runat="server" accept=".png,.jpg,.jpeg,.gif" /></td>
                                                            </tr>--%>
                                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                                        </table>
                                                        <asp:Button ID="btnUpdate" runat="server" class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />




                                                    </div>

                                                </div>

                                            </asp:PlaceHolder>



                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

</asp:Content>
