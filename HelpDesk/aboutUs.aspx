<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="aboutUs.aspx.cs" Inherits="HelpDesk.aboutUs" Title="About Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="color:Blue;">

    <tr>
        <td align="center" style="color:Green; text-decoration:underline; font-size:16pt; font-weight: bold; text-transform: uppercase;">
        
                     <h2>   Welcome to University Visvesvaraya College of Engineering </h2>
                        
        </td>
     </tr>
     
     <tr>
       
        <td align="center" style="font-size:x-large; text-align:center; font-style:italic;">
        <br />
        <br />
        <br />
         
            <p style="font-weight:bold;">   
                   University Visvesvaraya College of Engineering (UVCE) was established in 1917, 
                under the name Government Engineering College, by Bharat Ratna Sir M. Visvesvaraya, and was then affiliated to Bangalore University.
            </p>
            
            
            <p style="font-weight:bold;">
             
                    It is the fifth engineering college to be established in the country. 
                UVCE is a constituent college of Bangalore University which gives it a special status of a university.UVCE is one of the few technical institutions in the country that is vested with the status of a university.
            </p>
            
            <p style="font-weight:bold;">
            
            The College Campus is located at K R Circle, Dr Ambedkar Veedhi, Bengaluru, Karnataka 560001. 
            </p>
            <hr width="45%" style="color:Green; size:4; text-align:center" />
            
        </td>
         
     </tr>
      
        
      <tr>
            <td align="center">
        
                <br />
                <br />
                <br />
                
           <%-- &nbsp;<asp:ImageButton ID="image2" runat="server"  ImageAlign="Bottom" Width="25%" Height="30%" ImageUrl="~/images/pics/Mvc-022s.jpg" />--%>
            <asp:ImageButton ID="imgMain" runat="server" ImageUrl="~/images/pics/college.jpg"  Width="25%" Height="30%" />
        
            </td>
   
       </tr>
   
   <tr>
        <td>
            
        <br />
        
            
     </td>
   </tr>
   </table>
</asp:Content>

