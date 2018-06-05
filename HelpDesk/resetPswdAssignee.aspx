<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeBehind="resetPswdAssignee.aspx.cs" Inherits="HelpDesk.resetPswdAssignee" Title="Reset Assignee Pswd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<table width="100%">
    <tr align="center">
        <td align="center" colspan="2" >
                    <h3>Specific Assignee Details For Reset Password</h3>
        </td>
    </tr>
        <tr>
        
                <td align="center">
                    <asp:Label ID="lblFname" runat="server" Text="FIRSTNAME :" Width="200px" style="vertical-align: middle; text-align: left"></asp:Label>
                  
                    <asp:Label ID="lblFname1" runat="server" ></asp:Label>
               
                    
                </td>
            
        </tr>
        
        <tr>
       <td  align="center">
                    <asp:Label ID="lblLastname" runat="server" Text="LAST NAME :" Width="200px" style="vertical-align: middle; text-align: left"></asp:Label>
                   
                    <asp:Label ID="lblLname1" runat="server" ></asp:Label>
                    
                </td>
       </tr>
        
        
        
        
        <tr>
        
        <td  align="center">
                    <asp:Label ID="lblUname" runat="server" Text="USER-NAME :" Width="200px" style="vertical-align: middle; text-align: left"></asp:Label>
               
                    <asp:Label ID="lblUname1" runat="server" ></asp:Label>
               
                    
                </td>
        </tr>
        
        
        <tr>
        
        <td  align="center">
                    <asp:Label ID="lblEmail" runat="server" Text="EMAIL-ID :" Width="200px" style="vertical-align: middle; text-align: left"></asp:Label>
                 
                    
               
                    <asp:Label ID="lblEmail1"  runat="server" Text=""></asp:Label>
                </td>
        </tr>
        
        
        
        
         <tr>
        
        <td  align="center">
                    <asp:Label ID="lblDept" runat="server" Text="DEPARTMENT :" Width="200px" style="vertical-align: middle; text-align: left"></asp:Label>
                  
               
                    <asp:Label ID="lblDeptname" runat="server"></asp:Label>
                </td>
        </tr>
        
        
        
        
        
        
        
        
        
         <tr>
            <td  align="center">
                    <asp:Label ID="lblPswd" runat="server" Text="NEW PASSWORD :" Width="142px" style="vertical-align: middle; text-align: left; width: 150px;"></asp:Label>
                   
                
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


