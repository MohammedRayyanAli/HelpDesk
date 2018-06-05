<%@ Page Language="C#" MasterPageFile="~/assigneeMaster.master" AutoEventWireup="true" CodeBehind="changePswdAssignee.aspx.cs" Inherits="HelpDesk.changePswdAssignee" Title="Change Pswd Assignee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table width="100%"   style="color:Maroon;" >
    <tr align="right">
        <td colspan="2" align="center">
            <br />
            <br />
            <h3>CHANGE ASSIGNEE PASSWORD NOW!!!</h3>
            <br />
            <br />
        </td>
    </tr>
    
    
     <tr>
              <td style="width: 486px; background-color:Transparent" align="right" valign="top" >
                  <span style="font-size: 14pt; font-weight:bold; color:Teal; font-family:Arial"></span>
                  <asp:Label ID="lblOldPwd" runat="server" Width="200px" Font-Bold="true" Font-Size="14pt" ForeColor="teal" Text="Old Password :" style="vertical-align: middle; text-align: left" ></asp:Label>
              </td>
              <td style="width: 325px; background-color:Transparent" align="left" valign="top" >
                  <span style="font-size: 10pt; color:Teal; font-family:Arial">  
                  <asp:TextBox ID="txtOldPwd" runat="server" Font-Bold="true"  TextMode="SingleLine" Width="150"   ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rvfOldPwd" ControlToValidate="txtOldPwd" runat="server" ErrorMessage="Enter old password."></asp:RequiredFieldValidator></span>  
              </td>
       </tr>
       
    
       
        
        <tr>
              <td style="width: 486px; background-color:Transparent" align="right" valign="top" >
                  <span style="font-size: 14pt; font-weight:bold; color:Teal; font-family:Arial"></span>
                  <asp:Label ID="lblNewpswd" runat="server" Width="200px" Font-Bold="true" Font-Size="14pt" ForeColor="teal" Text="New Password :" style="vertical-align: middle; text-align: left" ></asp:Label>
              </td>
              <td style="width: 325px; background-color:Transparent" align="left" valign="top" >
                  <span style="font-size: 10pt; color:Teal; font-family:Arial">  
                  <asp:TextBox ID="txtNewpswd" runat="server"  TextMode="Password" Width="150"   ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rqfvNewpswd" ControlToValidate="txtNewPswd" runat="server" ErrorMessage="Enter old password."></asp:RequiredFieldValidator></span>  
              </td>
       </tr>
       
        
        
         <tr>
              <td style="width: 486px; background-color:Transparent" align="right" valign="top" >
                  <span style="font-size: 14pt; font-weight:bold; color:Teal; font-family:Arial"></span>
                  <asp:Label ID="lblRpswd" runat="server" Width="200px" Font-Bold="true" ForeColor="teal" Font-Size="14pt" Text="Retype Password :" style="vertical-align: middle; text-align: left" ></asp:Label>
              </td>
              <td style="width: 325px; background-color:Transparent" align="left" valign="top" >
                  <span style="font-size: 10pt; color:Teal; font-family:Arial">  
                  <asp:TextBox ID="txtRpswd" runat="server"  TextMode="Password" Width="150"   ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtRpswd" runat="server" ErrorMessage="Enter old password."></asp:RequiredFieldValidator></span>  
              </td>
       </tr>
       
            
            
            
            
             <tr>
                            <td colspan="2"  align="center">
                
                             
                   
                            
                            <asp:Button ID="btnSubmit" runat="server" Text="CHANGE PASSWORD" ForeColor="floralwhite" BackColor="crimson" Font-Bold="true" Width="150px" OnClick="btnSubmit_Click" />
                            </td>
                        
            </tr>
           
        
    </table>


            
</asp:Content>


