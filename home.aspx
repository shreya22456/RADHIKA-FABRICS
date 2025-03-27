<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
<br />
<br />
<center>
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/Admin/loginmaster.aspx" Font-Bold="True" Font-Size="Large" 
        Font-Underline="True" ForeColor="#663300" >LOGIN</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" 
        NavigateUrl="~/Admin/registrationmaster.aspx" Font-Bold="True" 
        Font-Size="Large" Font-Underline="True" ForeColor="#663300">REGISTRATION</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" 
        NavigateUrl="~/Admin/feedbackmaster.aspx" Font-Bold="True" 
        Font-Size="Large" Font-Underline="True" ForeColor="#663300">FEEDBACK</asp:HyperLink>
<br />
<br />

    <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" 
        Font-Size="Large" Font-Underline="True" ForeColor="#663300" 
        NavigateUrl="~/Admin/purchasemaster.aspx">PURCHASE</asp:HyperLink>
    <br />
<br />
    <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" 
        Font-Size="Large" Font-Underline="True" ForeColor="#663300" 
        NavigateUrl="~/Admin/productmaster.aspx">PRODUCT</asp:HyperLink>

        <br />
<br />

    <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" 
        Font-Size="Large" Font-Underline="True" ForeColor="#663300" 
        NavigateUrl="~/Admin/addtocart.aspx">ADD TO CART</asp:HyperLink>
    <br />
 </center>   
</asp:Content>

