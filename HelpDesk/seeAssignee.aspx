<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeBehind="seeAssignee.aspx.cs" Inherits="HelpDesk.seeAssignee" Title="See Assignees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
    <tr align="center">
        <td align="center" colspan="2"  >
        <h3 style="text-decoration:underline; color:Teal;">LIST OF CURRENT ASSIGNEES IN THE SYSTEM</h3>
        <br />
        <br />
        
        
            <asp:GridView ID="gvAssignee" runat="server" AlternatingRowStyle-BackColor="PeachPuff" RowStyle-BackColor="PaleGreen" CellPadding="4" CellSpacing="1" AllowPaging="true" PageSize="5" AllowSorting="true"  DataSourceID="SqlDataSource1" Font-Size="16pt" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False">
                <Columns><asp:BoundField DataField="FirstName" SortExpression="FirstName" HeaderText="FirstName"></asp:BoundField>
                        <asp:BoundField DataField="LastName" SortExpression="LastName" HeaderText="LastName"></asp:BoundField>
                        <asp:BoundField DataField="Department" SortExpression="Department" HeaderText="Department" ></asp:BoundField>
                        <asp:BoundField DataField="Password" SortExpression="Password" HeaderText="Password" ></asp:BoundField>
                 </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM assigneeLogin" ConnectionString="<%$ ConnectionStrings:OHDConnectionString1 %>" ProviderName="<%$ ConnectionStrings:OHDConnectionString1.ProviderName %>"></asp:SqlDataSource>
            
        </td>
    </tr>
    </table>
</asp:Content>
