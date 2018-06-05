<%@ Page Language="C#" MasterPageFile="~/studentMaster.master" AutoEventWireup="true" CodeBehind="myUnsolvedQueries.aspx.cs" Inherits="HelpDesk.myUnsolvedQueries" Title="My Unanswered Requests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
        <table width="100%">
    <tr align="center">
        <td align="center" colspan="2"  >
        <h2 style="text-decoration:underline; color:Teal;">List of all unsolved request made by me</h2>
        <br />
        <br />
        
        
            <asp:GridView ID="gvAllMyQueries" runat="server" PageSize="5" BorderColor="black" CellSpacing="4" AllowPaging="true" AllowSorting="true" RowStyle-Font-Size="15pt" RowStyle-HorizontalAlign="Left" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" Width="400px">
                <Columns>
                        <asp:BoundField DataField="request" SortExpression="Request" HeaderText="Request"></asp:BoundField>
                        <asp:BoundField DataField="time" SortExpression="time" HeaderText="DATE & TIME"></asp:BoundField>
                        
                        
                 </Columns>
               
            </asp:GridView>
            
            
        </td>
    </tr>
    </table>
        
</asp:Content>
