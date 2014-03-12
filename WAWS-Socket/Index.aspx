<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WAWS_Socket.Index" %>
<%@ Import Namespace="System.Net.Sockets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

<%
try
{
     Socket socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
     socket.Connect("ftp.free.fr", 21);
     Response.Write(socket.Available + " bytes available");
}
catch (Exception ex)
{
     Response.Write(ex.ToString());
}
%>

</body>
</html>
