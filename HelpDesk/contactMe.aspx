<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="contactMe.aspx.cs" Inherits="HelpDesk.contactMe" Title="Contact Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="100%">
    <tr>
                <td align="center">
               
                <h2 style="color:Teal; text-decoration:underline; font-family:Lucida Bright; height:100px">....CONTACT US....</h2>
                
                </td>
    </tr>
    
        <tr>
                <td align="center">
                 <asp:ImageButton   Height="200px" BorderColor="Black" ID="vvp1" runat="server" ImageUrl="~/images/pics/uvce4.jpg"/>
                </td>
            
        </tr>
        
        <tr>
            <td align="center">
            <p style=" font-size:14pt; text-decoration:underline;">
                OUR ADDRESS
            </p>
                        UVCE ENGINEERING COLLEGE<br />
                        K R Circle,<br />
                        Dr Ambedkar Veedhi, Bengaluru-360005.<br />
                        <br />
                        
                        <p style="text-decoration:underline; font-size:14pt;">
                        
                            OUR CONTACT NO'S:<br />
                        </p>
                        
                        <p style="font-size:12pt;">
                        OFFICE NUMBER:-080 2296 1803<br />
                        OUR WEBSITE:<br />
                        </p>
                            <asp:HyperLink runat="server" ID="hypWeb" ForeColor="blue">http://uvcecentenary.ac.in/</asp:HyperLink>
                        
            </td>
            
            </tr>
        
    </table>


</asp:Content>


