<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="forgorPwdCommon.aspx.cs" Inherits="HelpDesk.forgorPwdCommon" Title="Forgot Password Common" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  width="100%">
    
        <tr>
        
            <td align="center" colspan="2" style="text-align:center; text-decoration:underline; font-size:16pt; font-weight:bold; font-family:Arial;">
                   
                       <h2 style="text-decoration:underline; color:Green;"> Select Your User Domain and send request to reset ur password!!!!!</h2>
                        
                    
            </td>
     
        
        </tr>
        
        
        
        
        
        
        
        
        <tr>
        <td align="center" colspan="2" style=" font-size:12pt; color:Teal;" >
                <br />
                <br />
                <asp:Label ID="lblLoginas" runat="server" Font-Bold="true" Font-Size="14pt" Text="LOGIN AS:"></asp:Label>
                
                        
            
            
            
                <asp:DropDownList ID="ddlUser" runat="server"  Font-Bold="true" Font-Size="12pt" ForeColor="Maroon">
                <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                <asp:ListItem Text="Assignee" Value="Assignee"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                      
        </td>
        
        
        </tr>
        
       
        
        
        
        <tr>
        
                    
            <td align="center" colspan="2" style=" font-size:14pt; color:Teal;">
            
                    
                    <asp:Label ID="lblUname" runat="server" Width="150px" Text="User Name" Font-Bold="true" style="vertical-align: middle; text-align: left"></asp:Label>  
                    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="rqfvUname" runat="server" ErrorMessage="This Field Cannot Be Left Blank"  ControlToValidate="txtUname"></asp:RequiredFieldValidator><br />
                            
                   <asp:Label ID="lblEmail" runat="server" Width="150px" Text="Email address" Font-Bold="true" style="vertical-align: middle; text-align: left"></asp:Label>  
                   <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field Cannot Be Left Blank"  ControlToValidate="txtUname"></asp:RequiredFieldValidator>
                    
            </td>
           
        </tr>
    
        
        
        
        <tr>
        
            <td  align="center" style="width: 1070px">
           
            
            
                <asp:Button ID="btnSubmit" Font-Bold="true" ForeColor="floralWhite" BackColor="crimson" Font-Size="Medium"  AccessKey="L"  runat="server" Text="Submit"  Width="120px" OnClick="btnSubmit_Click"/>
                <br />
                <br />
                
                    
                
            </td>
            
        </tr>
       
    </table>
</asp:Content>

