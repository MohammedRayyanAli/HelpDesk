<%@ Page Language="C#"  MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeBehind="addDepartment.aspx.cs" Inherits="HelpDesk.addDepartment" Title="Add New Department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table width="100%">
            
            <tr align="center">
                 <td align="center" style="height: 100px">
                        
                                  <h3 style="text-decoration:underline; color:Teal;">Add New Department</h3>
                                    
                                    
                        </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label runat="server" ID="lblNewDept" Text="New Department"></asp:Label>
                    <asp:TextBox runat="server" ID="txtNewDept" TextMode="SingleLine" MaxLength="20" ></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Button runat="server" id="btnAdd" Text="Add Department" OnClick="btnAdd_Click" />
                </td>
            </tr>
            <tr>
                        <td align="center" style="height: 100px">
                        
                                  <h3 style="text-decoration:underline; color:Teal;">Existing Departments   </h3>
                                    
                                    
                        </td>
            </tr>
            
    <tr>
        
        <td align="center">
            <asp:GridView ID="gvDept" RowStyle-HorizontalAlign="Left" BorderStyle="Solid" BorderColor="black"  runat="server" AllowPaging="true" PageSize="5"  DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" Font-Bold="True" Font-Names="Consolas" Font-Size="Larger" ForeColor="Maroon" PageIndex="0" HorizontalAlign="NotSet">
                <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="deptID" DataNavigateUrlFormatString="deleteDept.aspx?deptID={0}" Text="Delete"   />
                 <asp:BoundField DataField="department" SortExpression="department" HeaderText="Department"></asp:BoundField>
                        
                 </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [department] order by department" ConnectionString="<%$ ConnectionStrings:OHDConnectionString1 %>" ProviderName="<%$ ConnectionStrings:OHDConnectionString1.ProviderName %>"></asp:SqlDataSource>
            
        </td>
    </tr>
    
</table>


</asp:Content>

