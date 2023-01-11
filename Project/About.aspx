<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Project.About" %>




<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<style>
        body {
           /* background-image:url("/images/cover.jpg");
            background-size:cover;*/
            
/**/           margin:0px;
           padding:0px;

        }
        .seccover{
             height: 373px;
    width: 100%;
                background-size:cover;
    background-repeat: no-repeat;
    display: flex;
    align-content: center;
    justify-content: center;
    flex-wrap: wrap;
    margin-bottom: 160px;width:100%;background-image: url('images/cover.jpg');background-repeat: no-repeat;
        }
        .our-services{
    padding: 4rem 7%;
}
.service-content{
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    gap: 50px;
}
.left-service-content{
    flex: 1 1 45rem;
}
.right-service-content{
    flex: 1 1 45rem;
    display: flex;
    justify-content: flex-end;

}
.left-service-content h1{
    font-size: 40px;
    margin-bottom: 15px;
}
.left-service-content p{
    font-size: 1.5rem;
}
.right-service-content .right-btn a{
    padding: 1.5rem 3rem;
    font-size: 2rem;
    color: white;
    background: var(--secclr);
}
.right-service-content .right-btn a:hover{
    border: 1px solid var(--secclr);
    background: transparent;
    color: black;
}
.main-services{
    padding-top: 4rem;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    gap: 15px;
    align-items: flex-start;
        margin-bottom: 117px;
}
.inner-services-content{
    flex: 1 1 300px;
    padding: 1rem 3rem;
    text-align: center;
}
.inner-services-content h2{
    font-size: 25px;
    margin-bottom: 10px;
}
.inner-services-content p{
    font-size: 1.5rem;
    line-height: 2;
}
.service-icon i{
    font-size: 4rem;
    width: 8rem;
    height: 8rem;
    border-radius: 50%;
    text-align: center;
    line-height: 8rem;
    background: var(--mainafterclr);
    color: var(--mainclr);
    margin-bottom: 15px;
    cursor: pointer;
    transition: .3s;
}
.service-icon i:hover{
    color: white;
    background: var(--mainclr);
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 29%;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container0 {
  padding: 2px 16px;
}
.cardvolunteer{
    display:flex;
    gap:65px;
    margin-top:30px;
    flex-wrap:wrap;

}
.button{
    
 color: #090909;
 padding: 0.7em 1.7em;
 font-size: 18px;
 border-radius: 0.5em;
 background: #ff6a00;
 border: 1px solid #e8e8e8;
 transition: all .3s;
 box-shadow: 6px 6px 12px #c5c5c5,
             -6px -6px 12px #ffffff;
}

.button:active {
 color: #666;
 box-shadow: inset 4px 4px 12px #c5c5c5,
             inset -4px -4px 12px #ffffff;
}
  .navbar{
            background-image:url("images/nav.png");
        }
/*#MainContent_Button1.button{
    margin-top:58px;
}*/
.imagewho{
    width:400px;
}
.textwho p{
    font-size:22px;
}
.imagechoose{
        width: 407px;
    border-radius: 9%;
}
#txtchose p{
    font-size:22px;
}

 @media(max-width:481px){
        .imagechoose{
                width: 100%;

        }
        .imagewho{
                width: 100%;

        }
        .container1{
            display: flex;
    flex-direction: column;
        }
        .choose{
                display: flex;
         flex-direction: column;


        }
 }
    </style>
</asp:Content>









<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="back" runat="server" style="height:350px"></div>
    <div class="container">
    <div id="main1">
         
   
         <div class="container1" style="display:flex;" >
                <div class="textwho">
                <h1 class="h1who" style="color:orange;    font-size: 34px;">WHO  we ARE?</h1>
                <p style="font-size: 22px;" >FoodFood is one of the basics of life, 
                    so our team decided to work on it,
                     we created a platform to provide tools
                     for those in need to help them produce
                      food and to meet all their needs to provide food,
                      we sacrificed you and we will continue to provide service.
                       We are in a world that needs a lot of care and since we are part
                        of it, we must improve it and help develop it .</p>
            </div>
             <div class="PICWHO">    
                <asp:Image ID="Image1" runat="server" Class="imagewho"  ImageUrl="/images/who.jpg" />
            </div>
      </div>


       <div class="our-services">
        <div class="service-content">
            <div class="left-service-content">
                <h1 style="color:orange;">How can we help?</h1>
            </div>
</div>

        <div class="main-services">
            <div class="inner-services-content">
                <div class="service-icon">
                    <img src="images/donate.png" />
                </div>
                <h2>How can I donate?</h2>
                <p>You will make many people happy with the little you give</p>
                <asp:Button ID="Button1" CssClass="button" runat="server" Text="Click Here" OnClick="Button1_Click"  />
            </div>

            <div class="inner-services-content">
                <div class="service-icon">
                    <img src="images/volunteer.png" width="200px" />
                </div>
                <h2>How can I become your volunteer?>
                <p>By following a few steps, you will become a member of our volunteering family</p>
                <asp:Button ID="Button2" CssClass="button" class="button_1" runat="server" Text="Click Here"/>
            </div>

          <%--  <div class="inner-services-content">
                <div class="service-icon">
                    <img src="images/donate.png" />
                </div>
               <h2>How can I become your volunteer?</h2>
                <p>By following a few steps, you will become a member of our volunteering family</p>
            </div>
        </div>--%>
    </div>
  <div id="choose" class="choose" style="display:flex;    margin-bottom: 100px;">
      <div id="txtchose">
          <h1 style="  color:orange;  font-size: 34px;">Why Choose Us?</h1>
          <p>Worldwide charity programs
            Sed tempus ipsum lectus, eget pellentesque mauris egestas vulputate. 
              Nulla fermentum aliquam pellentesque. Phasellus dapibus
              sem ac nibh feugiat, at pulvinar tellus porta. Nunc a
              tempus ipsum. Sed nec ante sodales, sagittis velit consectetur, mattis tortor.
              Morbi pharetra sapien non commodo varius. Nam porta magna diam, vitae 
              finibus magna rhoncus ut. Duis dui orci, vulputate sed
              lacinia ac, luctus eu lectus. Nunc semper enim ut rutrum dignissim.</p>
      </div>
      <div id="imgchoose">
          <asp:Image ID="Image2" CssClass="imagechoose" runat="server" ImageUrl="\images\medium-shot-boys-hugging.jpg" />
      </div>
  </div>
  <%--         <div id="ourvolunteer">

               <h1 style="color: orange;">Meet Our Volunteers</h1>
               <div id="cardvolunteer" calss="cardvolunteer" style="display: flex; gap: 65px; margin-top: 30px; flex-wrap: wrap;">
                   <div class="card">
                       <img src="images/avatar.png" alt="Avatar" style="width: 100%">
                       <div class="container0">
                           <h4><b>Ahmad Odat</b></h4>
                           <p>Leader</p>
                       </div>
                   </div>

                   <div class="card">
                       <img src="images/avatar.png" alt="Avatar" style="width: 100%">
                       <div class="container0">
                           <h4><b>Roa'a Omer</b></h4>
                           <p>Volunteer</p>
                       </div>
                   </div>
                   <div class="card">
                       <img src="images/avatar.png" alt="Avatar" style="width: 100%">
                       <div class="container0">
                           <h4><b>Yazeed aldamen</b></h4>
                           <p>Volunteer</p>
                       </div>
                   </div>
                   <div class="card">
                       <img src="images/avatar.png" alt="Avatar" style="width: 100%">
                       <div class="container0">
                           <h4><b>Faten kasasbeh</b></h4>
                           <p>Volunteer</p>
                       </div>
                   </div>
                   <div class="card">
                       <img src="images/avatar.png" alt="Avatar" style="width: 100%">
                       <div class="container0">
                           <h4><b>Rogina Irshaidat</b></h4>
                           <p>Volunteer</p>
                       </div>
                   </div>
                   <div class="card">
                       <img src="images/avatar.png" alt="Avatar" style="width: 100%">
                       <div class="container0">
                           <h4><b>Sohaib AL-Rousan</b></h4>
                           <p>Volunteer</p>
                       </div>
                   </div>
               </div>
           </div>--%>
    </div>
      </div>
      </div>
</asp:Content>
