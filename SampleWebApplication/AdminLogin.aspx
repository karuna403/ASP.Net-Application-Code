<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="SampleWebApplication.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="main">
    
      <div class="card" style="border:none ; width:500px; height:450px; margin-left:560px; margin-top:100px; ">
  <div class="card-header"  style="border-left: 1px solid lightgrey; border-right: 1px solid lightgrey;  border-top: 1px solid lightgrey; font-size: large; border-bottom-style: none; border-bottom-color: inherit; border-bottom-width: medium; ">
   Login
  </div>
          <div class="card-body p-0 m-0" style="border:1px solid lightgrey">
    <div class="card-text">
        <div style="z-index: 1; left: 25px; top:121px; position: absolute; height: 30px; width: 500px; color: #000099; ">UserName</div>
        <asp:TextBox ID="txtname" runat="server" style="height: 31px; width: 430px; top: 149px; left: 24px; z-index: 1; position: absolute;"></asp:TextBox>
        <div style="z-index: 1; left: 25px; top: 190px; position: absolute; height: 30px; width: 500px; color: #000099; ">Password</div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 48px; top: 254px; position: absolute" Text="Remenber me"></asp:Label>
        <asp:TextBox ID="txtpassword" runat="server" style="z-index: 1; left: 25px; top: 215px; position: absolute; height: 32px; width: 430px" TextMode="Password"></asp:TextBox>
        <asp:CheckBox ID="checkbox" runat="server" style="z-index: 1; left: -1px; top: 162px; position: absolute"/>
        <asp:Button ID="subbtn" runat="server" style="left: 28px; top: 334px; font-size:20px; font-weight:600; height: 36px; width:430px; color: white; z-index: 1; position: absolute;" Text="Submit" BorderStyle="None" BackColor="#003399" OnClick="subbtn_Click"      />
      
        </div>
        </div>
</div>
            <asp:Label ID="lberror" runat="server" style="z-index: 1; left: 591px; font-size:13px; top: 405px; position: absolute"></asp:Label>
         </div>
       

    </div>
    </form>
</body>
</html>
