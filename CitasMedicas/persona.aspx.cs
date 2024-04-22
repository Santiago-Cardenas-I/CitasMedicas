using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CitasMedicas.Models;

namespace CitasMedicas
{
    public partial class persona : System.Web.UI.Page
    {
        private List<Persona> listaPersonas = new List<Persona>();

        protected void Limpiar()
        {
            txtID.Text = string.Empty;
            txtApellido.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtCorreo.Text = string.Empty;
            txtCelular.Text = string.Empty;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5] {
                    new DataColumn("Id", typeof(int)),
                    new DataColumn("Apellido", typeof(string)),
                    new DataColumn("Nombre", typeof(string)),
                    new DataColumn("Celular", typeof(string)),
                    new DataColumn("Correo", typeof(string))
                    });
                ViewState["Personas"] = dt;
            }

        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar ();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtID.Text);
            string apellido = txtApellido.Text;
            string nombre = txtNombre.Text;
            string celular = txtCelular.Text;
            string correo = txtCorreo.Text;

            Persona persona1 = new Persona(id, nombre, apellido, celular, correo);

            listaPersonas.Add(persona1);

            DataTable dt = (DataTable)ViewState["Personas"];
            dt.Rows.Add(id, apellido, nombre, celular, correo);
            ViewState["Personas"] = dt;

            GridViewPersonas.DataSource = dt;
            GridViewPersonas.DataBind();
        }
    }
}