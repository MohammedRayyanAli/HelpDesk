<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeBehind="processedQuery.aspx.cs" Inherits="HelpDesk.processedQuery" Title="Processed Request"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
            <tr>
                        <td align="center">
                        
                                  <h2 style="text-decoration:underline; font-size:14pt; font-weight:bold; color:Teal;"> Processed Requests </h2>
                                    <br />
                                    <br />
                        </td>
            </tr>
    <tr>
        <td align="center">
            <asp:GridView ID="gvRequest" CellSpacing="4" BorderStyle="solid" RowStyle-HorizontalAlign="Left" BorderColor="black" AllowSorting="true" runat="server"  AllowPaging="true" PageIndex="0" PageSize="10" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" Font-Bold="True" Font-Names="Consolas" Font-Size="Larger" ForeColor="Maroon" HorizontalAlign="NotSet">
                <Columns>
                        <asp:HyperLinkField   HeaderText="Request" DataNavigateUrlFields="requestID,userID" DataNavigateUrlFormatString="specificProcessedRequest.aspx?requestID={0}&amp;userID={1}"  DataTextField="request" />
                        
                        <asp:BoundField DataField="solution" SortExpression="solution" HeaderText="Solution"></asp:BoundField>
                        
                 </Columns>
            </asp:GridView>
                        
        </td>
    </tr>
    
</table>

</asp:Content>
