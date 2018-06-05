<%@ Page Language="C#"  MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeBehind="reqForpswd.aspx.cs" Inherits="HelpDesk.reqForpswd" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <table width="100%" >
        <tr align="center">
        <td align="center" style="text-decoration:underline; color:Teal;" colspan="2">
       
        
                <h3> Students Who Have Forgotten Their Password</h3>
        </td>
        </tr>
        <tr>
        
        <td align="center">
            <asp:GridView ID="gvRequestpwd" runat="server" AllowPaging="true" PageSize="5"  DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AutoGenerateColumns="False">
                <Columns>
                        <asp:HyperLinkField  HeaderText="Reset Password" DataNavigateUrlFields="username" DataNavigateUrlFormatString="resetPwd.aspx?username={0}" Text="Reset"   />
                        <asp:BoundField DataField="UserName" SortExpression="UserName" HeaderText="UserName"></asp:BoundField>
                        <asp:BoundField DataField="Email_Address" SortExpression=" Email_Address" HeaderText="Email_Address"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM forgotPswd where reset is null" ConnectionString="<%$ ConnectionStrings:OHDConnectionString1 %>" ProviderName="<%$ ConnectionStrings:OHDConnectionString1.ProviderName %>"></asp:SqlDataSource>
            
        </td>
    </tr>
</table>
</asp:Content>
