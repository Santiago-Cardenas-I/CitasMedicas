using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CitasMedicas.Models
{
    public class Persona
    {
        private int id;
        private string nombre;
        private string apellido;
        private string cedula;
        private string correo;

        public Persona(int id, string nombre, string apellido, string cedula, string correo)
        {
            this.id = id;
            this.nombre = nombre;
            this.apellido = apellido;
            this.cedula = cedula;
            this.correo = correo;

        }

        public int Id { get => id; set => id = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Cedula { get => cedula; set => cedula = value; }
        public string Correo { get => correo; set => correo = value; }

        // crear contructor


    }
}