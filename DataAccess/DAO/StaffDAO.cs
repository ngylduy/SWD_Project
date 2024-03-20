using BusinessObject.Models;

namespace DataAccess.DAO
{
    public class StaffDAO
    {
        private static StaffDAO instance = null;
        private static readonly object instanceLock = new object();
        private readonly ClinicContext _context;
        private StaffDAO()
        {
            _context = new ClinicContext();
        }
        public static StaffDAO Instance
        {
            get
            {
                lock (instanceLock)
                {
                    if (instance == null)
                    {
                        instance = new StaffDAO();
                    }
                    return instance;
                }
            }
        }

        public IEnumerable<staff> GetAllStaff() => _context.staff.ToList();

        public List<staff> GetStaffByClinicId(string clinicId)
        {
            var staff = _context.staff.Where(d => d.ClinicId == clinicId).ToList();
            return staff;
        }
    }
}
