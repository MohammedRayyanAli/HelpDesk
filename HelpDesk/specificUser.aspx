<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" Title="User Details" AutoEventWireup="true" CodeBehind="specificUser.aspx.cs" Inherits="HelpDesk.specificUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
    <tr align="center">
        <td align="center" colspan="2" >
                    <h3>Specific User Details</h3>
        </td>
    </tr>
        <tr>
        
                <td align="right">
                    <asp:Label ID="lblFname" runat="server" Font-Bold="true" Width="150px" Text="FIRST NAME" style="vertical-align: middle; text-align: left"></asp:Label>
                 </td>
                 <td align="left">   
               
                    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                </td>
            
        </tr>
        
        <tr>
       <td align="right">
                    <asp:Label ID="lblLastname" runat="server" Font-Bold="true" Width="150px"  style="vertical-align: middle; text-align: left" Text="LAST NAME"></asp:Label>
       </td>
       
                <td align="left"> 
                
                    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                </td>
       </tr>
        
        
        
        
        <tr>
        
        <td align="right">
                    <asp:Label ID="lblUname" runat="server" Font-Bold="true" Width="150px" Text="USER-NAME"  style="vertical-align: middle; text-align: left"></asp:Label>
                    
          </td>
                 <td align="left">            
               
                    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                </td>
        </tr>
        
        
        
        
        
        <tr>
        
        <td align="right">
                    <asp:Label ID="lblDept" runat="server" Font-Bold="true" Width="150px" Text="DEPARTMENT"  style="vertical-align: middle; text-align: left"></asp:Label>
                    
          </td>
                 <td align="left">            
               
                    <asp:TextBox ID="txtdept" runat="server"></asp:TextBox>
                </td>
        </tr>
        
        
        
        <tr>
        
        <td align="right">
                    <asp:Label ID="lblEmail" runat="server" Font-Bold="true" Width="150px" Text="EMAIL-ADDRESS"  style="vertical-align: middle; text-align: left"></asp:Label>
         </td>
         
           <td align="left"> 
               
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
           </td>
        </tr>
        
        
        
        
        
        <tr>
        
        <td align="right">
                    <asp:Label ID="lblSem" runat="server" Font-Bold="true" Width="150px" Text="SEMESTER"  style="vertical-align: middle; text-align: left"></asp:Label>
                    
          </td>
                 <td align="left"> 
               
                    <asp:TextBox ID="txtSem" runat="server"></asp:TextBox>
                </td>
        </tr>
        
        
        
        <tr>
            <td  align="right">
                    <asp:Label ID="lblUid" runat="server" Font-Bold="true" Width="150px" Text="USER-ID"  style="vertical-align: middle; text-align: left"></asp:Label>
                    
              </td>
              
                 <td align="left">        
                
                    <asp:TextBox ID="txtUid" runat="server"></asp:TextBox>
                </td>
        </tr>
        
        
        
        <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnDelete" runat="server" Font-Bold="true" ForeColor="floralWhite" BackColor="crimson" Text="Delete Account" OnClick="btnDelete_Click" />
                        </td>
        </tr>
    </table>
</asp:Content>


