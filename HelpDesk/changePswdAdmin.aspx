<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeBehind="changePswdAdmin.aspx.cs" Inherits="HelpDesk.changePswdAdmin" Title="Change Pswd Admin " %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%"  style="color:Maroon;" >
            <tr align="right">
        <td colspan="2" align="center">
            <br />
            <br />
            <h3>CHANGE ADMINISTRATOR PASSWORD!!!</h3>
            <br />
            <br />
        </td>
    </tr>
    
    
     <tr>
              <td style="width: 486px; background-color:Transparent" align="right" valign="top" >
                  <span style="font-size: 14pt; color:Teal; font-family:Arial"></span>
                  <asp:Label ID="lblOldPwd" runat="server" ForeColor="teal" Text="Old Password :" ></asp:Label>
              </td>
              <td style="width: 325px; background-color:Transparent" align="left" valign="top" >
                  <span style="font-size: 10pt; color:Teal; font-family:Arial">  
                  <asp:TextBox ID="txtOldPwd" TextMode="SingleLine" runat="server" Width="150"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rvfOldPwd" ControlToValidate="txtOldPwd" runat="server" ErrorMessage="Enter old password."></asp:RequiredFieldValidator></span>  
              </td>
       </tr>
       
    
       
        
        <tr>
              <td style="width: 486px; background-color:Transparent" align="right" valign="top" >
                  <span style="font-size: 14pt; color:Teal; font-family:Arial"></span>
                  <asp:Label ID="lblNewpswd" runat="server" ForeColor="teal" Text="New Password :" ></asp:Label>
              </td>
              <td style="width: 325px; background-color:Transparent" align="left" valign="top" >
                  <span style="font-size: 10pt; color:Teal; font-family:Arial">  
                  <asp:TextBox ID="txtNewpswd" runat="server" TextMode="Password" Width="150"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rqfvNewpswd" ControlToValidate="txtNewPswd" runat="server" ErrorMessage="Enter old password."></asp:RequiredFieldValidator></span>  
              </td>
       </tr>
       
        
        
         <tr>
              <td style="width: 486px; background-color:Transparent" align="right" valign="top" >
                  <span style="font-size: 14pt; color:Teal; font-family:Arial"></span>
                  <asp:Label ID="lblRpswd" runat="server" ForeColor="teal" Text="Retype Password :" ></asp:Label>
              </td>
              <td style="width: 325px; background-color:Transparent" align="left" valign="top" >
                  <span style="font-size: 10pt; color:Teal; font-family:Arial">  
                  <asp:TextBox ID="txtRpswd" runat="server"  TextMode="Password" Width="150"   ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtRpswd" runat="server" ErrorMessage="Enter old password."></asp:RequiredFieldValidator></span>  
              </td>
       </tr>
       
            
            
            
            
             <tr>
                            <td colspan="2"  align="center">
                
                             
                   
                            
                            <asp:Button ID="btnSubmit" runat="server" Font-Bold="true" Text="CHANGE PASSWORD" Width="150px" ForeColor="FloralWhite" BackColor="crimson" OnClick="btnSubmit_Click" />
                            </td>
                        
            </tr>
           
        
    </table>

</asp:Content>


