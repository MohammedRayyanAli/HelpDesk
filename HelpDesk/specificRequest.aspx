<%@ Page Language="C#" MasterPageFile="~/adminMaster.master" Title=" Specific Request" AutoEventWireup="true" CodeBehind="specificRequest.aspx.cs" Inherits="HelpDesk.specificRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table width="100%">
            <tr align="center">
                        <td align="center" colspan="2" style="text-decoration:underline; font-size:larger; font-weight:bold; font-family:Bookman Old Style;">
                               
                                
                                     <h3 style="color:Teal">   SPECIFIC REQUEST DETAILS </h3>
                               
                               
                        </td>
            </tr>
    <tr>
            <td align="right">
                <asp:Label ID="lblQuery" runat="server" Width="150px" Font-Bold="true" Text="Query: " style="vertical-align: middle; text-align:left;"></asp:Label>
            </td>
            
            <td align="left">
                
              
                 <asp:Label ID="lblQ"  runat="server"  Text=""></asp:Label>
             </td>
    </tr>
    
    <tr>
    
              <td align="right">
                <asp:Label ID="lblQcategory" runat="server" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align:left" Text="Category: "></asp:Label>
              </td>
            
            <td align="left">
                    <asp:Label ID="lblCat" runat="server" Text=""></asp:Label>
                   
            </td>
    </tr>
    
    
    
     <tr>
    
              <td align="right">
                <asp:Label ID="lblReqDept" runat="server" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align:left" Text="Req Department"></asp:Label>
              </td>
            
            <td align="left">
                    <asp:Label ID="lblReqDeptvalue" runat="server" Text=""></asp:Label>
                   
            </td>
    </tr>
    
    
    
    
    <tr>
    
             <td align="right">
                <asp:Label ID="lblfname" runat="server" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align:left;" Text="First Name: "></asp:Label>
            </td>
    
            <td align="left">
                
                    <asp:Label ID="lblFnamevalue" runat="server" Text=""></asp:Label>
                
                   
            </td>
    </tr>
    
    <tr>
    
                 <td align="right">
                        <asp:Label ID="lblLname" runat="server" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align:left" Text="Last Name: "></asp:Label>
                </td>
    
            <td align="left">
                    <asp:Label ID="lblLnamevalue" runat="server" Text=""></asp:Label>
                   
            </td>
    </tr>
    
    
     <tr>
    
                 <td align="right">
                        <asp:Label ID="lblStudDept" runat="server" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align:left" Text="Student Dept"></asp:Label>
                </td>
    
            <td align="left">
                    <asp:Label ID="lblStudDeptVal" runat="server" Text=""></asp:Label>
                   
            </td>
    </tr>
    
    
    
    <tr>
    
             <td align="right">
                <asp:Label ID="lblEmail" runat="server" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align:left;" Text="Email-Address: "></asp:Label>
            </td>
    
    
        <td align="left">
            <asp:Label ID="lblEmailValue" runat="server" Text=""></asp:Label>
           
         </td>
   </tr>
   
   <tr>
   
             <td align="right">
                <asp:Label ID="lblSem" runat="server" Width="150px" Font-Bold="true" style="vertical-align: middle; text-align:left;" Text="Semester: "></asp:Label>
            </td>
                
            <td align="left">   
                <asp:Label ID="lblSemvalue" runat="server" Text=""></asp:Label>
           <%-- <asp:TextBox ID="TexSem" ReadOnly="true" runat="server"></asp:TextBox> --%>
               </td>
    </tr>

    <tr>
        <td align="center" colspan="2" style="font-size:14pt;">
        <br />
        <br />
            Submit the request to the assignee who is related to te department.
            <br />
            <br />  
        </td>
    </tr>
    <tr align="center">
        <td align="right">
                
                <asp:Label ID="lblDept" Width="150px"  Font-Bold="true" runat="server" Text="Department Name" style="vertical-align: middle; text-align: left"></asp:Label>
                
       </td>
       <td align="left">
                <asp:DropDownList ID="ddlDept" runat="server" DataSourceID="dsDepartment" DataValueField="department" AutoPostBack="true"    > </asp:DropDownList>
                <asp:SqlDataSource ID="dsDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn%>" SelectCommand= "Select department from department" ></asp:SqlDataSource>
               
            </td>
    </tr>
    <tr align="center">
        <td align="right">
                
                <asp:Label ID="lblAssignee"  Width="150px" Font-Bold="true"  runat="server" Text="Assignee Name" style="vertical-align: middle; text-align: left"></asp:Label>
                
       </td>
       <td align="left">
                <asp:DropDownList ID="ddlAssignee" Width="130px"  runat="server" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="FirstName"     > </asp:DropDownList>
                <asp:SqlDataSource  ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConnectionString %>"
                    SelectCommand="SELECT assigneeLogin.FirstName FROM assigneeLogin  WHERE (assigneeLogin.department = @department)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlDept" Name="department" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
              
       </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Button ID="btnSubmit" runat="server" ForeColor="floralwhite" BackColor="crimson" Font-Bold="true" Text="Assign the task" OnClick="btnSubmit_Click" Width="190px" />
        </td>
    </tr>
    
</table>
</asp:Content>


