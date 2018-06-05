<%@ Page Language="C#" MasterPageFile="~/studentMaster.master" AutoEventWireup="true" CodeBehind="myQueries.aspx.cs" Inherits="HelpDesk.myQueries" Title="My Requests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table width="100%">
    <tr align="center">
        <td align="center" colspan="2"  >
        <h2 style="text-decoration:underline; font-weight:bold; color:Teal;">List Of My Answered Queries!!</h2>
        <br />
        <br />
        
        
        
            <asp:GridView ID="gvAllMyQueries" AllowPaging="true" PageSize="7" PageIndex="0"  runat="server" BorderColor="black" RowStyle-Font-Size="15pt" RowStyle-Font-Bold="true" RowStyle-HorizontalAlign="Left"  EmptyDataText="There are no data records to display." CellPadding="1" CellSpacing="4"  AutoGenerateColumns="False">
                <Columns>
                        <asp:BoundField DataField="request" SortExpression="Request" HeaderStyle-ForeColor="Crimson" HeaderText ="REQUEST"></asp:BoundField>
                        <asp:BoundField DataField="solution" SortExpression="Solution" HeaderStyle-ForeColor="crimson" HeaderText="SOLUTION"></asp:BoundField>
                        <asp:BoundField DataField="time" SortExpression="time" HeaderStyle-ForeColor="crimson" HeaderText="DATE & TIME"></asp:BoundField>
                        
                        
                 </Columns>
            </asp:GridView>
            
            
            
        </td>
    </tr>
    </table>

    
</asp:Content>
