using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class Clinic
    {
        public Clinic()
        {
            Appointments = new HashSet<Appointment>();
            Doctors = new HashSet<Doctor>();
            Services = new HashSet<Service>();
            staff = new HashSet<staff>();
        }

        public string ClinicId { get; set; } = null!;
        public string? ClinicName { get; set; }

        public virtual ICollection<Appointment> Appointments { get; set; }
        public virtual ICollection<Doctor> Doctors { get; set; }
        public virtual ICollection<Service> Services { get; set; }
        public virtual ICollection<staff> staff { get; set; }
    }
}
