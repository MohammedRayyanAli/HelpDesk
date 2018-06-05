<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeBehind="resetPwd.aspx.cs" Inherits="HelpDesk.resetPwd" Title="Reset Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
    <tr align="center">
        <td align="center" colspan="2" >
                    <h3>Specific User Details For Reset Password</h3>
        </td>
    </tr>
        <tr>
        
                <td align="right" style="width: 522px">
                    <asp:Label ID="lblFname" runat="server" Text="FIRST NAME" Width="142px" style="vertical-align: middle; text-align: left"></asp:Label>
                    </td>
                    <td align="left">
                    <asp:Label ID="lblFname1" runat="server" Text=""></asp:Label>
               
                    
                </td>
            
        </tr>
        
        <tr>
       <td  align="right" style="width: 522px">
                    <asp:Label ID="lblLastname" runat="server" Text="LAST NAME" Width="142px" style="vertical-align: middle; text-align: left"></asp:Label>
                    
        </td>
                    <td align="left">             
                    <asp:Label ID="lblLname1" runat="server" Text=""></asp:Label>
                    
                </td>
       </tr>
        
        
        
        
        <tr>
        
        <td  align="right" style="width: 522px">
                    <asp:Label ID="lblUname" runat="server" Text="USER-NAME" Width="142px" style="vertical-align: middle; text-align: left"></asp:Label>
                    
                    
          </td>
                    <td align="left">           
                    <asp:Label ID="lblUname1" runat="server" Text=""></asp:Label>
               
                    
                    </td>
        </tr>
        
        
        <tr>
        
        <td  align="right" style="width: 522px">
                    <asp:Label ID="lblEmail" runat="server" Text="EMAIL-ADDRESS" Width="142px" style="vertical-align: middle; text-align: left"></asp:Label>
                    
             </td>
                    <td align="left">        
               
                    <asp:Label ID="lblEmail1" runat="server" Text=""></asp:Label>
                </td>
        </tr>
        
        
        
        
        
        <tr>
        
        <td  align="right" style="width: 522px">
                    <asp:Label ID="lblSem" runat="server" Text="SEMESTER" Width="142px" style="vertical-align: middle; text-align: left"></asp:Label>
                    
          </td>
                    <td align="left">           
                    <asp:Label ID="lblSem1" runat="server" Text=""></asp:Label>
                    
                </td>
        </tr>
        
        
        
        <tr>
            <td  align="right" style="width: 522px">
                    <asp:Label ID="lblUid" runat="server" Text="USER-ID" Width="142px" style="vertical-align: middle; text-align: left"></asp:Label>
                    
               </td>
                    <td align="left">      
                
                    <asp:Label ID="lblUid1" runat="server" Text=""></asp:Label>
                </td>
        </tr>
        
        
         <tr>
            <td  align="right" style="width: 522px">
                    <asp:Label ID="lblPswd" runat="server" Text="NEW PASSWORD" Width="142px" style="vertical-align: middle; text-align: left"></asp:Label>
                    
                  </td>
                    <td align="left">   
                
                    <asp:TextBox ID="txtNewpswd" runat="server" TextMode="singleLine"></asp:TextBox>
                </td>
        </tr>
        
        
        
        <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnReset" runat="server" Text="Reset Password" OnClick="btnReset_Click"/>
                        </td>
        </tr>
    </table>
        
</asp:Content>


