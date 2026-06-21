using System;
using System.Collections.Generic;
using System.Text;

namespace Entidades {
    public class Especialidad {
        private int id_especialidad;
        private string nombre;
        public Especialidad() {
            this.id_especialidad = 0;
            this.nombre = string.Empty;
        }
        public Especialidad(int id_especialidad, string nombre) {
            this.id_especialidad = id_especialidad;
            this.nombre = nombre;
        }
        public int IDEspecialidad { get => id_especialidad; set => id_especialidad = value; }
        public string Nombre { get => nombre; set => nombre = value; }
    }
}
