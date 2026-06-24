using System;
using System.Collections.Generic;
using System.Text;

namespace Entidades
{
    public class Paciente : Persona
    {
        public Paciente() { }

        public Paciente(int idPaciente, bool estado) 
        {
            IdPaciente = idPaciente;
            Estado = estado;
        }


        public int IdPaciente { get; set; }
      
        public bool Estado { get; set; }


    }
}
