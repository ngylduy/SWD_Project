using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class Medicine
    {
        public string MedicineId { get; set; } = null!;
        public string? MedicineName { get; set; }
    }
}
