using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agencia
{
    public partial class todos : System.Web.UI.Page
    {

        public string precioTotal;

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            decimal final = 0;
            decimal marca = 0;
            decimal color = 0;
            decimal año = 0;

            año = decimal.Parse(ddlaño.SelectedValue);
            marca = decimal.Parse(ddlmarca.SelectedValue);
            color = decimal.Parse(ddlcolor.SelectedValue);



            final += marca + color + año;
            lblprecio.Text = "<h1> El precio final es $" + final + ".</h1>";
        }

        public void RealizarCompra(object sender, EventArgs e)
        {
            String cadenaCon;
            String cadenaSql;
            SqlConnection cn;
            SqlCommand cmd;

            //Obtenemos el precio de los combos a seleccionar para almacenarlos en variables
            int precioMarca = Convert.ToInt32(ddlmarca.SelectedValue);
            int precioColor = Convert.ToInt32(ddlcolor.SelectedValue);
            int precioAño = Convert.ToInt32(ddlaño.SelectedValue);

            //Calculamos el precio total a partir de las tres variables donde obtuvimos los valores y todo eso lo almacenados en variable int
            int precioCalculado = precioMarca + precioColor + precioAño;
            cadenaCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\david\\OneDrive\\Desktop\\agencia-pw\\Agencia\\App_Data\\carros.mdf;Integrated Security=True";
            //Hacemos el insert a la tabla vehiculo tomando como values las variables anteriores
            cadenaSql = "Insert into VehiculosYaVendidos";
            cadenaSql += " values('" + precioMarca + "',";
            cadenaSql += "'" + precioColor + "',";
            cadenaSql += "'" + precioAño + "',";
            cadenaSql += "'" + precioCalculado + "')";
            cn = new SqlConnection(cadenaCon);
            try
            {
                //Convertimos el precio total a string para concatenarlo al valor del label
                string precioAString = precioCalculado.ToString();
                //precioTotal = precioAString;
                cn.Open();
                cmd = new SqlCommand(cadenaSql, cn);
                cmd.ExecuteNonQuery();

                //Mostramos el precio total
                lblprecio.Text = precioAString;
                //lblprecio.text = "error en compra. ";
                //limpiarcajas();
            }
            catch (Exception ex)
            {
                lblprecio.Text = "Error en el registro." + ex.Message;
            }
            finally
            {
                cn.Close();
            }
            //var consultarPrecio = lblprecio.Text;
            //int PrecioTotalInt = Convert.ToInt32(consultarPrecio);
            //precio
            //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert", "alert('msg');", true);

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //public void limpiarcajas()
        //{
        //    ddlaño.SelectedValue = "";
        //    ddlcolor.SelectedValue = "";
        //    ddlmarca.SelectedValue = "";
        //    lblprecio.Text = "";
        ///*------------OPERACION DE PRECIOS------*/
        //decimal final = 0;
        //    decimal año = 0;
        //    decimal marca = 0;
        //    decimal color = 0;

        //    año = decimal.Parse(ddlaño.SelectedValue);
        //    marca = decimal.Parse(ddlmarca.SelectedValue);
        //    color = decimal.Parse(ddlcolor.SelectedValue);


        //    final += año + marca + color;
        //    lblprecio.Text = "<h1> El precio final es $" + final + ".</h1>";
        //}
    }

}

