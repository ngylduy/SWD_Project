using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class Appointment
    {
        public Appointment()
        {
            Treatments = new HashSet<Treatment>();
        }

        public string AppointmentId { get; set; } = null!;
        public string? ClinicId { get; set; }
        public DateTime? AppointmentDate { get; set; }
        public string? DoctorId { get; set; }
        public string? ServiceId { get; set; }
        public string? PatientId { get; set; }

        public virtual Doctor? Doctor { get; set; }
        public virtual Patient? Patient { get; set; }
        public virtual Service? Service { get; set; }
        public virtual ICollection<Treatment> Treatments { get; set; }
    }
}
