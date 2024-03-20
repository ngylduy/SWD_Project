using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class Patient
    {
        public Patient()
        {
            Appointments = new HashSet<Appointment>();
        }

        public string Patient1 { get; set; } = null!;
        public string? PatientName { get; set; }
        public bool? Gender { get; set; }
        public DateTime? DateOfBirth { get; set; }
        public string? PhoneNumber { get; set; }
        public string? Address { get; set; }
        public string? Password { get; set; }

        public virtual ICollection<Appointment> Appointments { get; set; }
    }
}
