using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace login1
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["1"].ConnectionString;
            SqlConnection sqlConectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("SP_ValidarUsuario", sqlConectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@Correo_electronico", SqlDbType.VarChar, 50).Value = tbUsuario.Text;
            cmd.Parameters.Add("@Contrasena", SqlDbType.VarChar, 50).Value = tbPassword.Text;

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Agregar session de usuario 
                Response.Redirect("index.aspx");
            }
            cmd.Connection.Close();
        }
    }
}