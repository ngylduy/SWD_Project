using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class staff
    {
        public string StaffId { get; set; } = null!;
        public string? StaffName { get; set; }
        public string? PhoneNumber { get; set; }
        public bool? Gender { get; set; }
        public string? ClinicId { get; set; }

        public virtual Clinic? Clinic { get; set; }
    }
}
