<%@ Page Language="C#" MasterPageFile="~/assigneeMaster.master" AutoEventWireup="true" CodeBehind="forgotPwdAssignee.aspx.cs" Inherits="HelpDesk.forgotPwdAssignee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table width="100%" style="background-color:Transparent; font-weight:bold; font-size:larger; color:Maroon;" >
    <tr>
    <td align="center" colspan="2">
    <br />
    <br />
            Forgot Password Page 
            <br /> 
            <br /> 
            <br />
            <br />
        
        Provide us the user name and email address which you have entered while signing up
        to the site and we will send you the password to your email address.
    </td>
    </tr>
    
        <tr>
        
        
            <td align="right">
            <br />
            <br />
            
                <asp:Label ID="lblUnamelogin" runat="server" Text="UserName"></asp:Label>
                
            </td>
            
            <td align="left">
            <br />
            <br />
            
                <asp:TextBox ID="txtUnamelogin" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqfvUname" runat="server" ErrorMessage="UserName Field Cannot Be Left Blank"  ControlToValidate="txtUnamelogin"></asp:RequiredFieldValidator>
                
            </td>
            
            
            
            
        </tr>
        
        <tr>
        
            <td align="right">
            <br />
            <br />
            
                <asp:Label ID="lblEmail" runat="server" Text="Email_Address"></asp:Label>
                
                
            </td>
            
            <td align="left">
            <br />
            <br />
            
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email-Address Is Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="rgvEmail" runat="server" ErrorMessage="Email-Id Is Invalid" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                     
            </td>
            
            
            
        </tr>
        
        <tr>
        
            <td align="right">
            <br />
            <br />
                <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" OnClick="btnSubmit_Click" />
            
            </td>
            
            <td align="left">
            <br />
            <br />
           
                <asp:Button ID="btnCancel" runat="server" Text="CANCEL" />
            </td>
            
        </tr>
        
        <tr>
                    <td>
                        <asp:HyperLink ID="hypChangepswd" runat="server" NavigateUrl="~/ChangePassword.aspx">CHANGE PASSWORD??</asp:HyperLink>
                    </td>
        </tr>
        
    </table>

</asp:Content>


