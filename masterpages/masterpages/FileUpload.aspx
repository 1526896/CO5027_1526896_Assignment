<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="masterpages.FileUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Uploadbtn" runat="server" Text="Upload" OnClick="Uploadbtn_Click" />
    <asp:Image ID="CurrentImage" runat="server" />
</asp:Content>
