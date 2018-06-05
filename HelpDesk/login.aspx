<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HelpDesk.login"  Title="Registered User Login"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
    
        <tr>
        
            <td align="center" colspan="2" style="text-align:center; text-decoration:underline; font-size:16pt; font-weight:bold; font-family:Arial;">
                   
                       <h2 style="text-decoration:underline; color:Green;"> LOGIN NOW !!!!!</h2>
                        
                    
            </td>
     
        
        </tr>
        
        <tr>
                    <td align="center" colspan="2">
                        <p style="color:Blue; font-size:15pt; font-weight:bold;" >                    
                           
                            Registered Users Can Login Directly Into The System, While New User's Must Sign Up First To Access The Various Facilities Of This System<br />
                            Signing Up Is Easy And Will Take Up Only A Few Minutes Of Your Time.
                        </p>    
                    </td>
        </tr>
        
        
        
        
        
        
        <tr>
        <td align="center" colspan="2" style=" font-size:12pt; color:Teal;" >
                <br />
                <br />
                <asp:Label ID="lblLoginas" runat="server" Font-Bold="true" Font-Size="14pt" Text="LOGIN AS:"></asp:Label>
                
                        
            
            
            
                <asp:DropDownList ID="ddlUser" runat="server"  Font-Bold="true" Font-Size="12pt" ForeColor="Maroon">
                <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                <asp:ListItem Text="Administrator" Value="Administrator"></asp:ListItem>
                <asp:ListItem Text="Assignee" Value="Assignee"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                      
        </td>
        
        
        </tr>
        
       
        
        
        
        <tr>
        
                    
            <td align="center" colspan="2" style=" font-size:14pt; color:Teal;">
            
                    
                    <asp:Label ID="lblUname" runat="server" Text="USER NAME" Font-Bold="true"></asp:Label>  
                    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="rqfvUname" runat="server" ErrorMessage="This Field Cannot Be Left Blank"  ControlToValidate="txtUname"></asp:RequiredFieldValidator>
                            
                  
            </td>
           
        </tr>
    
        
        <tr>
        
            <td align="center" colspan="2" style=" font-size:14pt; color:Teal;">
                              
                <asp:Label ID="lblPassword" runat="server" Text="PASSWORD" Font-Bold="true"></asp:Label>             
                <asp:TextBox ID="txtPswd" TextMode="Password" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="rqfvPswd" runat="server" ErrorMessage="Password Field Cannot Be Blank" ControlToValidate="txtPswd"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        
        <tr>
        
            <td  align="center">
           
            
            
                <asp:Button ID="btnSubmit" Font-Bold="true" Font-Size="Medium" BackColor="Crimson" AccessKey="L" ForeColor="FloralWhite" runat="server" Text="LOGIN" OnClick="btnSubmit_Click" Width="120px"/>
                <br />
               
                
                    
                <asp:HyperLink ID="hplForgotpswd" runat="server" Font-Size="12pt" NavigateUrl="~/forgorPwdCommon.aspx">Forgot Your Password??</asp:HyperLink>
            </td>
            
        </tr>
       
    </table>

</asp:Content>


