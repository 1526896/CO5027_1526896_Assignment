<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="masterpages.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article>
        <div id="map"></div>
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC_ews1--8fmR2CroH9C8cyPyGiA8GeaMM&callback=initMap">
        </script>
        <script src="map.js"></script>
        <h4><b><asp:Label ID="LblName" runat="server" Text="Name"></asp:Label></b></h4>     
&nbsp;<asp:TextBox ID="txtName" runat="server" Height="28px" Width="315px"></asp:TextBox> 
        <br />
        <h4><b> <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label></b></h4>
&nbsp;<asp:TextBox ID="txtEmail" runat="server" Height="28px" Width="315px"></asp:TextBox>
        <br />
        <h4><b><asp:Label ID="LblSubject" runat="server" Text="Subject"></asp:Label></b></h4>
&nbsp;<asp:TextBox ID="txtSubject" runat="server" Height="28px" Width="315px"></asp:TextBox>
        <br />
                <h4><b><asp:Label ID="LblMessage" runat="server" Text="Message"></asp:Label></b></h4>
&nbsp;<asp:TextBox ID="txtMessage" runat="server" Height="100px" Width="315px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Submitbtn" runat="server" Text="Submit" OnClick="Submitbtn_Click"/>
        <asp:Literal ID="LitMessage" runat="server"></asp:Literal>
        
</article>
    
</asp:Content>

