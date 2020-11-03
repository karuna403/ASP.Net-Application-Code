<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SampleWebApplication.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>
     
    <style>
    
*{
    margin: 0px;
    padding: 0px;
}
    @keyframes slide{
        0%{
            left: 0;
        }
        10%{
            left: 0;
        }
        20%{
            left: -100%;
        }
        30%{
            left: -100%;
        }
        40%{
            left: -200%;
        }
        50%{
            left: -200%;
        }
        60%{
            left: -300%;
        }
        70%{
            left: -300%;
        }
        80%{
            left: -400%;
        }
        90%{
            left: -400%;
        }
        100%{
            left:0%;
        }
    }
    #slider{
        overflow:hidden;
    }
    #slider figure img{
        float: left;
        width:20%;
    }
    #slider figure{
        position: relative;
        width: 500%;
        animation: slide 10s infinite;
        }
    a:hover {
  color:red !important;
  
}

    
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <nav class="navbar navbar-info sticky-top text-black bg-dark " style="display:flexbox; justify-content:space-between">
    <div>
    <a class="navbar-brand " href="#"><h1 class=" text-blue">RG</h1></a>
     

    </div>
         <div>
         <a class="navbar-brand abc" href="/AllowAccess/Home.aspx" style="font-size:26px; margin-left:100px; color:yellow">Home</a>
        <a class="navbar-brand abc " href="/AllowAccess/AboutUs.aspx" style="font-size:25px; margin-left:30px; color:yellow">About Us</a>
        <a class="navbar-brand abc" href="/AllowAccess/ContactUs.aspx" style="font-size:25px; margin-left:20px; color:yellow">Contact Us</a>
             </div>

    <div>
        
        
        <label class="navbar-brand "><label class="dropdown">
  <a  style="text-decoration:none; border:none;" class=" dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQAeDOlF9pXK9bOW7Zn1MgDO9UpPRuESMVnrw&usqp=CAU" style="height:45px !important; width:45px" />
                    
  </a>

  <label class="dropdown-menu ml-0 pl-0"  style="text-decoration:none; border:none; color:white" aria-labelledby="dropdownMenuLink">
    <a class="dropdown-item"  style="text-decoration:none; border:none ; font-size:14px" href="/Login.aspx">Login</a>
    <a class="dropdown-item" style="text-decoration:none; border:none; font-size:14px" href="/AllowAccess/Register.aspx">Register</a>
    <a class="dropdown-item" style="text-decoration:none; border:none; font-size:14px" href="/AdminLogin.aspx">AdminLogin</a>
  </label>
</label>
       
    </label>
    
</div>
       
         
    
  </nav>


        <div class=" text-center">
             
            <h2 class="pt-3 pb-2 ml-5" style="font-size:25px;">Refrigerators</h2>
            <div class="ml-5">The new range of RG refrigerators Come with ConvertablePLUS Linear Compressor & Door Cooling+TM</div>
                <div class="ml-5">features. Explore the unique patterns with RG refrigerators 
                that are best in class. Check RG refrigerators</div><div class="mb-3 ml-5"> prices online.</div>
           
            </div>
        


<div id="slider" >
    <figure>
        
        <img src="https://www.lg.com/in/images/plp-b2c/in-refrigerators-hero-7-d.jpg" style="height:450px !important"/> 
      
      <img src="https://www.lg.com/in/images/plp-b2c/in-refrigerators-hero-6-d.jpg" style="height:450px !important"/>
      <img src="https://media3.bosch-home.com/Images/600x/MCIM03209246_Angled__Closed_Fridge_B36CT80SNS_3200x1240.jpg" style="height:450px !important" />
      <img src="https://www.lg.com/in/images/plp-b2c/b2c-2/Home-Page/LG-Farm-Fresh-Category-Banner-D-v1.jpg" style="height:450px !important"/>
   
  
</figure>
</div>
        </div>
        
        </form>
</body>
</html>