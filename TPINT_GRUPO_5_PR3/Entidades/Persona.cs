using System;
using System.Collections.Generic;
using System.Text;

namespace Entidades {
    public class Persona {
        private int id_persona;
        private string dni;
        private string nombre;
        private string apellido;
        private char sexo;
        private string nacionalidad;
        private DateTime fecha_nacimiento;
        private string direccion;
        private int id_localidad;
        private string email;
        private string telefono;
        // Solo para mostrar
        public int IDProvincia { get; set; }
        public Persona() {
            this.dni = string.Empty;
            this.id_persona = 0;
            this.nombre = string.Empty;
            this.apellido = string.Empty;
            this.sexo = ' ';
            this.nacionalidad = string.Empty;
            this.fecha_nacimiento = DateTime.MinValue;
            this.direccion = string.Empty;
            this.id_localidad = 0;
            this.email = string.Empty;
            this.telefono = string.Empty;
        }
        public Persona(string dni, int id_persona, string nombre, string apellido, char sexo, string nacionalidad, DateTime  fecha_nacimiento, string direccion, int id_localidad, string email, string telefono) {
            this.dni = dni;
            this.id_persona = id_persona;
            this.nombre = nombre;
            this.apellido = apellido;
            this.sexo = sexo;
            this.nacionalidad = nacionalidad;
            this.fecha_nacimiento = fecha_nacimiento;
            this.direccion = direccion;
            this.id_localidad = id_localidad;
            this.email = email;
            this.telefono = telefono;
        }
        public string DNI { get => dni; set => dni = value; }
        public int IDPersona { get => id_persona; set => id_persona = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public char Sexo { get => sexo; set => sexo = value; }
        public string Nacionalidad { get => nacionalidad; set => nacionalidad = value; }
        public DateTime FechaNacimiento { get => fecha_nacimiento; set => fecha_nacimiento = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public int IDLocalidad { get => id_localidad; set => id_localidad = value; }
        public string Email { get => email; set => email = value; }
        public string Telefono { get => telefono; set => telefono = value; }
    }
}
