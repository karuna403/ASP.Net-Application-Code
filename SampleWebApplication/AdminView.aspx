<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminView.aspx.cs" Inherits="SampleWebApplication.AdminView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" ShowFooter="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" style="margin-top:140px; margin-left:500px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                    <EditItemTemplate>
                        <asp:Label ID="Label" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="lbinsert" OnClick="lbinsert" ValidationGroup="Insert" runat="server">Insert</asp:LinkButton>
                        
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product_Type" SortExpression="Product_Type">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtproducttype1" runat="server" Text='<%# Bind("Product_Type") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rgfproducttype1" runat="server" ControlToValidate="txtproducttype1"   ErrorMessage="name required" ForeColor="red" Text="*"></asp:RequiredFieldValidator>
                       
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Product_Type") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtproducttype" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rgfproducttype" runat="server" ControlToValidate="txtproducttype"  ValidationGroup="Insert" ErrorMessage="producttype required" ForeColor="red" Text="*"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price" SortExpression="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcost1" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rgfcost1" runat="server" ControlToValidate="txtcost1"  ErrorMessage="product cost required" ForeColor="red" Text="*"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtcost" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rgfcost" runat="server" ControlToValidate="txtcost"  ValidationGroup="Insert" ErrorMessage="product cost required" ForeColor="red" Text="*"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No_Of_Products_Available" SortExpression="No_Of_Products_Available">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnumberofpdt1" runat="server" Text='<%# Bind("No_Of_Products_Available") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rgfnumberofpdt1" runat="server" ControlToValidate="txtnumberofpdt1"   ErrorMessage="No_Of_Products_Available required" ForeColor="red" Text="*"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("No_Of_Products_Available") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtnumberofpdt" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rgfnumberofpdt" runat="server" ControlToValidate="txtnumberofpdt"  ValidationGroup="Insert" ErrorMessage="No_Of_Products_Available required" ForeColor="red" Text="*"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:ValidationSummary ID="ValidationSummary1"  ValidationGroup="Insert" ForeColor="red" runat="server" style="margin-left:474px;"/>
        <asp:ValidationSummary ID="ValidationSummary2"   ForeColor="red" runat="server" style="margin-left:474px;"/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RG_ProjectConnectionString4 %>" DeleteCommand="DELETE FROM [Product] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Product] ([Product_Type], [Price], [No_Of_Products_Available]) VALUES (@Product_Type, @Price, @No_Of_Products_Available)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Product_Type] = @Product_Type, [Price] = @Price, [No_Of_Products_Available] = @No_Of_Products_Available WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Product_Type" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="No_Of_Products_Available" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_Type" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" DefaultValue="0" />
                <asp:Parameter Name="No_Of_Products_Available" Type="Int32"  DefaultValue="0"/>
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form> 
</body>
</html>
