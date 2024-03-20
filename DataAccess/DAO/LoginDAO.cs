using BusinessObject.Models;

namespace DataAccess.DAO
{
    public class LoginDAO
    {
        private static LoginDAO instance = null;
        private static readonly object instanceLock = new object();
        private readonly ClinicContext _context;
        private LoginDAO()
        {
            _context = new ClinicContext();
        }
        public static LoginDAO Instance
        {
            get
            {
                lock (instanceLock)
                {
                    if (instance == null)
                    {
                        instance = new LoginDAO();
                    }
                    return instance;
                }
            }
        }

        public Patient CheckPatientLogin(string phone, string password) => _context.Patients.SingleOrDefault(m =>
        m.PhoneNumber.Equals(phone) && m.Password.Equals(password));

        public Doctor CheckDoctorLogin(string phone, string password) => _context.Doctors.SingleOrDefault(m =>
        m.PhoneNumber.Equals(phone) && m.Password.Equals(password));

        public staff CheckStaffLogin(string phone, string password) => _context.staff.SingleOrDefault(m =>
        m.PhoneNumber.Equals(phone) && m.Password.Equals(password));

    }
}
