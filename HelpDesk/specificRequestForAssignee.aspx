<%@ Page Language="C#" MasterPageFile="~/assigneeMaster.master" Title="Specific Request" AutoEventWireup="true" CodeBehind="specificRequestForAssignee.aspx.cs" Inherits="HelpDesk.specificRequestForAssignee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="100%">
            <tr align="center">
                        <td align="center" colspan="2" style="text-decoration:underline; font-size:larger; font-weight:bold; font-family:Bookman Old Style;">
                                <br />
                                <br />
                                        SPECIFIC REQUEST DETAILS
                                <br />
                                <br />
                        </td>
            </tr>
    <tr>
            <td align="right" style="width: 520px">
                <asp:Label ID="lblQuery" runat="server" Text="Query: " style="font-weight:bold; vertical-align: middle; text-align: left;" Width="142px"></asp:Label>
            </td>
            
            <td align="left">
                
                <asp:TextBox ID="txtVal" Font-Bold="true" ReadOnly="true" runat="server"></asp:TextBox>
             </td>
    </tr>
    
    <tr>
    
              <td align="right" style="width: 520px">
                <asp:Label ID="lblQcategory" runat="server" Text="Category:"  style="font-weight:bold; vertical-align: middle; text-align: left;" Width="142px" ></asp:Label>
              </td>
            
            <td align="left">
                    <asp:TextBox ID="txtNext" Font-Bold="true"  ReadOnly="true" runat="server"></asp:TextBox>
            </td>
    </tr>
    
    <tr>
    
             <td align="right" style="width: 520px">
                <asp:Label ID="lblfname" runat="server" Text="First Name: "   style="font-weight:bold; vertical-align: middle; text-align: left;" Width="142px"></asp:Label>
            </td>
    
            <td align="left">
                
                      <asp:TextBox ID="Texfname" Font-Bold="true" ReadOnly="true" runat="server"></asp:TextBox>
            </td>
    </tr>
    
    <tr>
    
                 <td align="right" style="width: 520px">
                        <asp:Label ID="lblLname" runat="server" Text="Last Name: "  style="font-weight:bold; vertical-align: middle; text-align: left;" Width="142px"></asp:Label>
                </td>
    
            <td align="left">
                    <asp:TextBox ID="TexLname" ReadOnly="true" Font-Bold="true"  runat="server"></asp:TextBox>
            </td>
    </tr>
    
    <tr>
    
             <td align="right" style="width: 520px">
                <asp:Label ID="lblEmail" runat="server" Text="Email-Address: " style="font-weight:bold; vertical-align: middle; text-align: left;" Width="142px"></asp:Label>
            </td>
    
    
        <td align="left">
            <asp:TextBox ID="TexEmail" runat="server" Font-Bold="true" ReadOnly="true" ></asp:TextBox>
         </td>
   </tr>
   
   
    <tr>
    
             <td align="right" style="width: 520px">
                <asp:Label ID="lblDept" runat="server" Text="Department" style="font-weight:bold; vertical-align: middle; text-align: left;" Width="142px"></asp:Label>
            </td>
    
    
        <td align="left">
            <asp:TextBox ID="txtDept" runat="server"  Font-Bold="true" ReadOnly="true" ></asp:TextBox>
         </td>
   </tr>
   
   
   
   <tr>
   
             <td align="right" style="width: 520px">
                <asp:Label ID="lblSem" runat="server" Text="Semester: "  style="font-weight:bold; vertical-align: middle; text-align: left;" Width="142px"></asp:Label>
            </td>
                
            <td align="left">   
            
            <asp:TextBox ID="TexSem" Font-Bold="true" ReadOnly="true" runat="server"></asp:TextBox> 
               </td>
    </tr>
    <tr>
        <td align="right" style="width: 520px">
            <asp:Label ID="lblAnswer"  runat="server" Text="Solution" style="font-weight:bold; vertical-align: middle; text-align: left;" Width="142px"></asp:Label>
            <br />
        </td>
        <td align="left">
            <asp:TextBox ID="txtSolution" runat="server" Font-Bold="true" TextMode="MultiLine" MaxLength="100"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqfvSoln" runat="server" ControlToValidate="txtSolution" ErrorMessage="Solution Field Cannot Remain Blank"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    
    <tr>
        <td align="center" colspan="2">
        <br />
            <asp:Button ID="btnSubmit" Font-Bold="true" runat="server" Text="Process The Task" ForeColor="floralWhite" BackColor="crimson" OnClick="btnSubmit_Click" style="vertical-align: middle; width: 250px; text-align: center" />
        </td>
    </tr>
    
</table>
</asp:Content>


