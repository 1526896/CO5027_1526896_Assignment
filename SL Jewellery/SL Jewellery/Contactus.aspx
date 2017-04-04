<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="SL_Jewellery.Contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <article>
	 
		<div id="wrap">
	
        <div class="container1">

            <div id="content1">
			    
			  <h3>CONTACT THE SL JEWELLERY ONLINE TEAM</h3>
			
	     </div>	  
            
         </div>

         </div>

        <br />

    First Name&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="17px" Width="219px"></asp:TextBox>

    <br />

    <br />
     
         Family Name    
    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 1px" Width="234px"></asp:TextBox>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <br />

     <br />

         Address&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Height="72px" Width="243px"></asp:TextBox>

         <br />
         <br />


         Postal Code&nbsp;
    <asp:TextBox ID="TextBox4" runat="server" Width="170px"></asp:TextBox>

    <br />

     <br />

    Town/City&nbsp; <asp:TextBox ID="TextBox5" runat="server" Width="181px"></asp:TextBox>

    <br />

     <br />

    Email&nbsp;
    <asp:TextBox ID="TextBox6" runat="server" Width="217px"></asp:TextBox>

    <br />

     <br />

         Telephone&nbsp;&nbsp; 
    <asp:TextBox ID="TextBox7" runat="server" Width="183px"></asp:TextBox>

    <br />

     <br />

    Your Message&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" runat="server" Height="85px" Width="312px"></asp:TextBox>

         <br />
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button1" runat="server" Text="Submit" />

    <br />

    <br />

    </article>

</asp:Content>
