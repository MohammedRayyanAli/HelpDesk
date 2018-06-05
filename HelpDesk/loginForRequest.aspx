<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="loginForRequest.aspx.cs" Inherits="HelpDesk.loginForRequest" Title=" Request Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
    <tr>
        <td align="center" style="text-align:center; color:Teal; font-family:Monotype Corsiva; font-weight:bold; font-size:18pt">
        <br />
       
        
        <p>
            To Make A <span style="text-decoration:underline; font-size:22pt; color:Maroon; ">Request</span> You Have To Be A registered User Of The System.
            If You Are Already A Registered User Then 
            You Can First Login And Then Create Or Modify Your Query Accordingly.<br />
            If You Have Not Registerd With Us ,Please Sign Up
            With Us As A New User.
       </p>
                 
        </td>
    </tr>
    <tr>
            <td align="center"> 
            <br />
            <br />
                <asp:HyperLink ID="hlLogin" Font-Bold="true" Font-Size="Large" runat="server" NavigateUrl="~/login.aspx">Login !</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" Font-Bold="true" Font-Size="Large" runat="server" NavigateUrl="~/createNewAccount.aspx">New User ? Sign Up !</asp:HyperLink>
             </td>
    </tr>
    
</table>
</asp:Content>


