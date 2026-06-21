using System;
using System.Collections.Generic;
using System.Text;

namespace Entidades {
    public class Localidad {
        private int id_localidad;
        private string nombre;
        private int id_provincia;
        public Localidad() {
            this.id_localidad = 0;
            this.nombre = string.Empty;
            this.id_provincia = 0;
        }
        public Localidad(int id_localidad, string nombre, int id_provincia) {
            this.id_localidad = id_localidad;
            this.nombre = nombre;
            this.id_provincia = id_provincia;
        }
        public int IDLocalidad { get => id_localidad; set => id_localidad = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public int IDProvincia { get => id_provincia; set => id_provincia = value; }
    }
}
