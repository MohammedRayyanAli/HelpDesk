<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeBehind="requestArrivedForAdmin.aspx.cs" Inherits="HelpDesk.requestArrivedForAdmin" Title="Request For Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
            <tr>
                        <td align="center" style="height: 100px">
                        
                                  <h3 style="text-decoration:underline; color:Teal;">  NEW REQUEST ARRIVED!!! </h3>
                                    <br />
                                    <br />
                        </td>
            </tr>
    <tr>
        <td align="center">
            <asp:GridView ID="gvRequest" BorderStyle="Solid" BorderColor="black" AllowSorting="true" runat="server" AllowPaging="true" PageSize="5"  DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" Font-Bold="True" Font-Names="Consolas" Font-Size="Larger" ForeColor="Maroon" PageIndex="0" HorizontalAlign="NotSet">
                <Columns><asp:HyperLinkField SortExpression="request" ItemStyle-HorizontalAlign="Left"   HeaderText="Request" DataNavigateUrlFields="requestID,userID" DataNavigateUrlFormatString="specificRequest.aspx?requestID={0}&amp;userID={1}"  DataTextField="request" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="requestCategory" SortExpression="requestCategory" HeaderText="Request Categoty"></asp:BoundField>
                        <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="time" SortExpression="time" HeaderText="Request Time"></asp:BoundField>
                 </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [request]  where solution is null order by time desc" ConnectionString="<%$ ConnectionStrings:OHDConnectionString1 %>" ProviderName="<%$ ConnectionStrings:OHDConnectionString1.ProviderName %>"></asp:SqlDataSource>
            
        </td>
    </tr>
    
</table>

</asp:Content>

