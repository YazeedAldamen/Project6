<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project.Account.Register" %>



<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('images/hugging.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }
        .navbar{
            background-image:url("images/nav.png");
            width:100%;
        }
    </style>
</asp:Content>

<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="MainContent">
    <div  class="container"  style="display: flex; width: 90%; justify-content:flex-end; align-items: center">
        <%--<h2><%: Title %> Now</h2>--%>
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>

        <div style="margin-top:40px; border-radius: 10px; height: 100%; background-color: rgb(255, 255, 255, .73); display: flex; flex-direction: column" class="form-horizontal">
            <h2 style="margin-left: 15px; font-weight: 500">Register Now</h2>
            <h4 style="margin-left: 15px">Create a new account</h4>
            <hr />
            <%--<div style="width: 100%; padding-inline: 30px" class="form-group ">--%>
                <div style="width: 100%; padding-left: 30px" class="form-group ">

                <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-3 control-label">Email</asp:Label><br />
                <div class="col-md-12">
                    <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" /><br />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                        CssClass="text-danger" ErrorMessage="The email field is required." />

                </div>               <%-- <div style="width: 100%; padding-inline: 30px" class="form-group ">
                    <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-5 control-label">Phone mumber  </asp:Label>
                    <div class="col-md-12">
                        <asp:TextBox runat="server" ID="TextBox7" TextMode="Phone" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password2"
                            CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>--%>

                     <div style="width: 100%; padding-inline: 30px" class="form-group ">
                    <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-6 control-label">Organization Name</asp:Label>
                    <div class="col-md-12">
                        <asp:TextBox runat="server" ID="txtUserName"  CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserName"
                            CssClass="text-danger" ErrorMessage="*" />
                    </div>
                </div>

                <div style="width: 100%; padding-left: 30px" class="form-group ">
                    <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-5 control-label">Phone Number  </asp:Label><br />
                    <div class="col-md-12">
              <%--          <uc1:countrykey runat="server" id="countrykey" />--%>
                        <asp:TextBox runat="server" ID="TextBox4" TextMode="Phone" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox4"
                            CssClass="text-danger" ErrorMessage="The password field is required." />
                       <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ValidationExpression="^(0)?[1-9]{1}[0-9]{6}$" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>--%>
                    </div>
                </div>
                <div style="width: 100%; padding-inline: 30px" class="form-group ">
                    <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-3 control-label">Password</asp:Label>
                    <div class="col-md-12">
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                            CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                </div>
                <div style="width: 100%; padding-inline: 30px" class="form-group ">
                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-6 control-label">Confirm password  </asp:Label>
                    <div class="col-md-12">
                        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                    </div>
                </div>
                <div style="justify-items: center" class="form-group">
                    <div class="col-md-offset-4 col-md-10">
                        <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-ahmad btn-lg" />
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
