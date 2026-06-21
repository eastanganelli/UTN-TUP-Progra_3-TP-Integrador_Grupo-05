using System;
using System.Collections.Generic;
using System.Text;

namespace Entidades {
    public class HorarioMedico {
        private int id_horario;
        private int id_medico;
        private int dia_semana;
        private string hora_inicio;
        private string hora_fin;
        public HorarioMedico() {
            this.id_horario = 0;
            this.id_medico = 0;
            this.dia_semana = 0;
            this.hora_inicio = string.Empty;
            this.hora_fin = string.Empty;
        }
        public HorarioMedico(int id_horario, int id_medico, int dia_semana, string hora_inicio, string hora_fin) {
            this.id_horario = id_horario;
            this.id_medico = id_medico;
            this.dia_semana = dia_semana;
            this.hora_inicio = hora_inicio;
            this.hora_fin = hora_fin;
        }
        public int IDHorario { get => id_horario; set => id_horario = value; }
        public int IDMedico { get => id_medico; set => id_medico = value; }
        public int DiaSemana { get => dia_semana; set => dia_semana = value; }
        public string HoraInicio { get => hora_inicio; set => hora_inicio = value; }
        public string HoraFin { get => hora_fin; set => hora_fin = value; }
    }
}
