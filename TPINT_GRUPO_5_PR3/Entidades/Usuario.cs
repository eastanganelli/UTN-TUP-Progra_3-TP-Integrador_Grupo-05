using System;
using System.Collections.Generic;
using System.Text;

namespace Entidades {
    public class Usuario {
        private int id_usuario;
        private string username;
        private string password;
        private string tipo;
        private int id_medico;
        private bool activo;
        public Usuario() {
            this.id_usuario = 0;
            this.username = "";
            this.password = "";
            this.tipo = "";
            this.id_medico = 0;
            this.activo = false;
        }
        public Usuario(int id_usuario, string username, string password) {
            this.id_usuario = id_usuario;
            this.username = username;
            this.password = password;
            this.tipo = "";
            this.id_medico = 0;
            this.activo = false;
        }
        public Usuario(int id_usuario, string username, string password, string tipo, int id_medico, bool activo) {
            this.id_usuario = id_usuario;
            this.username = username;
            this.password = password;
            this.tipo = tipo;
            this.id_medico = id_medico;
            this.activo = activo;
        }
        public int IDUsuario { get => id_usuario; set => id_usuario = value; }
        public string NombreUsuario { get => username; set => username = value; }
        public string Contrasenya { get => password; set => password = value; }
        public string Rol { get => tipo; set => tipo = value; }
        public int IDMedico { get => id_medico; set => id_medico = value; }
        public bool Estado { get => activo; set => activo = value; }
    }
}
