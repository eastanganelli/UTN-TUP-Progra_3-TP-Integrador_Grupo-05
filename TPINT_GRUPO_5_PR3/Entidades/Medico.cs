using System;
using System.Collections.Generic;
using System.Text;

namespace Entidades
{
    public class Medico
    {
        private int id_medico;
        private int id_persona;
        private string legajo;
        private int id_especialidad;
        private bool activo;
        public Medico()
        {
            this.id_medico = 0;
            this.id_persona = 0;
            this.legajo = string.Empty;
            this.id_especialidad = 0;
            this.activo = false;
        }
        public Medico(int id_medico, int id_persona, string legajo, int id_especialidad, bool activo)
        {
            this.id_medico = id_medico;
            this.id_persona = id_persona;
            this.legajo = legajo;
            this.id_especialidad = id_especialidad;
            this.activo = activo;
        }
        public int IDMedico { get => id_medico; set => id_medico = value; }
        public int IDPersona { get => id_persona; set => id_persona = value; }
        public string Legajo { get => legajo; set => legajo = value; }
        public int IDEspecialidad { get => id_especialidad; set => id_especialidad = value; }
        public bool Estado { get => activo; set => activo = value; }

        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Especialidad { get; set; }
    }
}
