<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="productinsert.aspx.cs" Inherits="Admin_productinsert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
<br />
<br />
<center>

     <div class="col-lg-8 mx-auto col-11">
     <h1 class="hero-title text-center mb-3">Product Insert</h1>
   
  
   
    <div class="form-floating">
    <asp:TextBox ID="txtname" runat="server"  class="form-control" placeholder="Name" Width="100%"></asp:TextBox>
    <label for="name" class="w-40">Name</label>
    <br />
   
     </div>
     <div class="form-floating">
    
    <asp:DropDownList ID="DropDownList1" runat="server"  placeholder="Category" Width="100%" >
        <asp:ListItem>Printed</asp:ListItem>
        <asp:ListItem>Plain</asp:ListItem>
        <asp:ListItem>Solid</asp:ListItem>
        <asp:ListItem>Embroidery</asp:ListItem>
        <asp:ListItem>Dyeable</asp:ListItem>
        
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
    <br />
    <br />
    </div>
    <div class="form-floating">
    <asp:TextBox ID="txtprice" runat="server"  class="form-control" placeholder="Price" Width="100%"></asp:TextBox>
    <label for="price" class="w-40">Price</label>
    <br />
   
     </div>
     <div class="form-floating">
    <asp:FileUpload ID="FileUpload1" runat="server"  placeholder="Image" Width="100%"/>
    </div>
    <br />
    <div class="form-floating">
    <asp:TextBox ID="txtdes" runat="server"  class="form-control" placeholder="Description" Width="100%"></asp:TextBox>
    <label for="Description" class="w-40">Description</label>
    <br />
   
     </div>
   
     <asp:Button ID="btninsert" runat="server" Text="Insert" 
        onclick="btninsert_Click" BorderColor="Black" 
           class="btn custom-btn form-control mt-4 mb-3 w-40" Width="313px" />
    <br />
    </div>
 
</center>
</asp:Content>

