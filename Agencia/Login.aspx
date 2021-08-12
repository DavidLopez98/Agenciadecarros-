<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Agencia.Login" %>
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
            <br />
            <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
            <br />
            <asp:TextBox ID="txtusuario" runat="server" ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Contraseña"   type="password" name="password" ></asp:Label>
            <br />
            <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Validar" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registro.aspx">Registrarse</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="lblnoregistrado" runat="server" Text="Registrado"></asp:Label>
    <br />
        <br />
        <br />
                   <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UsuarioRegistrados.aspx">Usuarios Registrados</asp:HyperLink>
    
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LoginAdmin.aspx">Usuario Administrador</asp:HyperLink>
        <br />
        <br />
        <br />
    
    </form>
</body>
</html>
