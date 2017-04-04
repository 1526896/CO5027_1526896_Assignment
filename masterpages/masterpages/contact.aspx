<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="masterpages.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article>
      
        <h4><b>Name</b></h4>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="315px"></asp:TextBox>
        <br />
        <h4><b>Phone Number</b></h4>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="315px"></asp:TextBox>
        <br />
        <h4><b>Email</b></h4>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="315px"></asp:TextBox>
        <br />
        <h4><b>Address</b></h4>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="315px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit"/>
</article>
    
</asp:Content>

