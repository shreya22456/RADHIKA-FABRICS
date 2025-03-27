<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="purchasemaster.aspx.cs" Inherits="Admin_purchasemaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br /><br />
<br />
<asp:HyperLink ID="HyperLink2" runat="server"  
            Font-Names="Arial" ForeColor="#990033" NavigateUrl="~/Admin/home.aspx" 
            ><img src="images/home.png" ></img></asp:HyperLink>
<center>
   <div class="col-lg-8 mx-auto col-11">
     <h1 class="hero-title text-center mb-3">Purchase Master</h1>
   
   </div>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px"  Height="100px" Width="471px"
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

        <asp:TemplateField HeaderText="Price">
            <ItemTemplate>
                <asp:Label ID="price" runat="server" Text='<%# Eval("price") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:Label ID="quantity" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Username">
            <ItemTemplate>
                <asp:Label ID="username" runat="server" Text='<%# Eval("username") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Total">
            <ItemTemplate>
                <asp:Label ID="total" runat="server" Text='<%# Eval("total") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="Delete">
            <ItemTemplate>
                <a href="purchasedelete.aspx?id=<%# Eval("id") %>">Delete</a>
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
        SelectCommand="SELECT * FROM [purchase]"></asp:SqlDataSource>
        <br />
    <br />
    <br />
    <br />
</center>
</asp:Content>

