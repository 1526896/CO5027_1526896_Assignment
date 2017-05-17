<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="masterpages.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <table>
            <tr><td><h5>The Rock</h5></td>
                <td><h5>Memphis Depay</h5></td></tr>
            <tr><td><img src="image/CpgT7sQXYAA2-9N.jpg" height="500" width="400" alt="The Rock Quote"/></td>
                <td><img src="image/160222_SPECPROJ_H1_MEMPH_HERO_MB.jpg" height="500" width="400" alt="Memphis Depay Quote"/></td>
            </tr>
        </table>
    <h5>Gina Carano</h5>
    <img src="image/cca0168dcb29b038f8376223501dba0c.jpg" class="center" height="650" width="1000" alt="Gina Carano Quote"/>
        
    </div>
    <div class="container">
        <h5>Here are the merchandises:</h5>
        <table>
            <tr><td><img src="image/1305062-410.jpg" height="300" width="300" alt="UA x Project Rock Freedom Snapback Cap"/></td>      
                <td><img src="image/the-rock-under-armour-shirt-1.jpg" height="300" width="300" alt="UA x Project Rock Blood Sweat Respect"/></td>
                <td><img src="image/UApants.jpg" height="300" width="300" alt="UA Storm Armour Fleece"/></td></tr>
            <tr><td>UA x Project Rock Freedom Snapback Cap</td>
                <td>UA x Project Rock Blood Sweat Respect</td>
                <td>UA Storm Armour Fleece</td></tr>
            <tr><td><img src="image/1292820-001_F.jpg" height="300" width="300" alt="UA Run Cushion Tab No Show"/></td>
                <td><img src="image/gemini3.jpg" height="300" width="300" alt="UA SpeedForm Gemini 3"/></td>
                <td><img src="image/UAsandals.jpeg" height="300" width="300" alt="UA Fat Tire Sandals"/></td></tr> 
            <tr>
                <td>UA Run Cushion Tab No Show</td>
                <td>UA SpeedForm Gemini 3</td>
                <td>UA Fat Tire Sandals</td></tr>
        </table>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate><ul></HeaderTemplate>
            <ItemTemplate>
                <li>
                    <a href="<%# Eval("ProductID", "DetailProduct.aspx?Id={0}") %>">
                        <%# Eval("ProductName") %>
                    </a>
                </li>
            </ItemTemplate>
            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1526896_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [AddEditDelete]"></asp:SqlDataSource>
     </div>
</asp:Content>
