<%@ Page Language="C#" MasterPageFile="~/studentMaster.master" AutoEventWireup="true" CodeBehind="newRequest.aspx.cs" Inherits="HelpDesk.newRequest" Title="CREATE NEW REQUEST" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
    
            
        <tr>
       
        
            <td align="center" colspan="2">
            
            
            
            
            
                
                                    <h2 style="color:Teal; text-decoration:underline"> CREATE A NEW REQUEST</h2>
               
                     
            </td>
            
        </tr>
        
        
        
        <tr>
                <td align="center" colspan="2" style="font-weight:bold; font-size:14pt;">
               
                
                
                    <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>
                   
                    &nbsp;<asp:Label ID="lblLtime" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    </td>
                    
        </tr>
        
        
        
        <tr>
                
        
           
            <td align="right">
                 <asp:Label ID="lblReqc"  runat="server" Font-Bold="True" Width="375px" ForeColor="ForestGreen" Font-Size="14pt" Text="CHOOSE YOUR REQUEST CATEGORY:-" style="vertical-align: middle; text-align: left"></asp:Label> 
                 <br />
                 <br />
            </td>
            
             <td style="width: 548px">        
                
                    <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="dsCategory" DataValueField="categories" style="font-size: 14pt; width: 200px; vertical-align: middle; text-align: center;">
                    </asp:DropDownList>
                    
                    <asp:SqlDataSource ID="dsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn %>" SelectCommand=" Select * from category " ></asp:SqlDataSource>
                    <br />
                    <br />
                   
             </td>
            
        </tr>
        
        
        <tr>
                <td  align="right">
                
               
                
                    <asp:Label ID="lblDept" runat="server" Width="375px"  Font-Bold="True" ForeColor="ForestGreen" Font-Size="14pt" Text="CHOOSE A RELATED DEPARTMENT:-" style="vertical-align: middle; text-align: left"></asp:Label>                     
                    <br />
                    <br />
                </td>
                <td style="width: 548px">    
                    
                        <asp:DropDownList ID="ddlDept" runat="server" DataSourceID="dsDept" DataValueField="department" Height="30px" Width="121px" style="font-size: 14pt; width: 200px">
                    
                        </asp:DropDownList>
                    
                        <asp:SqlDataSource ID="dsDept" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn %>" SelectCommand=" Select department from department " ></asp:SqlDataSource>
                        <br />
                        <br />
                   
     
                        
               </td>
        </tr>
        
        
        <tr>
        
            
                
               
            
            <td align="right">
                
                <asp:Label ID="lblQuery"  Font-Bold="True" Font-Size="14pt" Width="375px" ForeColor="ForestGreen" runat="server" Text="ENTER YOUR QUERY HERE:-" style="vertical-align: middle; text-align: left"></asp:Label>
                
               
               </td>
               <td style="width: 548px"> 
                                  
                <asp:TextBox ID="txtRequest" runat="server" Font-Bold="true" Font-Size="15pt" TextMode="MultiLine" style="width: 280px" ></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="rqfvQuery" ControlToValidate="txtRequest"  runat="server" ErrorMessage="Query Field Cannot be Left Blank"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
        
        <tr>
                <td align="right">
                <br />
               
                    
                    <asp:Button ID="btnSubmit" runat="server" Font-Bold="true" ForeColor="floralwhite" BackColor="crimson" Text="SUBMIT" OnClick="btnSubmit_Click" />
                </td>
                <td align="left" style="width: 548px">
                    
                <br />
              
                   <asp:Button ID="btnCancel" runat="server"  Font-Bold="true" ForeColor="floralwhite" BackColor="crimson" CausesValidation="false"  Text="CANCEL" OnClick="btnCancel_Click" />&nbsp;
                   
                </td>
        </tr>
    </table>
</asp:Content>


