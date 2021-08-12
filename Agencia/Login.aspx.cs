using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Agencia
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            String cadenaCon;
            String cadenaSql;
            SqlConnection cn;
            SqlCommand cmd;
            SqlDataReader dr;

            cadenaCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\david\\OneDrive\\Desktop\\agencia-pw\\Agencia\\App_Data\\carros.mdf;Integrated Security=True";
            cadenaSql = "Select usuario from clientes";
            cadenaSql += " where usuario= '" + txtusuario.Text + "' ";
            cadenaSql += "and password='" + txtpassword.Text + "' ";
            cn = new SqlConnection(cadenaCon);
            try
            {
                cn.Open();
                cmd = new SqlCommand(cadenaSql, cn);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                    this.Response.Redirect("todos.aspx");
                else
                    lblnoregistrado.Text = "<b>Usuario no registrado<b>";
            }
            catch (Exception ex)
            {
                lblnoregistrado.Text = ex.Message;

            }
            finally
            {
                cn.Close();
            }

        }
    }
}
