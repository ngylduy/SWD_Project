using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class Doctor
    {
        public Doctor()
        {
            Appointments = new HashSet<Appointment>();
            DoctorSchedules = new HashSet<DoctorSchedule>();
        }

        public string DoctorId { get; set; } = null!;
        public string? DoctorName { get; set; }
        public string? PhoneNumber { get; set; }
        public bool? Gender { get; set; }
        public string? ClinicId { get; set; }

        public virtual Clinic? Clinic { get; set; }
        public virtual ICollection<Appointment> Appointments { get; set; }
        public virtual ICollection<DoctorSchedule> DoctorSchedules { get; set; }
    }
}
