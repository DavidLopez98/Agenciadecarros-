<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="todos.aspx.cs" Inherits="Agencia.todos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>Calcula el precio</title>
</head>
<body>
     <p>
         AGENCIA<br />
            <img src="https://i0.wp.com/www.oinkoink.com.mx/wp-content/uploads/2019/06/devaluacion-autos-salen-agencia-me%CC%81xico.png?fit=836%2C469&ssl=1" alt="" style="height: 288px; width: 692px"></p>
     <style>
*{
    background-image: url("https://img.autocosmos.com/noticias/fotos/preview/NAZ_2cb7f356ea954ab8b2b3aa82a86f12ba.jpg");
text-align: center;
background-position-x: center;
}


</style>
    <form id="form1" runat="server">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourcecsDATOS" EnableModelValidation="True" Height="172px" Width="810px">
                <Columns>
                    <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                    <asp:BoundField DataField="Precio-Marca" HeaderText="Precio-Marca" SortExpression="Precio-Marca" />
                    <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                    <asp:BoundField DataField="Precio-Color" HeaderText="Precio-Color" SortExpression="Precio-Color" />
                    <asp:BoundField DataField="Año" HeaderText="Año" SortExpression="Año" />
                    <asp:BoundField DataField="Precio-Año" HeaderText="Precio-Año" SortExpression="Precio-Año" />
                    <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcecsDATOS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [NuestrosVehiculos]"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <h1> BIENVENIDO A TU AGENCIA FAVORITA</h1>
            <h1> <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/NuestrosVehiculos.aspx">NUESTROS VEHICULOS</asp:HyperLink>

            </h1>
        <h2> &nbsp;POR FAVOR, REALISA TU COMPRA PARA TU NUEVO VEHICULO </h2>
&nbsp;MARCAS DE VEHICULOS SON LAS QUE CONTAMOS<br />
            <br />
&nbsp;<asp:Label ID="Label1" runat="server" Text="ELIGE TU VEHICULO DESEADO"></asp:Label>
&nbsp;&nbsp;

        <asp:DropDownList ID="ddlmarca" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="91px" Width="287px">
            <asp:ListItem Value="70000">Mustang</asp:ListItem>
            <asp:ListItem Value="50000">NISSAN</asp:ListItem>
            <asp:ListItem Value="55000">HONDA</asp:ListItem>


        </asp:DropDownList>
            <br />
            <br />
            <br />
        <img src="https://soloautos.li.csnstatic.com/soloautos/car/private/if9txm8qvug5ipyo97m0vykcd.jpg?pxc_method=gravityfill&pxc_bgtype=self&height=725&width=1087" alt="" style="height: 192px; width: 236px"> 
    <img src="https://www.transporte.mx/wp-content/uploads/2019/08/Cual-es-el-auto-mas-barato-de-agencia-Nissan-Versa.jpg" alt="" style="height: 192px; width: 227px">
    <img src="https://buentaller.com/wp-content/uploads/vehiculos-Honda-autos-agencia-de-autos.jpg" alt="" style="height: 188px; width: 220px">

&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MUSTANG--$70,000.00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NISSAN----$50,000.00 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
        HONDA----$55,000.00<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
&nbsp;COLOR DE VEHICULOS SON LAS QUE CONTAMOS<br />

            &nbsp;&nbsp;

        <asp:DropDownList ID="ddlcolor" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="46px" Width="186px">
            <asp:ListItem Value="4000">Negro</asp:ListItem>
            <asp:ListItem Value="2000">Blanco</asp:ListItem>
            <asp:ListItem Value="10000">Plateado</asp:ListItem>
        </asp:DropDownList>
            <br />
            &nbsp;&nbsp;&nbsp;<br />
         &nbsp;<img src="https://www.elsiglodetorreon.com.mx/m/i/2017/04/927418.jpeg" alt="" style="height: 192px; width: 227px">

    <img src="https://static4.depositphotos.com/1018414/325/i/600/depositphotos_3255720-stock-photo-silver-car-on-a-white.jpg" alt="" style="height: 192px; width: 227px">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScozLy32u6RVFFW-8OWb9LWBN-SC3ERkCr1A&usqp=CAU" alt="" style="height: 188px; width: 220px">
        &nbsp;<br />
            BLANCO--$2,000.00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; PLATEADO--$10,000.00 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NEGRO--$4,000.00<br />
        <br />
        <br />
        &nbsp;MODELO DE AÑO DE VEHICULOS SON LAS QUE CONTAMOS<br />

            &nbsp;
            Dependiendo del año a eñigir, aumentara el precio del vehiculo deseado<br />
            <br />
            Año 2021 = $25,000------Año 2020 = $20,000-----Año 2015 = $10,000<br />
        <br />
        &nbsp;&nbsp;

        <asp:DropDownList ID="ddlaño" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="63px" Width="187px">
            <asp:ListItem Value="20000">2020</asp:ListItem>
            <asp:ListItem Value="10000">2015</asp:ListItem>
            <asp:ListItem Value="25000">2021</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        CALCULAR PRECIO $&nbsp;<asp:Label ID="lblprecio" runat="server" Text="Precio"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        <br />
         <asp:Button ID="Button2" runat="server" OnClick="RealizarCompra" Text="REALIZAR COMPRA" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CALCULAR PRECIO" />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                     <asp:HyperLink  onclick="alert('Gracias por su visita')" ID="HyperLink1"  runat ="server" NavigateUrl="~/Login.aspx">Volver a Login</asp:HyperLink>



    </form>
   <style> *{
background: #FFB2A2; }
   </style>
</body>
  
</html>
