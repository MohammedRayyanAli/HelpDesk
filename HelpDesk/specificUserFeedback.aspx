<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" Title="FEEDBACK OF SPECIFIC USER"  AutoEventWireup="true" CodeBehind="specificUserFeedback.aspx.cs" Inherits="HelpDesk.specificUserFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
    <tr align="center">
        <td align="center" colspan="2" >
                    <h3>Specific User Details Regarding Feedback</h3>
        </td>
    </tr>
        <tr>
        
                <td align="right">
                    <asp:Label ID="lblFname" runat="server" Font-Bold="true" Width="150px" Text="FIRST NAME" style="vertical-align: middle; text-align: left"></asp:Label>
                 </td>
                 <td align="left">   
               
                    <asp:TextBox ID="txtFname" Font-Bold="true" runat="server"></asp:TextBox>
                </td>
            
        </tr>
        
        <tr>
       <td align="right">
                    <asp:Label ID="lblLastname" runat="server" Font-Bold="true" Width="150px"  style="vertical-align: middle; text-align: left" Text="LAST NAME"></asp:Label>
       </td>
       
                <td align="left"> 
                
                    <asp:TextBox ID="txtLname" Font-Bold="true"  runat="server"></asp:TextBox>
                </td>
       </tr>
        
        
        
        
        
        
        
        
        
        
        <tr>
        
        <td align="right">
                    <asp:Label ID="lblDept" runat="server" Font-Bold="true" Width="150px" Text="DEPARTMENT"  style="vertical-align: middle; text-align: left"></asp:Label>
                    
          </td>
                 <td align="left">            
               
                    <asp:TextBox ID="txtdept" Font-Bold="true" runat="server"></asp:TextBox>
                </td>
        </tr>
        
        
        
        <tr>
        
        <td align="right" style="height: 26px">
                    <asp:Label ID="lblEmail" runat="server" Font-Bold="true" Width="150px" Text="EMAIL-ADDRESS"  style="vertical-align: middle; text-align: left"></asp:Label>
         </td>
         
           <td align="left" style="height: 26px"> 
               
                    <asp:TextBox ID="txtEmail" Font-Bold="true" runat="server"></asp:TextBox>
           </td>
        </tr>
        
        
        
        
        
        <tr>
        
        <td align="right">
                    <asp:Label ID="lblSem" runat="server" Font-Bold="true" Width="150px" Text="SEMESTER"  style="vertical-align: middle; text-align: left"></asp:Label>
                    
          </td>
                 <td align="left"> 
               
                    <asp:TextBox ID="txtSem"  Font-Bold="true" runat="server"></asp:TextBox>
                </td>
        </tr>
        
        
        
        
        
        
        
      
    </table>
</asp:Content>


