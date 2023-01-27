<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="voulnteer.aspx.cs" Inherits="Project.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Alata&family=Caveat:wght@400;500;600;700&family=Cinzel:wght@400;500;600&family=Gravitas+One&family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">    <style>
        body {
            background-image: url(images/vol.jpg);
            background-size: cover;
            background-repeat: no-repeat;
        }

        .navbar {
            background-image: url(images/nav.png);
        }
        .main1{
            margin-top:40px;
            padding-top:30px;
            padding-bottom:30px;
            display:flex;
            justify-content:space-around;
             background-image:url("images/fff.png");
        }
        .main2{
           
            margin-top:50px;
            width:40%;
            display:flex;
            flex-direction:column;
            padding-inline:20px;
            justify-content:center;
            align-items:center;
            gap:15px;
            
            
           
        }
        .main2 h1{
            font-family: 'Cinzel', serif;
            font-weight:600;
            color:#F56F1A;
        }
        .main11{
            display:flex;
            align-items:center;
            width:40%;
            color:#F56F1A;
            font-family: 'Cinzel', serif;
        }
        .main11 h1{
            font-size:50px;
        }
   /*     .txt1{
            width:300px;
        }*/
        .btnv{
/*            background-color:#F56F1A;
            width:200px;
            border:1px;
            height:50px;*/

             background-color: #F56F1A;
             color:white;
             width:150px;
             height:50px;
         }
        
        .divtxt{
            width: 100%;
            display:flex ;
            justify-content:center

        }
        .txtbox {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 3px solid #ccc;
            -webkit-transition: 0.5s;
            transition: 0.5s;
            outline: none;
            border-radius:10px;
        }
        .txtbox[type=text]:focus {
         border: 3px solid #F56F1A;
         }

        @media (min-width: 0px) and (max-width:480px){

            .main2{
                width:80%;
            }
            .main11{
                display:none;
            }
        }
        
    </style>
    <script>
        function voulnteer() {
            swal({
                title: 'Success!',
                text: 'Your application has been submitted',
                type: 'success',
                icon: 'success',
                button: 'Ok',

            });
            //.then((willDelete) => {
            //    if (willDelete) {
            //        window.location.href = '/Default.aspx';
            //    }
            //});

        }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main1" >
        <div class="main11"> <h1  >"You can be a part of something bigger."</h1> </div>
<div class="main2">
           <h1> Be A Volunteer</h1>
        <div  class="divtxt">
           
            <asp:TextBox ID="TextBox1"  runat="server" CssClass="txtbox" placeholder="Full Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="ENTER YOU NAME PLEASE" ForeColor="Red">*</asp:RequiredFieldValidator>
        </div>

        <div class="divtxt">
            <asp:TextBox ID="TextBox2"  runat="server"  CssClass="txtbox" placeholder="City"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="ENTER YOUR CITY PLEASE" ForeColor="Red">*</asp:RequiredFieldValidator>
        </div>
        <div class="divtxt">
            <asp:TextBox ID="TextBox3"  runat="server"  CssClass="txtbox" placeholder="EAdress"  ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="ENTER YOUR ADRESS PLEASE" ForeColor="Red">*</asp:RequiredFieldValidator>
        </div>

        <div class="divtxt">
            <asp:TextBox ID="TextBox4"   runat="server" TextMode="Phone"  CssClass="txtbox" placeholder="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="ENTER YOUR PHONE " ForeColor="Red">*</asp:RequiredFieldValidator>
        </div>
        <div class="divtxt">
            <asp:TextBox ID="TextBox5"  runat="server" TextMode="Email"  CssClass="txtbox" placeholder="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="ENTER YOUR MAIL" ForeColor="Red">*</asp:RequiredFieldValidator>
        </div>
       
        <div>
            <asp:Button ID="Button2" runat="server" Text="Apply" CssClass="text-center btnv" OnClick="Button2_Click" ForeColor="White" />
        </div>
</div>

    </div>
</asp:Content>
