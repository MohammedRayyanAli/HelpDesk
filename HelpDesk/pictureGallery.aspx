<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="pictureGallery.aspx.cs" Inherits="HelpDesk.pictureGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" >
        <tr align="center" style="text-decoration:underline; color:Purple;; font-weight:bolder; font-family:Curlz MT; font-size: 18pt;">
        <td>
        
        
        
                   <h2>  PICTURES OF U.V.C.E CAMPUS</h2>
        </td>
        </tr>
             <tr>
                           
                    <td style="color:Blue; text-decoration:underline;">
                    <br />
                    <br />
                            <asp:Image ID="Image1" ToolTip="V.V.P" runat="server" Width="25%" Height="39%" ImageUrl="~/images/pics/uvceback.jpg"/>
                            <br />
                            <br />
                            ROCK GARDEN VIEW OF U.V.C.E
                            
                             
                    </td>
                    
              </tr>
              
            <tr>
           
                <td align="center" style="color:Blue; text-decoration:underline;">
                    <asp:ImageButton ID="imgVvp4" ImageUrl="~/images/pics/uvce4.JPG" Width="25%" Height="39%" runat="server" />
                    <br />
                    <br />
                    THE FRONT VIEW OF U.V.C.E
                </td>
            </tr>
            
            
       
        
        <tr>
            <td align="left" style="width: 861px; color:Blue; text-decoration:underline;">
                    <br />
                    <br />
                    
                    <asp:Image ID="Image2" runat="server" Width="25%" Height="39%" ImageUrl="~/images/pics/library.png"/>
                <br />
                <br />
                
                LIBRARY OF U.V.C.E
                </td>
                
                
               <%-- <td align="right" style="">
            
                   
                    
                <asp:Image ID="imgLibrary" runat="server" Width="25%" Height="30%" ImageUrl="~/images/pics/library.jpg.JPG"/>
                <br />
                <br />
               
            </td>
            --%>
            
         </tr>
                   
        
        <tr>
        
            <td style="width: 1047px ; color: Blue;  text-decoration:underline;" align="center">
               <br />
               <br />
               
                <asp:Image ID="Image3" runat="server" Width="25%" Height="39%" ImageUrl="~/images/pics/electrical.jpg" />
                <br />
                <br />
                 U.V.C.E
                
            </td>
            
        </tr>
        
    </table> 

</asp:Content>


