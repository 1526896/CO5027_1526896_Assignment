<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="masterpages.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article>
    <h4><b><asp:Label ID="LblUsername" runat="server" Text="Username"></asp:Label></b></h4>
    <asp:TextBox ID="txtUsername" runat="server" Height="28px" Width="315px"></asp:TextBox>
        <br/>
    <h4><b><asp:Label ID="LblEmailReg" runat="server" Text="Registration Email"></asp:Label></b></h4>
    <asp:TextBox ID="TextEmailReg" runat="server" Height="28px" Width="315px"></asp:TextBox>
        <br/>
    <h4><b><asp:Label ID="LblPasswordReg" runat="server" Text="Registration Password"></asp:Label></b></h4>
    <asp:TextBox ID="txtPassword" runat="server" Height="28px" Width="315px" TextMode="Password"></asp:TextBox>
        <br/>
        <br/>
    <asp:Button ID="BtnReg" runat="server" Text="Register" OnClick="BtnReg_Click" />
    <asp:Literal ID="LtrlError" runat="server"></asp:Literal>
    </article>
</asp:Content>
