<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" Title="Processed Request" AutoEventWireup="true" CodeBehind="specificProcessedRequest.aspx.cs" Inherits="HelpDesk.specificProcessedRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
<tr align="center">
                        <td align="center" colspan="2" style="text-decoration:underline; font-size:larger; font-weight:bold; font-family:Bookman Old Style;">
                                <br />
                                <br />
                                        PROCESSED REQUEST DETAILS
                                <br />
                                <br />
                        </td>
            </tr>
    <tr>
            <td align="right">
                <asp:Label ID="lblQuery" runat="server" Font-Bold="true" Width="150px" Text="Query: " style="vertical-align: middle; text-align: left"></asp:Label>
            </td>
            
            <td align="left" style="width: 605px">
                
                <asp:TextBox ID="txtVal" ReadOnly="true" TextMode="MultiLine" runat="server"></asp:TextBox>
             </td>
    </tr>
    
    <tr>
    
              <td align="right">
                <asp:Label ID="lblQcategory" runat="server" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align: left"  Text="Category: "></asp:Label>
              </td>
            
            <td align="left" style="width: 605px">
                    <asp:TextBox ID="txtNext"  ReadOnly="true" runat="server"></asp:TextBox>
            </td>
    </tr>
    
     <tr>
    
              <td align="right">
                <asp:Label ID="lblSoln" runat="server" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align: left"  Text="Solution"></asp:Label>
              </td>
            
            <td align="left" style="width: 605px">
                    <asp:TextBox ID="txtSoln"  ReadOnly="true" runat="server"></asp:TextBox>
            </td>
    </tr>
    
    <tr>
    
             <td align="right">
                <asp:Label ID="lblfname" runat="server" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align: left"  Text="First Name: "></asp:Label>
            </td>
    
            <td align="left" style="width: 605px">
                
                    <asp:TextBox ID="Texfname" ReadOnly="true" runat="server"></asp:TextBox>
            </td>
    </tr>
    
    <tr>
    
                 <td align="right">
                        <asp:Label ID="lblLname" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align: left"  runat="server" Text="Last Name: "></asp:Label>
                </td>
    
            <td align="left" style="width: 605px">
                    <asp:TextBox ID="TexLname" ReadOnly="true" runat="server"></asp:TextBox>
            </td>
    </tr>
    
    
    
    <tr>
    
                 <td align="right">
                        <asp:Label ID="lblDept" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align: left"  runat="server" Text="Department"></asp:Label>
                </td>
    
            <td align="left" style="width: 605px">
                    <asp:TextBox ID="txtDept" ReadOnly="true" runat="server"></asp:TextBox>
            </td>
    </tr>
    
    
    
    
    <tr>
    
             <td align="right">
                <asp:Label ID="lblEmail" runat="server" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align: left"  Text="Email-Address: "></asp:Label>
            </td>
    
    
        <td align="left" style="width: 605px">
            <asp:TextBox ID="TexEmail" runat="server" ReadOnly="true" ></asp:TextBox>
         </td>
   </tr>
   
   <tr>
   
             <td align="right">
                <asp:Label ID="lblSem" runat="server" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align: left"  Text="Semester: "></asp:Label>
            </td>
                
            <td align="left" style="width: 605px">   
            
            <asp:TextBox ID="TexSem" ReadOnly="true" runat="server"></asp:TextBox> 
               </td>
    </tr>
            <tr>
                    <td align="center" colspan="2">

                        <asp:Button ID="btnDeletereq" runat="server" Font-Bold="true" ForeColor="floralwhite" BackColor="crimson" Text="Delete Processed Query" OnClick="btnDeletereq_Click" />
                    </td>
            </tr>
    </table>

</asp:Content>


