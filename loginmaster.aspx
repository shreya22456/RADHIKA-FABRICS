<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="loginmaster.aspx.cs" Inherits="Admin_loginmaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
<br /><br />
        <asp:HyperLink ID="HyperLink1" runat="server"  
            Font-Names="Arial" ForeColor="#990033" NavigateUrl="~/Admin/home.aspx" 
            ><img src="images/home.png" ></img></asp:HyperLink>
    
    <center>
    <div class="col-lg-6 mx-auto col-6">
     <h1 class="hero-title text-center mb-3">Login Master</h1>
   
   </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
            Font-Size="Larger" Height="100px" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:TemplateField HeaderText="Id" >
            <ItemTemplate>
                <asp:Label ID="id" runat="server" Text='<%# Eval("id") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Username">
            <ItemTemplate>
                <asp:Label ID="username" runat="server" Text='<%# Eval("username") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Password">
            <ItemTemplate>
                <asp:Label ID="password" runat="server" Text='<%# Eval("password") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Edit">
            <ItemTemplate>
                <a href="loginedit.aspx?id=<%# Eval("id") %>">Edit</a>
            </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="Delete">
            <ItemTemplate>
                <a href="logindelete.aspx?id=<%# Eval("id") %>">Delete</a>
            </ItemTemplate>
        </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>
       
        <asp:Button ID="btninsert" runat="server" Text="Insert" 
        onclick="btninsert_Click" BorderColor="Black" 
           class="btn custom-btn form-control mt-3 mb-3 w-40" Width="313px" />
    
        </center>
</asp:Content>

