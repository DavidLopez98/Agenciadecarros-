<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="Agencia.registro" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title></title>
 <script lenguage="javascript">
 function Password(sender, args) {
 if (args.Value.length < 4)
 args.IsValid = false;
 else
 args.IsValid = true;
 }
 </script>
 <style type="text/css">
 #form1 {
 height: 331px;
 }
 </style>
</head>
<body>
     <style>
*{
    background-image: url("https://img.autocosmos.com/noticias/fotos/preview/NAZ_2cb7f356ea954ab8b2b3aa82a86f12ba.jpg");
text-align: center;
background-position-x: center;
}


</style>
    
 <form id="form1" runat="server">
 <div>
 <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
 <br />
 <asp:TextBox ID="txtUsuario" runat="server" Height="16px" Width="120px"></asp:TextBox>
     <br />
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
ControlToValidate="txtUsuario" ErrorMessage="Nombre obligatorio"></asp:RequiredFieldValidator>
     <br />
 <br />
 </div>
 <asp:Label ID="Label6" runat="server" Text="Contraseña"></asp:Label>
 <br />
 <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
     <br />
 <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="Password"
ControlToValidate="txtPwd" ErrorMessage="La contraseña debe de tener minimo 4 caracteres"></asp:CustomValidator>
 <br />
 <br />
 <asp:Label ID="Label3" runat="server" Text="Repetir Contraseña"></asp:Label>
 <br />
 <asp:TextBox ID="txtPwd2" runat="server"></asp:TextBox>
     <br />
 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd"
ControlToValidate="txtPwd2" ErrorMessage="La contraseña no es igual"></asp:CompareValidator>
 <br />
 <br />
 <asp:Label ID="Label4" runat="server" Text="Correo Electronico"></asp:Label>
 <br />
 <asp:TextBox ID="txtEmail" runat="server" Width="129px"></asp:TextBox>
     <br />
 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
ControlToValidate="txtEmail" ErrorMessage="Direccion no valida, insera un Email valido"
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
 <br />
 <br />
 <asp:Label ID="Label5" runat="server" Text="Telefono"></asp:Label>
 <br />
 <asp:TextBox ID="txtTelefono" runat="server" Height="22px" Width="127px"></asp:TextBox>
     <br />
 <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtTelefono"
ErrorMessage="El telefono tiene que ser en numerico" Operator="DataTypeCheck"
Type="Integer"></asp:CompareValidator>
 <br />
 <br />
 <asp:Label ID="lblresultado" runat="server" Text="Label"></asp:Label>
     <br />
     <br />
 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrarse" />
 <br />
 <br />


                     <asp:HyperLink  onclick="alert('Gracias por registrarse, en caso de que no fue asi intentelo de nuevo, nos importa mucho su informacion')" ID="HyperLink1"  runat ="server" NavigateUrl="~/Login.aspx">Volver a Login</asp:HyperLink>

 </form>
</body>
