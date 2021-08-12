<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NuestrosVehiculos.aspx.cs" Inherits="Agencia.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type"
    <a href="NuestrosVehiculos.aspx">NuestrosVehiculos.aspx</a> content="text/html; charset=utf-8"/>
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
          <h2>  AQUI SE ENCUENTRAN LOS VEHICULOS, SU COLOR Y SU MODELO DE AÑO.</h2>
            <h2>  
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True" Width="735px">
                    <Columns>
                        <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                        <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                        <asp:BoundField DataField="Año" HeaderText="Año" SortExpression="Año" />
                        <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Marca], [Color], [Año], [TOTAL] FROM [NuestrosVehiculos]"></asp:SqlDataSource>
            </h2>
&nbsp;&nbsp;
            <br />
           <P> LOS PRECIOS DE CADA UNO SE ENCUENTRAN EN LA VENTANA DONDE REALISAS TU COMPRA DE VEHICULO.</P> <br />
             <style>
p{
background: WHITE;
    text-align: center;
}
</style>
            <br />
            <asp:HyperLink  ID="HyperLink3" runat="server" NavigateUrl="~/todos.aspx">Volver a Pagina de compras</asp:HyperLink>


            <br />
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Login.aspx">Salir de la agencia</asp:HyperLink>
        </div>
    </form>
</body>
</html>
