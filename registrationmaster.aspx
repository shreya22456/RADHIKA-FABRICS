<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="registrationmaster.aspx.cs" Inherits="Admin_registrationmaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
<br />
<br />
 <asp:HyperLink ID="HyperLink2" runat="server"  
            Font-Names="Arial" ForeColor="#990033" NavigateUrl="~/Admin/home.aspx" 
            ><img src="images/home.png" ></img></asp:HyperLink>
<center>
    <div class="col-lg-8 mx-auto col-11">
     <h1 class="hero-title text-center mb-5">Registration Master</h1>
   
   </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
             <asp:TemplateField HeaderText="ID">
            <ItemTemplate>
                <asp:Label ID="id" runat="server" Text='<%# Eval("id") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <asp:Label ID="name" runat="server" Text='<%# Eval("name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Address">
            <ItemTemplate>
                <asp:Label ID="address" runat="server" Text='<%# Eval("address") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="City">
            <ItemTemplate>
                <asp:Label ID="city" runat="server" Text='<%# Eval("city") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Pincode">
            <ItemTemplate>
                <asp:Label ID="pincode" runat="server" Text='<%# Eval("pincode") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="State">
            <ItemTemplate>
                <asp:Label ID="state" runat="server" Text='<%# Eval("state") %>'></asp:Label>
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

        <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
                <asp:Label ID="gender" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Mobile">
            <ItemTemplate>
                <asp:Label ID="mobile" runat="server" Text='<%# Eval("mobile") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:Label ID="email" runat="server" Text='<%# Eval("email") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Birth Date">
            <ItemTemplate>
                <asp:Label ID="dob" runat="server" Text='<%# Eval("dob") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="Delete">
            <ItemTemplate>
                <a href="registrationdelete.aspx?id=<%# Eval("id") %>">Delete</a>
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
        SelectCommand="SELECT * FROM [registration]"></asp:SqlDataSource>
   <br />
    </center>
    </asp:Content>

