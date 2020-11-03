<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change Password.aspx.cs" Inherits="SampleWebApplication.Change_Password" %>

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

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtchangepassword" ErrorMessage="Enter Password" style="z-index: 1; left: 588px; top: 399px; position: absolute; font-size: x-small; bottom: 270px" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtchangepassword" ControlToValidate="txtretypepassword" ErrorMessage="change Password and Retype Password should be same" style="z-index: 1; left: 591px; top: 487px; position: absolute; font-size: x-small" ForeColor="#CC0000"></asp:CompareValidator>
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
   Change Password
  </div>
          <div class="card-body p-0 m-0" style="border:1px solid lightgrey">
    <div class="card-text">
        <div style="z-index: 1; left: 25px; top:121px; position: absolute; height: 30px; width: 500px; color: #000099; ">Password</div>
        <asp:TextBox ID="txtchangepassword" runat="server" style="height: 31px; width: 430px; top: 148px; left: 26px; z-index: 1; position: absolute;" TextMode="Password"></asp:TextBox>
        <div style="z-index: 1; left: 28px; top: 204px; position: absolute; height: 30px; width: 500px; color: #000099; ">Retype Password</div>
        <asp:TextBox ID="txtretypepassword" runat="server" style="z-index: 1; left: 27px; top: 231px; position: absolute; height: 32px; width: 430px" TextMode="Password" EnableViewState="False"></asp:TextBox>
        
        <asp:Button ID="subbtn" runat="server" style="left: 25px; top: 308px; font-size: large; font-weight:700; height: 36px; width:430px; color: white; z-index: 1; position: absolute;" Text="CONTINUE" BorderStyle="None" BackColor="#003399" OnClick="subbtn_Click"     />
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtretypepassword" ErrorMessage="Enter Retype Password" style="z-index: 1; left: 29px; top: 264px; position: absolute; font-size: x-small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        
        </div>
        </div>
</div>
         </div>
       
    
    </div>
    </form>
</body>
</html>
