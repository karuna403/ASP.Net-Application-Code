<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Startpage.aspx.cs" Inherits="SampleWebApplication.Startpage" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" "></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>


    <style>
    

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
         <a class="navbar-brand abc" href="Mainpage.aspx" style="font-size:26px; margin-left:-40px; color:yellow">Home</a>
        <a class="navbar-brand abc " href="AboutUs.aspx" style="font-size:25px; margin-left:30px; color:yellow">About Us</a>
        <a class="navbar-brand abc" href="ContactUs.aspx" style="font-size:25px; margin-left:20px; color:yellow">Contact Us</a>
             </div>

    <div>
        
        
        <label class="navbar-brand "><label class="dropdown">
  <a  style="text-decoration:none; border:none;" class=" dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQAeDOlF9pXK9bOW7Zn1MgDO9UpPRuESMVnrw&usqp=CAU" style="height:45px !important; width:45px" />
                    
  </a>

  <label class="dropdown-menu"  style="text-decoration:none; border:none; color:white" aria-labelledby="dropdownMenuLink">
    <a class="dropdown-item"  style="text-decoration:none; border:none;" href="Mainpage.aspx">Logout</a>
    
  </label>
</label>
       
    </label>
    
</div>
       
         
    
  </nav>






        

        
<div class="container-fluid p-0 m-0">
    <div class="col-md-12 p-0 m-0">
   <div  style="background-image:url('https://www.lg.com/in/images/plp-b2c/in-refrigerators-hero-3-d.jpg'); height:380px;   width:1534px; z-index: 1;  top: 0px;  left:-16px;">
       <label style="color:blue; font-size:18px; margin-left:20px; margin-top:-50px !important; z-index: 1; left: 16px; top: 78px; position: absolute; height: 27px;">Welcome</label>

        <asp:Label  runat="server" ID="lbusername"   style="color:blue; margin-top:20px; font-size:18px;margin-left:2px; z-index: 1; left: 119px; top: 9px; position: absolute;"></asp:Label>
        <label style="font-size:55px; color:yellow; font-weight:700; margin-left:180px; font-style:oblique; z-index: 1; left: 270px; top: 0px; position: absolute;">SELECT YOUR CHOICE</label>&nbsp;
            <img style="  height:296px; width:374px; z-index: 1;  top: 72px; position: absolute; left: -25px; padding:0px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSsWthy_84GoO9ZiNFcEaD9QAAX4gzhFLS5xg&usqp=CAU" /></div>
            <img style="margin-left:450px; margin-top:17px; height:235px; width:450px; z-index: 1; left: 34px; top: 85px; position: absolute;" src="https://www.reliancedigital.in/wp-content/uploads/2019/02/FeaTure.jpg" />
            </div>
       
    <div class="row">
        
                      
       <div class="col-md-9 bg-light pb-3">
          <div class="col-md-12 pt-4 pl-0 ml-0">
            
            <div  style="font-size:20px; margin-left:20px !important">SHOP BY TYPE<label style="margin-left:10px">|</label><label style="margin-left:7px; font-size:14px; color:blue">VIEW ALL</label></div>
              
            
               </div>
          
            
          <div class="col-md-12">
            <div class="row mt-4 text-white">
               
                  <div class="col-md-4">
                      <a href="Singledoor.aspx" class="col-md-12 pt-2 ">
                          <img class="pb-4" src="https://www.reliancedigital.in/medias/Single-Door.jpg?context=bWFzdGVyfGltYWdlc3wyMzMwMHxpbWFnZS9qcGVnfGltYWdlcy9oMTEvaGQzLzkzMjI1NDc4NzE3NzQuanBnfGEzMTk2ZTk1NzE4OWM2NmI4ZGEwNzM0Zjc3OWY0MjU4ZjE2N2Q4YTg1ZmJjMWY2OTc0OWNhNDE2ZmIyYjljZDY"/>
                          
                      </a>
                  </div> 
                <div class="col-md-4">
                      <a class="col-md-12 pt-2 pb-4">
                          <img  class="pb-4" src="https://www.reliancedigital.in/medias/Double-Door.jpg?context=bWFzdGVyfGltYWdlc3wyNjQwMXxpbWFnZS9qcGVnfGltYWdlcy9oMGQvaGM0LzkzMjI1NDc5MzczMTAuanBnfDdlNzY5YzczMTFkMzNmZjQ2ZTRiMzUyZTljYjMwMzA0ZGVkYmI0ZGU3Y2U3YzU3NjBkMjE1OTUxMmNlNGE2NzM"/>
                          
                      </a>
                  </div> 
                      <div class="col-md-4">
                      <a class="col-md-12 pt-2 pb-4">
                          <img  class="pb-4" src="https://www.reliancedigital.in/medias/Side-by-Side.jpg?context=bWFzdGVyfGltYWdlc3wyNzExMXxpbWFnZS9qcGVnfGltYWdlcy9oZWYvaDMzLzkzMjI1NDgwMDI4NDYuanBnfDlmM2NiYWI4MWI1YzBmNjg2NGIzYmY4ODNlYWMwMDU1MjYwMGUzNmVkNTllOTEwY2Q0MTg0Y2U5YzYxZDkzZDc"/>
                          
                      </a>
                  </div> 
                          
              </div>
              </div>
              <div class="col-md-12 pt-4 ml-0 pl-0 ">
            
            <div class="ml-0 pl-0"  style="font-size:20px; margin-left:20px !important">SHOP BY PRICE<label style="margin-left:10px">|</label ><label style="margin-left:7px; font-size:14px; color:blue">VIEW ALL</label></div>
            
               </div>
          
             <div class="col-md-12">
            <div class="row mt-4 text-white ">
               
                  <div class="col-md-3 ">
                      <a class="col-md-12 pt-2 pb-4">
                          <img  class="pb-4" src="https://www.reliancedigital.in/medias/Under-15000.jpg?context=bWFzdGVyfGltYWdlc3wyMDgzMXxpbWFnZS9qcGVnfGltYWdlcy9oZmIvaGQ4LzkzMjI1NDYwNjk1MzQuanBnfGI1NDZhMmZiNGFiYWM1N2I5MThhNDRmYmRjMzdhZjllZmE4NjA5MGE3NTYxZTM0NTc5NGU2ODkxYmMzOWI2YzE"/>
                          
                      </a>
                  </div> 
                <div class="col-md-3">
                      <a class="col-md-12 pt-2 pb-4">
                          <img  class="pb-4" src="https://www.reliancedigital.in/medias/15k-to-20k.jpg?context=bWFzdGVyfGltYWdlc3wyNDIyMHxpbWFnZS9qcGVnfGltYWdlcy9oMjIvaDA1LzkzMjI1NDYxMzUwNzAuanBnfDRlYmE5YTVkOTM2MDgzZGMxMWZiNWZhZTM3YjY0ZDMyOTZjNmYwMGRiZTUyZGY3M2ZkNjJjMGY3NjMxNTJmYWY"/>
                          
                      </a>
                  </div> 
                      <div class="col-md-3">
                      <a class="col-md-12 pt-2 pb-4">
                           <img class="pb-4" src="https://www.reliancedigital.in/medias/20-k-to-30K.jpg?context=bWFzdGVyfGltYWdlc3wyMDcyOHxpbWFnZS9qcGVnfGltYWdlcy9oZGUvaGM4LzkzMjI1NDYyMDA2MDYuanBnfGFmNDdjYmM2NDkzMWRiYWNhNDAwYmYwM2UzYjkyYzZjMmI0ZWFlNDA1MzNiNzM2MmI2NWFjNGY1NWZiOWI2MmM"/>
                          
                       
                      </a>
                  </div> 
                 <div class="col-md-3">
                      <a class="col-md-12 pt-2 pb-4">
                          <img src="https://www.reliancedigital.in/medias/Above-30K.jpg?context=bWFzdGVyfGltYWdlc3wyMDc3M3xpbWFnZS9qcGVnfGltYWdlcy9oZDkvaDk2LzkzMjI1NDYyNjYxNDIuanBnfDcyMmJlYWU0NTk5MmNlNzc0ZGQ1NmZmYjI4ZWY3NTVhNmZlNzhhYWJlMDFhYWM0ZGRmNTE5Y2M5MDczZDExMjM"/>
                          
                      </a>
                  </div> 
                          
             </div>
                 </div>

           <div class="col-md-12 pt-4 pl-0 ml-0">
            
            <div class="ml-0 pl-0" style="font-size:20px; margin-left:20px !important">SHOP BY FAMILY<label style="margin-left:10px">|</label ><label style="margin-left:7px; font-size:14px; color:blue">VIEW ALL</label></div>
            
               </div>
          
            
          <div class="col-md-12">
            <div class="row mt-4 text-white">
               
                  <div class="col-md-4">
                      <a class="col-md-12 pt-2 pb-3 ml-1">
                          <img src="https://www.reliancedigital.in/medias/Single-couple.jpg?context=bWFzdGVyfGltYWdlc3wyMzQxMnxpbWFnZS9qcGVnfGltYWdlcy9oMTUvaGVkLzkzMjI1NDYzMzE2NzguanBnfGRmYmJmYWQxYjcyOTc3OTA1ODM0Y2QwNTA2NWMwMTkzNzMwNTI3YWZiNGFhZDI5NmU5ZTgyZGMyNDEzM2NjNGY"/>
                          
                      </a>
                  </div> 
                <div class="col-md-4">
                      <a class="col-md-12 pt-2 pb-3 " style="margin-left:10px !important">
                          <img src="https://www.reliancedigital.in/medias/Small-family.jpg?context=bWFzdGVyfGltYWdlc3wxOTUzMXxpbWFnZS9qcGVnfGltYWdlcy9oNmUvaGQ3LzkzMjI1NDYzOTcyMTQuanBnfGZhODFjNWNhZDIxMTFmZDM4MDUyMTViOGIwMDMwOGQyZWFkNzkzNDZjNDQyNWFiZGU5Zjc3ZjQxODE0Y2E2MmM"/>
                          
                      </a>
                  </div> 
                      <div class="col-md-4">
                      <a class="col-md-12 pt-2 pb-3 " style="margin-left:20px !important">
                          <img src="https://www.reliancedigital.in/medias/Large-family.jpg?context=bWFzdGVyfGltYWdlc3wyMDUwOHxpbWFnZS9qcGVnfGltYWdlcy9oMGQvaDU5LzkzMjI1NDY0NjI3NTAuanBnfDAxMjFmMmY2Yzk5NDA0Mzk5ODRmYjgyYjQyMTBkNzU3MjQxOGM0ZjQzM2M2ZTgwNTE4YjZlMjI2M2Y5MWE1YzY"/>
                          
                      </a>
                  </div> 
                          
              </div>
              </div>
               
                </div> 
           
<div class="'col-md-3 pb-3">
    <div class="col-md-12 pt-4">
            
            <div style="color:black; font-size:20px">FROM OUR RESOURCE CENTRE</div>
            
              </div>
    <div class="col-md-12 mt-3">
                 <b style="font-size:13px">Buying an inverter fridge might be a smart decision</b>
        
         </div>
            

   
                      <div class="col-md-12 pt-2 pb-3 ">
                          <img  class="mt-3" src="https://www.reliancedigital.in/wp-content/uploads/2019/02/ref_inverter_technology_cover.jpg" style="height:110px !important; width:320px !important"/>
                          
                      
                  </div> 
        <div class="col-md-12 mt-2 ">
                 <b style="font-size:13px">Keep your refrigirators running through power cuts</b>
       
         </div>
   
                      <div class="col-md-12 pt-2 pb-3 ">
                          <img  class="mt-3 m-0 p-0" src="https://www.reliancedigital.in/wp-content/uploads/2019/03/main_banner.png" style="height:110px !important; width:320px !important"/>
                          
                      
                  </div> 
            <div class="col-md-12 mt-2 ">
                 <b style="font-size:13px">Smart cleaning and maintaining your fridge</b>
        
         </div>
    
                      <div class="col-md-12 pt-2 pb-3 ">
                          <img class="mt-3 m-0 p-0" src="https://www.reliancedigital.in/wp-content/uploads/2019/02/Cover_clean_fridge.jpg" style="height:110px !important; width:320px !important"/>
                          
                      </div>
                  

            
</div>

</div></div>
        </div>
     </form>
</body>
</html>


