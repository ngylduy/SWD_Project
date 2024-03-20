using BusinessObject.Models;
using Microsoft.EntityFrameworkCore;

namespace DataAccess.DAO
{
    public class PatientDAO
    {
        private static PatientDAO instance = null;
        private static readonly object instanceLock = new object();
        private readonly ClinicContext _context;
        private PatientDAO()
        {
            _context = new ClinicContext();
        }
        public static PatientDAO Instance
        {
            get
            {
                lock (instanceLock)
                {
                    if (instance == null)
                    {
                        instance = new PatientDAO();
                    }
                    return instance;
                }
            }
        }

        public IEnumerable<Patient> GetAllPatient() => _context.Patients.ToList();

        public Patient GetPatientById(string id) => _context.Patients.SingleOrDefault(m => m.Patient1 == id);
        public Patient GetPatientByPhone(string phone) => _context.Patients.SingleOrDefault(m => m.PhoneNumber == phone);

        public Patient GetPatientByPhonePassword(string phone, string password) => _context.Patients.SingleOrDefault(m =>
        m.PhoneNumber.Equals(phone) && m.Password.Equals(password));

        public void AddPatient(Patient patient)
        {
            Patient p = GetPatientByPhone(patient.PhoneNumber);
            if (p == null)
            {
                _context.Patients.Add(patient);
                _context.SaveChanges();
            }
            else
            {
                throw new Exception("This patient already exists");
            }
        }

        public void UpdatePatient(Patient patient)
        {
            Patient m = GetPatientById(patient.Patient1);
            if (m != null)
            {
                _context.Entry<Patient>(patient).State = EntityState.Modified;
                _context.SaveChanges();
            }
            else
            {
                throw new Exception("The patient does not exist");
            }
        }

        public void DeletePatient(Patient patient)
        {
            Patient p = GetPatientById(patient.Patient1);
            if (p != null)
            {
                _context.Patients.Remove(patient);
                _context.SaveChanges();
            }
            else
            {
                throw new Exception("The patient doesn't exist");
            }
        }

    }
}
