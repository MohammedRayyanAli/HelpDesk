<%@ Page Language="C#" MasterPageFile="~/studentMaster.master" AutoEventWireup="true" CodeBehind="changePassword.aspx.cs" Inherits="HelpDesk.changePassword" Title="CHANGE PASSWORD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="100%" style="color:Maroon;" >
    <tr>
        <td colspan="2">
           
            <h2 style="vertical-align: middle; text-align: center">CHANGE STUDENT PASSWORD</h2>
            <br />
            <br />
           
        </td>
    </tr>
    
    
     <tr>
              <td align="right" style="width: 600px" valign="top">
                
                                
                <asp:Label ID="lblOldPwd" runat="server"  ForeColor="Teal" Font-Bold="true" Font-Size="14pt" Text="Old Password" Width="200px" style="vertical-align: middle; text-align: left;"  ></asp:Label>
                
                
              </td>
              
              <td>
             
              
                  
                  <asp:TextBox ID="txtOldPwd" runat="server"  TextMode="Password" style="vertical-align: middle; text-align:left;" Width="138px"></asp:TextBox>
                  
                  
                  
                  <asp:RequiredFieldValidator ID="rvfOldPwd" ControlToValidate="txtOldPwd" runat="server" ErrorMessage="Enter old password."></asp:RequiredFieldValidator>
                  
              </td>
      </tr>
       
    
       
        
        <tr>
              <td align="right" style="width: 600px" valign="top">
                  
                  <asp:Label ID="lblNewpswd" runat="server" Font-Bold="true" Font-Size="14pt"  ForeColor="teal" Width="200px" style="vertical-align:top; text-align: left;" Text="New Password" ></asp:Label>
                  
              </td>
              
              <td>
                   
                  <asp:TextBox ID="txtNewpswd" runat="server"  TextMode="Password"></asp:TextBox>
                 
                  <asp:RequiredFieldValidator ID="rqfvNewpswd" ControlToValidate="txtNewPswd" runat="server" ErrorMessage="Enter old password."></asp:RequiredFieldValidator>
              </td>
       </tr>
       
        
        
         <tr>
              <td align="right" style="width: 600px" valign="top">
                  
                  <asp:Label ID="lblRpswd" runat="server" Font-Bold="true" Font-Size="14pt" Width="200px"  ForeColor="teal"  Text="Retype Password" style="vertical-align:middle; text-align:left;" ></asp:Label>
                  
              </td>
              
              <td>
                  
                <asp:TextBox ID="txtRpswd" runat="server"  TextMode="Password"></asp:TextBox>
                
                  
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtRpswd" runat="server" ErrorMessage="Enter old password."></asp:RequiredFieldValidator>  
              </td>
        </tr>
       
            
            
            
            
             <tr>
                            <td colspan="2"  align="center">
                            <br />
                            <br />
                            
                
                             
                   
                            
                            <asp:Button ID="btnSubmit" runat="server" Font-Bold="true" Text="CHANGE PASSWORD" ForeColor="floralWhite" BackColor="crimson" Width="182px" OnClick="btnSubmit_Click" />
                            </td>
                        
            </tr>
           
        
    </table>

</asp:Content>


