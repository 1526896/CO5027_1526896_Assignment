<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="masterpages.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article>
        <div id="map"></div>
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC_ews1--8fmR2CroH9C8cyPyGiA8GeaMM&callback=initMap">
        </script>
        <script src="map.js"></script>
        <h4><b>
            <asp:Label ID="LblName" runat="server" Text="Name"></asp:Label></b></h4>
        <asp:TextBox ID="txtName" runat="server" Height="28px" Width="315px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldName" runat="server" ErrorMessage="Please enter your name" ControlToValidate="txtName" ForeColor="Black" BackColor="#FF6666"></asp:RequiredFieldValidator>
      
        <h4><b>
            <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label></b></h4>
        <asp:TextBox ID="txtEmail" runat="server" Height="28px" Width="315px" TextMode="Email"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldEmail" runat="server" ErrorMessage="Please enter your email" ControlToValidate="txtEmail" ForeColor="Black" BackColor="#FF6666"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="espValEmail" runat="server" ErrorMessage="<br />Invalid Email Address!!" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" BackColor="#FF6666"></asp:RegularExpressionValidator>
    
        <h4><b>
            <asp:Label ID="LblSubject" runat="server" Text="Subject"></asp:Label></b></h4>
        <asp:TextBox ID="txtSubject" runat="server" Height="28px" Width="315px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldSubject" runat="server" ErrorMessage="Please enter the subject" ControlToValidate="txtSubject" ForeColor="Black" BackColor="#FF6666"></asp:RequiredFieldValidator>
        
        <h4><b>
            <asp:Label ID="LblMessage" runat="server" Text="Message"></asp:Label></b></h4>
        <asp:TextBox ID="txtMessage" runat="server" Height="100px" Width="315px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldMessage" runat="server" ErrorMessage="Please enter the message" ControlToValidate="txtMessage" ForeColor="Black" BackColor="#FF6666"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Submitbtn" runat="server" Text="Submit" OnClick="Submitbtn_Click" />
        <asp:Literal ID="LitMessage" runat="server"></asp:Literal>

    </article>

</asp:Content>

