using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class Service
    {
        public Service()
        {
            Appointments = new HashSet<Appointment>();
        }

        public string ServiceId { get; set; } = null!;
        public string? ServiceName { get; set; }
        public string? ClinicId { get; set; }

        public virtual Clinic? Clinic { get; set; }
        public virtual ICollection<Appointment> Appointments { get; set; }
    }
}
