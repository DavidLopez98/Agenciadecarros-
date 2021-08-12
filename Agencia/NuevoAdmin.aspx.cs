using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agencia
{
    public partial class NuevoAdmin : System.Web.UI.Page
    {
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            String cadenaCon;
            String cadenaSql;
            SqlConnection cn;
            SqlCommand cmd;
            cadenaCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\david\\OneDrive\\Desktop\\agencia-pw\\Agencia\\App_Data\\carros.mdf;Integrated Security=True";
            cadenaSql = "Insert into UsuarioAdmin";
            cadenaSql += " values('" + txtUsuario.Text + "',";
            cadenaSql += "'" + txtPwd.Text + "',";
            cadenaSql += "'" + txtEmail.Text + "',";
            cadenaSql += "'" + txtTelefono.Text + "')";
            cn = new SqlConnection(cadenaCon);
            try
            {
                cn.Open();
                cmd = new SqlCommand(cadenaSql, cn);
                cmd.ExecuteNonQuery();
                lblresultado.Text = "Usuario Registrado. ";
                limpiarcajas();
            }
            catch (Exception ex)
            {
                lblresultado.Text = "Error en el registro." + ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }
        public void limpiarcajas()
        {
            txtUsuario.Text = "";
            txtPwd.Text = "";
            txtPwd2.Text = "";
            txtEmail.Text = "";
            txtTelefono.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtUsuario_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
