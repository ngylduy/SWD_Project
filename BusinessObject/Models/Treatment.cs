using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class Treatment
    {
        public string TreatmentId { get; set; } = null!;
        public string? AppointmentId { get; set; }

        public virtual Appointment? Appointment { get; set; }
    }
}
