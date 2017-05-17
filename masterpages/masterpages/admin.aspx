<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="masterpages.admin2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="PDS" ShowFooter="True" Width="839px" Height="276px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" InsertVisible="False" />
            <asp:TemplateField HeaderText="ProductID" InsertVisible="False" SortExpression="ProductID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton OnClick="Insertbtn_Click" ID="Insertbtn"  runat="server">Insert</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVPName" runat="server" ErrorMessage="Product Name is required"
                       ControlToValidate="TextBox1" Text="*" BackColor="#FF6666">            
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVInsertPName" runat="server" ErrorMessage="Product Name is required"
                       ControlToValidate="txtProductName" Text="*" BackColor="#FF6666">            
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductPrice" SortExpression="ProductPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVPPrice" runat="server" ErrorMessage="Product Price is required"
                       ControlToValidate="TextBox2" Text="*" BackColor="#FF6666">            
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtProductPrice" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RFVInsertPPrice" runat="server" ErrorMessage="Product Price is required"
                       ControlToValidate="txtProductPrice" Text="*" BackColor="#FF6666">            
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductStock" SortExpression="ProductStock">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ProductStock") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RFVPStock" runat="server" ErrorMessage="Product Stock is required"
                       ControlToValidate="TextBox3" Text="*" BackColor="#FF6666">            
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ProductStock") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtProductStock" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVInsertPStock" runat="server" ErrorMessage="Product Stock is required"
                       ControlToValidate="txtProductStock" Text="*" BackColor="#FF6666">            
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="FileUpload.aspx?id={0}" InsertVisible="False" Text="Set Image" />
        </Columns>
    </asp:GridView>
    <asp:ValidationSummary ID="ValidationSummary1" BackColor="#FF6666" runat="server" />
    <asp:SqlDataSource ID="PDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1526896_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [AddEditDelete] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductStock] = @original_ProductStock) OR ([ProductStock] IS NULL AND @original_ProductStock IS NULL))" InsertCommand="INSERT INTO [AddEditDelete] ([ProductName], [ProductPrice], [ProductStock]) VALUES (@ProductName, @ProductPrice, @ProductStock)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [AddEditDelete]" UpdateCommand="UPDATE [AddEditDelete] SET [ProductName] = @ProductName, [ProductPrice] = @ProductPrice, [ProductStock] = @ProductStock WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductStock] = @original_ProductStock) OR ([ProductStock] IS NULL AND @original_ProductStock IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductStock" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductStock" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductStock" Type="Int32" />
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductStock" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

