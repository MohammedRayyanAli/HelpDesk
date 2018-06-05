<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="HelpDesk.Feedback" Title="FeedBack Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<table width="100%">
    
        <tr align="center" >
        
            <td align="center"colspan="2" style="color:Purple; font-weight:bold; text-decoration:underline; font-size: 20px;">
            
               
                
                
                
                <h2 style="text-decoration:underline; color:Green">   PLEASE PROVIDE US WITH YOUR FEEDBACK:</h2>
                <br />
                   
                
            </td>
           
        </tr>
       
        
        <tr>
       
           <td align="center" colspan="2" style="color:Blue; font-size:14pt; font-weight:bold;">
           <p> 
                Your Feedback Is Most Appreciated And Importanat To Us 
           </p>
           <br />
           
           </td> 
               
        </tr>
        
        
        <tr align="center">
                    
            <td align="right" style="color:Teal; font-size:15pt; width: 480px;">
                                FIRST NAME
            </td>
            
            <td align="left" style="height: 26px">          
            <asp:TextBox ID="txtFname" runat="server" MaxLength="40"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqfvFname" runat="server" ControlToValidate="txtFname" ErrorMessage="First Name Field Cannot Be Blank"></asp:RequiredFieldValidator>
                    
        
        </td>  
        </tr>
    
        
        <tr align="center">
        
                <td align="right" style="color:Teal; font-size:15pt; width: 480px;">
                                  LAST NAME
                </td>
                <td align="left" style="height: 26px">
                    <asp:TextBox ID="txtLname" runat="server" MaxLength="40"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqfLname" runat="server" ControlToValidate="txtLname" ErrorMessage="Last Name Field Cannot Be Blank"></asp:RequiredFieldValidator>
                </td>
           </tr>
        
        <tr align="center">
        
                    <td align="right" style="color:Teal; font-size:15pt; width: 480px;">
                        USER NAME
                    </td>
                    <td align="left" style="height: 26px">
                        <asp:TextBox ID="txtUname" MaxLength="40" runat="server"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="rqfUname" runat="server" ControlToValidate="txtUname" ErrorMessage="User Name Field Cannot Be Blank"></asp:RequiredFieldValidator>
                    </td>
           </tr>
        
        
        
         <tr align="center">
        
                <td align="right" style="color:Teal; font-size:15pt; width: 480px;">
                                  COMMENTS
                </td>
                <td align="left">
                    <asp:TextBox ID="txtComments" runat="server" MaxLength="500" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqfvFeedback" runat="server" ControlToValidate="txtComments" ErrorMessage="This Field Cannot Be Left Blank"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rgvFeedback" runat="server" ControlToValidate="txtComments" ErrorMessage="Enter Only Text Here" ValidationExpression="[a-z A-Z]+"></asp:RegularExpressionValidator>
                    
                </td>
          </tr>
       
        <tr>
        
                    <td align="right" style="width: 480px">
                    <br />
                    
                    <asp:Button ID="btnSubmitfeedback" runat="server" AccessKey="F" Text="SEND FEED BACK" OnClick="btnSubmitfeedback_Click" Font-Names="Bodoni MT Black" ForeColor="floralWhite" BackColor="crimson" Width="150px"/>
                        
                    
        
                    </td>
            
               
                    <td align="left">
                    <br />
                   
                        
                         <asp:Button ID="btnCancel" runat="server" Text="CANCEL" CausesValidation="false" Width="113px" OnClick="btnCancel_Click" Font-Names="Bodoni MT Black" BackColor="crimson" ForeColor="FloralWhite" />
                        
                    </td>
            
        </tr>
        
    </table>

</asp:Content>


