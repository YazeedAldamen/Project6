<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .navbar{
            background-color:#2D2735;
        }
      
        .ddd {
            background-image: url("images/body2.png");
            background-size: cover;
            background-position: top;
        }
        .orange{
            margin-top:70px;
            color:#F56F1A;
        }
        .text1 {
            color:#2D2735;
        }
        .mainn1 {
            justify-content:space-between;
        }
        .mainn1 div{
            width:30%;
        }
        .mainn1 img{
            margin-top:50px;
            height:45px;
            width:45px;
        }
        .container-fluid{
            margin-top:70px;
            padding-bottom:0px;
        }

        #mainn3{
            display:flex;
        }
        #mainn3 div{
            width:47%;
            padding-left:10px;
        }
        #mainn3 img{
            width:100%
        }
        .text-white{
            color:white;
        }
          .mainn4{
              margin-top:20px;
            display:flex;
            justify-content:space-between;
        }
        .mainn4 div{
            width:30%;
            border:0.5px solid #E6E6E6;
           
        } 
        .mainn4 img{
          margin-bottom:10px;
            width:100%;
        }
       .DONATE1{
           background-color:#F56F1A;
           color:white;
            width:100% ; 
            height:50px;
            border:0px;

        }
       #main5{
           justify-content:space-between;
           color:white;
           padding-bottom:30px;
           padding-top:10px;
       }
       #main5 div{
width:20%;
       }
         .main6{
              margin-top:20px;
            display:flex;
            justify-content:space-between;
        }
        .main6 div{
            width:20%;
            border:0.5px solid #E6E6E6;
           
        } 
        .main6 img{
          margin-bottom:10px;
            width:100%;
        }
       #main7{ 
           margin-top:50px;
          background-image:url('images/bg.png');
          background-size:cover;
          padding-top:25px;
          padding-bottom:25px;
          display:flex;
          justify-content:space-between;
          align-items:center;
                 }

       #main7 div{
           width:70%, 20%;
       }
       

       @media only screen and (min-device-width: 481px) and (max-device-width: 768px) { 
           #mainn3{    flex-direction: column;}
           #mainn3 div{ width:100%;}
       }
        @media only screen and (min-device-width: 0) and (max-device-width: 480px) { 
            .mainn1{    flex-direction: column;
                          align-items: center;}
              #mainn3{    flex-direction: column;}
           #mainn3 div{ width:100%;}
           .mainn4{   flex-direction: column;}
           .mainn4 div{width:100%;
                       margin-bottom:10px;
           }
           #main5{    flex-direction: column;
                      align-items: center;}
           .main6{    flex-direction: column;}
          .main6 div{ width:100%; 
  margin-bottom:10px;
          }
          #main7 {  flex-direction: column;}
          .navbar img{margin-left:20px;}
        }
       
    </style>
</asp:Content>
<asp:Content ID="BodyContent1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:470px;">
    <div class="container" style="padding-top:300px;">
        <asp:Button ID="Button2" CssClass="DONATE" runat="server" Text="Donate Now" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container" style="display:flex; flex-direction:column;" >
    <div style="text-align:center;">
        <p class="orange">What we do ?</p>
        <h1 class="text1"> We Are In A Mission To Help <br> The Helpless</h1>
    </div>
    <div class="mainn1" style="display:flex; text-align:center;">
      
        <div><img  src="images/furnuture.png"/> <br /><p>nkdfiljifjbidv fjbivcjb</p></div>
         <div><img  src="images/tools.png"/> <br /><p>bdfbddfbgtbtgfbdfbfb</p>  </div>
         <div><img src="images/money.png" /> <br /><p>bdfbddfbgtbtgfbdfbfb</p></div>
    </div>
      </div>

<div class="container-fluid" style="background-image:url('images/img2.png')" >
    <div id="mainn3" class="container" >
        <div>  <p class="orange">Who we Are ?</p> <br /> <h1 class="text-white"> We Are In A Mission To Help <br> The Helpless</h1><br />
            <p class="text-white">Lorem Ipsum is simply dummy text o<br />f the printing and typesetting industry. L
                orem Ipsum has been the industry's standard dummy text ever since the 1500s, when 
                an unknown printer took a galley of type and scrambl<br />ed it to make a type specimen book. It ha
                s survived not only five centuries, but also <br />the leap into electronic typesetting, remaining essen
                tially unchanged. It was popularised in the 
                1960s with the release of Letraset sheets containing </p>
        </div>
        <div><img src="images/img3.png" /></div>
    </div>
</div>

 <div class="container" style="display:flex; flex-direction:column;" >
    <div style="text-align:center;">
        <p class="orange">What we do ?</p>
        <h1 class="text1"> Popular Causes What you 
<br> Should Know</h1>
    </div>
    <div class="mainn4" style="display:flex; text-align:center;">
      
        <div><img  src="images/card1.png"/> <br /><p>n unknown printer took a galley of type and scrambl<br />ed it to make a type specimen book. It ha
                s survived not only five centuries, but also <br />the leap into electronic typesetting, remaining essen
                tially unchanged. It was popularised</p> <br /> <asp:Button ID="Button3" CssClass="DONATE1" runat="server" Text="Donate Now" />
 </div>
 <div><img  src="images/card1.png"/> <br /><p>n unknown printer took a galley of type and scrambl<br />ed it to make a type specimen book. It ha
                s survived not only five centuries, but also <br />the leap into electronic typesetting, remaining essen
                tially unchanged. It was popularised</p> <br /> 
    <asp:Button ID="Button1" CssClass="DONATE1" runat="server" Text="Donate Now" />
 </div>        
         <div><img  src="images/card1.png"/> <br /><p>n unknown printer took a galley of type and scrambl<br />ed it to make a type specimen book. It ha
                s survived not only five centuries, but also <br />the leap into electronic typesetting, remaining essen
                tially unchanged. It was popularised</p> <br /> <asp:Button ID="Button4" CssClass="DONATE1" runat="server" Text="Donate Now" />
 </div>
    </div>
     </div>

    <div class="container-fluid" style="background-image:url('images/bg4.png')">
        <div class="container" id="main5" style="display:flex; text-align:center;">
            <div><h1>500+</h1><br /><span>Donation</span></div>
            <div><h1>500+</h1><br /><p>Donation</p></div>
            <div><h1>500+</h1><br /><p>Donation</p></div>
            <div><h1>500+</h1><br /><p>Donation</p></div>
        </div>
    </div>

  
     <div class="container" style="display:flex; flex-direction:column;" >
    <div style="text-align:center;">
        <p class="orange">Meet Our Team ?</p>
        <h1 class="text1">Our Expert Volunteer</h1>
    </div>
    <div class="main6" style="display:flex; text-align:center;">
      
        <div><img  src="images/faten.jpg"/><br /><h1>Faten Kasasbeh</h1> </div>
 <div><img  src="images/faten.jpg"/> <br /> <h1>Faten Kasasbeh</h1> 
 </div>        
         <div><img  src="images/faten.jpg"/> <br /> <h1>Faten Kasasbeh</h1>  </div>
    </div>
     </div>
          <div id="main7" class="container">
            <div><h1 style="color:black;">Lets Change The World <br />
With Humanity </h1></div>
            <div>
                <input id="Button7" type="button" value="Be A Volunteer"  style="width:140px;"/>
            </div>
            </div>
</asp:Content>
