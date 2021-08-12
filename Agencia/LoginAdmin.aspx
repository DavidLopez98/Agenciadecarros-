<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="Agencia.LoginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <style>
*{
    background-image: url("https://img.autocosmos.com/noticias/fotos/preview/NAZ_2cb7f356ea954ab8b2b3aa82a86f12ba.jpg");
    text-align: center;
}
</style>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            Usuario Del Administrador<br />
            <br />
            <asp:TextBox ID="txtusuario" runat="server" ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
            <br />
            <asp:TextBox ID="txtpassword" runat="server"  ></asp:TextBox>


            <br />
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Validar" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">IR A PAGINA PRINCIPAL</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="lblnoregistrado" runat="server" Text="Registrado"></asp:Label>
    <br />
        <br />
        <br />
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </form>
</html>
