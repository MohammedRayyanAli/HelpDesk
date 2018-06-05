<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeBehind="reqForPwdAssignee.aspx.cs" Inherits="HelpDesk.reqForPwdAssignee" Title="Assignee Forgot Password"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table width="100%" >
        <tr>
                <td align="center" style="color:Teal; text-decoration:underline">
                <h3>Request For Assignee Password</h3>
                </td>
        </tr>
            
    <tr>
        <td align="center">
        
        
            <asp:GridView ID="gvRequestpwd" runat="server" CellPadding="2" CellSpacing="4" AllowPaging="true"  DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False">
            
                <Columns>
                <asp:HyperLinkField  HeaderText="Reset Password" DataNavigateUrlFields="username" DataNavigateUrlFormatString="resetPswdAssignee.aspx?username={0}" Text="Reset"   />
                <asp:BoundField DataField="UserName" SortExpression="UserName" HeaderText="UserName"></asp:BoundField>
                <asp:BoundField DataField="Email_Address" SortExpression=" Email_Address" HeaderText="Email_Address"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM AssigneePswd where reset is null" ConnectionString="<%$ ConnectionStrings:OHDConnectionString1 %>" ProviderName="<%$ ConnectionStrings:OHDConnectionString1.ProviderName %>"></asp:SqlDataSource>
            
        </td>
    </tr>
</table>


</asp:Content>
