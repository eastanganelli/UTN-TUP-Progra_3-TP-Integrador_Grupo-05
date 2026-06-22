using System;
using System.Collections.Generic;
using System.Text;

namespace Entidades {
    public class Turno {
        private int id_turno;
        private int id_medico;
        private int id_paciente;
        private string fecha_hora;
        private string estado;
        private string observacion;
        private bool activo;
        public Turno()
        {
            this.id_turno = 0;
            this.id_medico = 0;
            this.id_paciente = 0;
            this.fecha_hora = string.Empty;
            this.estado = string.Empty;
            this.observacion = string.Empty;
            this.activo = true;
        }
        public Turno(int id_turno, int id_medico, int id_paciente, string fecha_hora, string estado, string observacion, bool activo)
        {
            this.id_turno = id_turno;
            this.id_medico = id_medico;
            this.id_paciente = id_paciente;
            this.fecha_hora = fecha_hora;
            this.estado = estado;
            this.observacion = observacion;
            this.activo = activo;
        }
        public int IDTurno { get => id_turno; set => id_turno = value; }
        public int IDMedico { get => id_medico; set => id_medico = value; }
        public int IDPaciente { get => id_paciente; set => id_paciente = value; }
        public string FechaHora { get => fecha_hora; set => fecha_hora = value; }
        public string Estado { get => estado; set => estado = value; }
        public string Observacion { get => observacion; set => observacion = value; }
        public bool Activo { get => activo; set => activo = value; }
    }
}