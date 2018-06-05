<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeBehind="addCategory.aspx.cs" Inherits="HelpDesk.addCategory" Title="Add New Category"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
            
            <tr align="center">
                 <td align="center" style="height: 100px">
                        
                                  <h3 style="text-decoration:underline; color:Teal;">Add A New Category</h3>
                                    
                                    
                        </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label runat="server" ID="lblNewCat" ForeColor="chocolate" Font-Bold="true" Font-Size="14pt" Text="New Category"></asp:Label>
                    <asp:TextBox runat="server" ID="txtNewCategory" TextMode="SingleLine" MaxLength="20" ></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Button runat="server" id="btnAdd" ForeColor="floralwhite" BackColor="crimson" Text="Add Category" OnClick="btnAdd_Click" />
                </td>
            </tr>
            <tr>
                        <td align="center" style="height: 100px">
                        
                                  <h3 style="text-decoration:underline; color:Teal;">Existing Categories Are As Below  </h3>
                                    
                                    
                        </td>
            </tr>
            
    <tr>
        
        <td align="center">
            <asp:GridView ID="gvCategory" BorderStyle="Solid" BorderColor="black" CellSpacing="4"  runat="server" AllowPaging="true" PageSize="5"  DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" Font-Bold="True" Font-Names="Consolas" Font-Size="Larger" ForeColor="Maroon" PageIndex="0" HorizontalAlign="NotSet">
                <Columns><asp:HyperLinkField     DataNavigateUrlFields="categories" DataNavigateUrlFormatString="deleteCategory.aspx?categories={0}" Text="Delete"   />
                        <asp:BoundField DataField="categories" SortExpression="categories" HeaderText="Category"></asp:BoundField>
                        
                 </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [category] order by categories" ConnectionString="<%$ ConnectionStrings:OHDConnectionString1 %>" ProviderName="<%$ ConnectionStrings:OHDConnectionString1.ProviderName %>"></asp:SqlDataSource>
            
        </td>
    </tr>
    
</table>
</asp:Content>


