<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeBehind="allUsers.aspx.cs" Inherits="HelpDesk.allUsers" Title="All User's" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
    <tr align="center">
        <td align="center">
        
        <h3 style=" text-decoration:underline;color:Teal;">LIST OF ALL REGISTERED USER'S</h3>
        <br />
        <br />
        
            <asp:GridView ID="gvUsers" AlternatingRowStyle-BackColor="PeachPuff" RowStyle-BackColor="PaleGreen"  runat="server" CellPadding="4" CellSpacing="1" BorderStyle="Solid" BorderColor="BlueViolet" AllowPaging="true" PageSize="5"  DataSourceID="SqlDataSource1" Font-Size="16pt" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False">
            
                <Columns>
                        
                        <asp:BoundField DataField="FIRSTNAME" SortExpression="FIRSTNAME" HeaderText="FIRSTNAME"></asp:BoundField>
                        <asp:BoundField DataField="LASTNAME" SortExpression="LASTNAME" HeaderText="LASTNAME"></asp:BoundField>
                        <asp:BoundField DataField="EMAIL_ADDRESS" SortExpression="EMAIL_ADDRESS" HeaderText="EMAIL ADDRESS" ></asp:BoundField>
                        <asp:HyperLinkField SortExpression="Edit"   HeaderText="EDIT" DataNavigateUrlFields="userID" DataNavigateUrlFormatString="specificUser.aspx?userID={0}" Text="Details"  />
                        
                </Columns>
                
            </asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [register]" ConnectionString="<%$ ConnectionStrings:OHDConnectionString1 %>" ProviderName="<%$ ConnectionStrings:OHDConnectionString1.ProviderName %>"></asp:SqlDataSource>
            
        </td>
    </tr>
</table>
</asp:Content>
