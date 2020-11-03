<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SampleWebApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" "></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>


    <style type="text/css">
        a:hover {
  color:blue !important;
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
         <a class="navbar-brand abc" href="/AllowAccess/Home.aspx" style="font-size:26px; margin-left:70px; color:yellow">Home</a>
        <a class="navbar-brand abc " href="/AllowAccess/AboutUs.aspx" style="font-size:25px; margin-left:30px; color:yellow">About Us</a>
        <a class="navbar-brand abc" href="/AllowAccess/ContactUs.aspx" style="font-size:25px; margin-left:20px; color:yellow">Contact Us</a>
             </div>

    <div>
        
        
        <label class="navbar-brand "><label class="dropdown">
  <a  style="text-decoration:none; border:none;" class=" dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQAeDOlF9pXK9bOW7Zn1MgDO9UpPRuESMVnrw&usqp=CAU" style="height:45px !important; width:45px" />
                    
  </a>

  <label class="dropdown-menu"  style="text-decoration:none; border:none; color:white" aria-labelledby="dropdownMenuLink">
    <a class="dropdown-item"  style="text-decoration:none; border:none;" href="/Login.aspx">login</a>
    <a class="dropdown-item" style="text-decoration:none; border:none;" href="/AllowAccess/Register.aspx">Register</a>
    
  </label>
</label>
       
    </label>
    
</div>
       
         
    
  </nav>


        
        
        <div class="main">
    
      <div class="card" style="border:none ; width:500px; height:450px; margin-left:560px; margin-top:130px!important ">
  <div class="card-header"  style="border-left: 1px solid lightgrey; border-right: 1px solid lightgrey;  border-top: 1px solid lightgrey; font-size: large; border-bottom-style: none; border-bottom-color: inherit; border-bottom-width: medium; ">
   Login
  </div>
          <div class="card-body p-0 m-0" style="border:1px solid lightgrey">
    <div class="card-text">
        <div style="z-index: 1; left: 25px; top:121px; position: absolute; height: 30px; width: 500px; color: #000099; ">Email</div>
        <asp:TextBox ID="txtemail" runat="server" style="height: 31px; width: 430px; top: 149px; left: 24px; z-index: 1; position: absolute;"></asp:TextBox>
        <div style="z-index: 1; left: 25px; top: 190px; position: absolute; height: 30px; width: 500px; color: #000099; ">Password</div>
        <asp:TextBox ID="txtpassword" runat="server" style="z-index: 1; left: 25px; top: 215px; position: absolute; height: 32px; width: 430px" TextMode="Password" EnableViewState="False"></asp:TextBox>
        <a href="/AllowAccess/Register.aspx" style="color:red; z-index: 1; text-decoration:none; left: 304px; top: 360px; position: absolute; font-weight: 700; height: 22px; font-size:15px">Register</a><asp:Button ID="subbtn" runat="server" style="left: 25px; top: 308px; font-size: large; font-weight:700; height: 36px; width:430px; color: white; z-index: 1; position: absolute;" Text="CONTINUE" BorderStyle="None" BackColor="#003399" OnClick="subbtn_Click" />
        <div style=" margin-left:100px; margin-top:10px; z-index: 1; left: 3px; top: 348px; position: absolute; ">Don't have an account yet?</div>
      <a href="/AllowAccess/Change Password.aspx">  <asp:Label ID="Label1" runat="server" style="z-index: 1; font-size:14px; left: 339px; top: 255px; position: absolute; font-weight: 700;" Text="Forgot Password?"></asp:Label></a>
        </div>
        </div>
</div>
            <asp:Label ID="lberror" runat="server" style="z-index: 1; left: 584px; font-size:13px; top: 469px; position: absolute"></asp:Label>
         </div>
       

            </div>
            
        
        
        
    </form>
</body>
</html>
