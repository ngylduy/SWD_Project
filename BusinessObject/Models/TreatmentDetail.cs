using System;
using System.Collections.Generic;

namespace BusinessObject.Models
{
    public partial class TreatmentDetail
    {
        public string? TreatmentId { get; set; }
        public string? MedicineId { get; set; }
        public int? Quantity { get; set; }

        public virtual Medicine? Medicine { get; set; }
        public virtual Treatment? Treatment { get; set; }
    }
}
