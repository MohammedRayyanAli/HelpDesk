﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="table.aspx.cs" Inherits="HelpDesk.table" %>

<!DOCTYPE html>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <table width="100%" border="1" cellpadding="1" cellspacing="4">
                <tr>
                    <th align="center" style="width: 100px" valign="middle">
                        <asp:Label ID="Label1" runat="server" Text="OLD PASSWORD" Width="250px"></asp:Label>
                    </th>
                    <th align="center" style="width: 100px" valign="middle">
                    </th>
                    <th align="center" style="width: 100px" valign="middle">
                    </th>
                </tr>
                
                <tr>
                    <th align="center" style="width: 100px" valign="middle">
                    <asp:Label ID="Label2" runat="server" Text="NEW PASSWORD" Width="250px"></asp:Label>
                    </th>
                    <th align="center" style="width: 100px" valign="middle">
                    </th>
                    <th align="center" style="width: 100px" valign="middle">
                    </th>
                </tr>
                
                
                <tr>
                    <th align="center" style="width: 100px" valign="middle">
                    
                        <asp:Label ID="Label3" runat="server" Text="RE-TYPE PASSWORD" Width="250px"></asp:Label>
                    
                    </th>
                    
                    <th align="center" style="width: 100px" valign="middle">
                    </th>
                    
                    <th align="center" style="width: 100px" valign="middle">
                    </th>
                    
                </tr>
                
            </table>
        </div>
        
    </form>
</body>
</html>

