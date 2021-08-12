<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrador-Usuarios.aspx.cs" Inherits="Agencia.Administrador_Usuarios" %>

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
p{
    background:WHITE;
}
</style>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
           <P> NUESTROS CLIENTES</P><br />
            <br />
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceClientes0" EnableModelValidation="True" Width="683px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceClientes0" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [clientes]"></asp:SqlDataSource>
            <br />
            <br />
          <P>  NUESTROS VEHICULOS</P><br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceCarros" EnableModelValidation="True" Width="682px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                    <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                    <asp:BoundField DataField="Año" HeaderText="Año" SortExpression="Año" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceCarros" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [NuestrosVehiculos]"></asp:SqlDataSource>
            <br />
            <P>VENTA DE NUESTROS VEHICULOS</P>
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableModelValidation="True" Width="382px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
                    <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                    <asp:BoundField DataField="año" HeaderText="año" SortExpression="año" />
                    <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [VehiculosYaVendidos]"></asp:SqlDataSource>
            <br />
            <br />
           <P> INFORMACION DE TODOS NUESTROS VEHICULOS</P><br />
            <asp:GridView ID="GridView4" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True" Width="744px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                    <asp:BoundField DataField="Precio-Marca" HeaderText="Precio-Marca" SortExpression="Precio-Marca" />
                    <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                    <asp:BoundField DataField="Precio-Color" HeaderText="Precio-Color" SortExpression="Precio-Color" />
                    <asp:BoundField DataField="Año" HeaderText="Año" SortExpression="Año" />
                    <asp:BoundField DataField="Precio-Año" HeaderText="Precio-Año" SortExpression="Precio-Año" />
                    <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [NuestrosVehiculos]"></asp:SqlDataSource>
            <br />
            <br />
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/NuevoAdmin.aspx">Registrar Nuevo Admin</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
                     <asp:HyperLink  onclick="alert('Gracias por su visita')" ID="HyperLink1"  runat ="server" NavigateUrl="~/Login.aspx">Volver a Login</asp:HyperLink>

            <br />
            <br />
        </div>
    </form>
</body>
</html>
