<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="masterpages.admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article>
    <h4><b><asp:Label ID="LblUsername" runat="server" Text="Username" AssociatedControlID="txtUsername"></asp:Label></b></h4>     
<asp:TextBox ID="txtUsername" runat="server" Height="28px" Width="315px"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldUsername" runat="server" ErrorMessage="Please enter your username" ControlToValidate="txtUsername" ForeColor="Black" BackColor="#FF6666"></asp:RequiredFieldValidator>
   
    <h4><b><asp:Label ID="LblPassword" runat="server" Text="Password" AssociatedControlID="txtPassword"></asp:Label></b></h4>       
<asp:TextBox ID="txtPassword" runat="server" Height="28px" Width="315px" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldPassword" runat="server" ErrorMessage="Please enter your password" ControlToValidate="txtPassword" ForeColor="Black" BackColor="#FF6666"></asp:RequiredFieldValidator>
        
       <br/>
    <asp:Button ID="LgnBtn" runat="server" Text="Login" OnClick="LgnBtn_Click" />
    <asp:Literal ID="LitLogin" runat="server"></asp:Literal>
</article>
</asp:Content>
