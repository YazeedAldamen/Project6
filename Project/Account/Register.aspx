<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project.Account.Register" %>




<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('images/hugging.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }
        .navbar
        {
            background-image: url("images/nav.png");
            width: 100%;
        }
        .login {
            /*   col-md-offset-3*/
        }

        .col-md-offset-3 {
            margin-top: 40px;
        }
        .btnRegister {
            color: white;
            background-color: #F56F1A;
        }
     .header {
            display: flex;
            justify-content: center;
            margin-left: 15px;
                margin-right: 40px;
            
        }
        #h2 {
            font-weight: 500;
            color: #F56F1A;
        }
        .p{
           padding-bottom:20px;
        }
                .whitecont {
            margin-top: 40px;
            margin-right: 0px;
            width: 30%;
            border-radius: 10px;
            height: 100%;
            background-color: rgb(255, 255, 255, .73);
            display: flex;
            flex-direction: column;
        }
        
/*        .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
            float: none;
        }*/


 
}
        @media (min-width: 0px) and (max-width:480px) {
            .whitecont {
                width: 100%;
            }

            .col-md-offset-3 {
                margin-left: 35px;
                margin-top: 20px;
            }
            .btnRegister {
                margin-left: 50px;
            }

                
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="admindash/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</asp:Content>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent">
    <div  class="container"  style="display: flex; width: 90%; justify-content: center; align-items: center">
        <%--<h2><%: Title %> Now</h2>--%>
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>

        <div class="whitecont" >
            <h2 class="header" id="h2"  >Register Your Association</h2>
            <h4 class="header">Create a new account</h4>
            <hr />
            <%--<div style="width: 100%; padding-inline: 30px" class="form-group ">--%>
                <div style="width: 100%; padding-inline: 15px;    display: flex;justify-content: center;">
                    
                <div class="p"  >
                     <asp:Label runat="server" AssociatedControlID="Email" >Email</asp:Label><asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                        CssClass="text-danger" ErrorMessage="*" />
                    <asp:TextBox class="txtbox"  runat="server" ID="Email"   TextMode="Email"  CssClass="form-control" />
                    
                </div> 
                    </div>

                     <div style="width: 100%; padding-inline: 15px;    display: flex; justify-content: center;">
                    <div class="p" >
                         <asp:Label runat="server" AssociatedControlID="Password" >Organization Name</asp:Label><asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserName"
                            CssClass="text-danger" ErrorMessage="*" />
                        <asp:TextBox class="txtbox" runat="server" ID="txtUserName"  CssClass="form-control" />
                        
                    </div>
                </div>

                <div style="width: 100%; padding-inline: 15px; display: flex; justify-content: center;">
                    <div >
                      <asp:Label runat="server" AssociatedControlID="Password">Phone Number</asp:Label>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhone"
                            CssClass="text-danger" ErrorMessage="*" />
              <%--          <uc1:countrykey runat="server" id="countrykey" />--%>
                        <asp:TextBox style="margin-bottom:0px" class="txtbox" runat="server" Width="100%" ID="txtPhone" TextMode="Phone" CssClass="form-control" />

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtPhone" runat="server" ErrorMessage="Invalid phone number" ValidationExpression="(07)[789][0-9]{7}"></asp:RegularExpressionValidator><br />
                       <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ValidationExpression="^(0)?[1-9]{1}[0-9]{6}$" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>--%>
                          
                    </div>
                </div>
                <div style="width: 100%; padding-inline: 15px; display: flex; justify-content: center;">
                    <div class="p" >
                                            <asp:Label runat="server" AssociatedControlID="Password" >Password</asp:Label>
                                             <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                            CssClass="text-danger" ErrorMessage="*" />
                        <asp:TextBox class="txtbox" runat="server"  ID="Password" TextMode="Password" CssClass="form-control" />
                       
                    </div>
                </div>
                <div style="width: 100%; padding-inline: 15px; display: flex; justify-content: center;" >
                    <div class="p" >
                             <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password  </asp:Label>
                              <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="*" />
                        <asp:TextBox class="txtbox" runat="server"  ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                       
                        
                    </div>
                   
                </div>
                 <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="Password Doesn't Match" />
                <div style="justify-items: center" class="form-group">
                    <div style="display: flex;
    justify-content: center;">
                        <asp:Button style="margin-bottom:20px;" runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btnRegister btn-lg" /><br />

                   
                    </div>
                                            <div style="display: flex;
    justify-content: center;">
                                 <span >Already have an account? </span>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx">Login here</asp:HyperLink>
                        </div>
                </div>
            </div>
        

    </div>

    
</asp:Content>