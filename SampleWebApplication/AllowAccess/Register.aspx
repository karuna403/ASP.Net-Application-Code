<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SampleWebApplication.Register" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>
     <style>
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
         <a class="navbar-brand abc" href="/AllowAccess/Home.aspx" style="font-size:26px; margin-left:150px; color:yellow">Home</a>
        <a class="navbar-brand abc " href="/AllowAccess/AboutUs.aspx" style="font-size:25px; margin-left:100px; color:yellow">About Us</a>
        <a class="navbar-brand abc" href="/AllowAccess/ContactUs.aspx" style="font-size:25px; margin-left:80px; color:yellow">Contact Us</a>
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
    
      <div class="card" style="border:none ; width:540px; height:600px; margin-left:560px; margin-top:35px ">
  <div class="card-header"  style="border-left: 1px solid lightgrey; border-right: 1px solid lightgrey; border-top: 1px solid lightgrey; font-size: large; border-bottom-style: none; border-bottom-color: inherit; border-bottom-width: medium;">
      <div>Register</div>
       <div style="font-size:15px; margin-left:100px;  margin-top:10px;  z-index: 1; left: 233px; top: 5px; position: absolute;">Already Registered?</div>
       <a href="/Login.aspx" style="color:red; text-decoration:none; z-index: 1; left: 475px; top: 15px; position: absolute; font-weight: 700; height: 22px; font-size:15px">Login</a>
      <asp:Button ID="btnsub" runat="server"  style="left: 37px; top: 535px; font-size: large; font-weight:700;  height: 36px; width:450px; color: white; z-index: 1; border-color:blue;  position: absolute;" Text="CONTINUE" BorderStyle="None" BackColor="#003399" BorderColor="Blue" OnClick="btnsub_Click"   />
       
  
  </div>
          <div class="card-body p-0 m-0" style="border:1px solid lightgrey">
    <div class="card-text">
        <div style="z-index: 1; left: 35px; top:66px; position: absolute; height: 30px; width: 500px; color: #000099;">FirstName</div>
        <asp:TextBox ID="txtfname" runat="server" style="height: 31px; width: 450px; top: 91px; left: 35px; z-index: 1; position: absolute;"></asp:TextBox>
        <div style="z-index: 1; left: 35px; top: 140px; position: absolute; height: 30px; width: 430px; color: #000099;">LastName</div>
        <asp:TextBox ID="txtmnumber" runat="server" style="z-index: 1; left: 35px; top: 464px; position: absolute; height: 32px; width:450px"></asp:TextBox>
        <div style="z-index: 1; left: 35px; top:212px; position: absolute; height: 30px; width: 430px; color: #000099;">Email</div>
        <asp:TextBox ID="txtpassword" runat="server" style="height: 31px; width: 450px; top: 312px; left: 35px; z-index: 1; position: absolute;" TextMode="Password"></asp:TextBox>
        <div style="z-index: 1; left: 35px; top:287px; position: absolute; height: 30px; width: 430px; color: #000099;">Password</div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email  Address" ForeColor="#CC0000" style="z-index: 1; left: 35px; top: 268px; position: absolute; font-size: small; right: 345px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:TextBox ID="txtemail" runat="server" style="height: 31px; width: 450px; top: 237px; left: 35px; z-index: 1; position: absolute;"></asp:TextBox>
        <div style="z-index: 1; left: 35px; top:363px; position: absolute; height: 30px; width: 430px; color: #000099;">ConfirmPassword</div>
        <asp:TextBox ID="txtlname" runat="server" style="height: 31px; width: 450px; top: 165px; left: 35px; z-index: 1; position: absolute;"></asp:TextBox>
        <div style="z-index: 1; left: 35px; top:441px; position: absolute; height: 30px; width: 430px; color: #000099;">MobileNumber</div>
        <asp:TextBox ID="txtconfirmpass" runat="server" style="height: 31px; width: 450px; top: 389px; left: 35px; z-index: 1; position: absolute;" TextMode="Password"></asp:TextBox>



        </div>
</div>
         </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfname" ErrorMessage="FirstName required" ForeColor="#CC0000" style="z-index: 1; left: 596px; top: 240px; position: absolute; font-size: small"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlname" Display="Dynamic" ErrorMessage="LastName required" ForeColor="#CC0000" style="z-index: 1; left: 596px; top: 313px; position: absolute; font-size: small"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpassword" ErrorMessage="Password  required" ForeColor="#CC0000" style="z-index: 1; left: 595px; top: 462px; position: absolute; font-size: small"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtconfirmpass" ErrorMessage="Confirm Password  required" ForeColor="#CC0000" style="z-index: 1; left: 596px; top: 539px; position: absolute; font-size: small"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" ErrorMessage="Email required" ForeColor="#CC0000" style="z-index: 1; left: 596px; top: 387px; position: absolute; font-size: small; right: 655px"></asp:RequiredFieldValidator>
            </div>
            </div>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmnumber" ErrorMessage="MobileNumber required" ForeColor="#CC0000" style="z-index: 1; left: 596px; top: 615px; position: absolute; font-size: small"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpass" ErrorMessage="password and confirm Password must be same" ForeColor="#CC0000" style="z-index: 1; left: 596px; top: 540px; position: absolute; font-size: small"></asp:CompareValidator>
        
        

        
        </form>
</body>
</html>