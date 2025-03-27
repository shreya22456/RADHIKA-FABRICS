<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="logininsert.aspx.cs" Inherits="Admin_logininsert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />
<center>
<div class="col-lg-8 mx-auto col-11">
     <h1 class="hero-title text-center mb-5">Login Insert</h1>
   
   <div class="col-lg-9 col-14 mx-auto">
     <div class="form-floating">
    <asp:TextBox ID="txtuname" runat="server"  class="form-control" placeholder="username" Width="100%"></asp:TextBox>
    <label for="username" class="w-40">username</label>
    <br />
     </div>
     <div class="form-floating">
    <asp:TextBox ID="txtpass" runat="server"  class="form-control" placeholder="password" Width="100%" TextMode="Password"></asp:TextBox>
    <label for="Password" class="w-40">Password</label>
    <br />
     </div>
    <asp:Button ID="btninsert" runat="server" Text="Insert" 
        onclick="btninsert_Click" BorderColor="Black" 
           class="btn custom-btn form-control mt-4 mb-3 w-40" Width="313px" />
</center>
</asp:Content>

