using System;
using System.Collections.Generic;
using System.Text;

namespace Entidades {
    public class Provincia {
        private int id_provincia;
        private string nombre;
        public Provincia() {
            this.id_provincia = 0;
            this.nombre = string.Empty;
        }
        public Provincia(int id_provincia, string nombre) {
            this.id_provincia = id_provincia;
            this.nombre = nombre;
        }
        public int IDProvincia { get => id_provincia; set => id_provincia = value; }
        public string Nombre { get => nombre; set => nombre = value; }
    }
}