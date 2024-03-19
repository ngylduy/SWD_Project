using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class DoctorSchedule
    {
        public int Id { get; set; }
        public string? DoctorId { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? EndeDate { get; set; }

        public virtual Doctor? Doctor { get; set; }
    }
}
