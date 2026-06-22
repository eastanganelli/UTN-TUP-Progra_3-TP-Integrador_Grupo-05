using System;
using System.Collections.Generic;
using System.Text;

namespace Entidades
{
    public class Paciente
    {
        Paciente() { }

        public int IdPaciente { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Sexo { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string Estado { get; set; }


    }
}
