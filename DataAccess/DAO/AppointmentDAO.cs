using BusinessObject.Models;
using Microsoft.EntityFrameworkCore;

namespace DataAccess.DAO
{
    public class AppointmentDAO
    {
        private static AppointmentDAO instance = null;
        private static readonly object instanceLock = new object();
        private readonly ClinicContext _context;
        private AppointmentDAO()
        {
            _context = new ClinicContext();
        }
        public static AppointmentDAO Instance
        {
            get
            {
                lock (instanceLock)
                {
                    if (instance == null)
                    {
                        instance = new AppointmentDAO();
                    }
                    return instance;
                }
            }
        }

        public void CreateAppointment(Appointment appointment)
        {
            try
            {
                appointment.Patient = _context.Patients.Find(appointment.PatientId);
                appointment.Staff = _context.staff.Find(appointment.StaffId);
                appointment.Doctor = _context.Doctors.Find(appointment.DoctorId);
                appointment.Clinic = _context.Clinics.Find(appointment.ClinicId);
                appointment.Service = _context.Services.Find(appointment.ServiceId);

                _context.Appointments.Add(appointment);
                _context.SaveChanges();
            }
            catch (System.Exception)
            {
                throw new System.Exception("Error creating appointment");
            }
        }

        public void RemoveAppoinment(Appointment appointment)
        {
            Appointment a = GetAppointmentById(appointment.AppointmentId);
            if (a != null)
            {
                _context.Appointments.Remove(a);
                _context.SaveChanges();
            }
            else
            {
                throw new Exception("The appointment doesn't exist");
            }
        }

        public void UpdateAppoinment(Appointment appointment)
        {
            Appointment a = GetAppointmentById(appointment.AppointmentId);
            if (a != null)
            {
                appointment.Patient = _context.Patients.Find(appointment.PatientId);
                appointment.Staff = _context.staff.Find(appointment.StaffId);
                appointment.Doctor = _context.Doctors.Find(appointment.DoctorId);
                appointment.Clinic = _context.Clinics.Find(appointment.ClinicId);
                appointment.Service = _context.Services.Find(appointment.ServiceId);

                _context.Entry<Appointment>(appointment).State = EntityState.Modified;
                _context.SaveChanges();
            }
            else
            {
                throw new Exception("The appointment does not exist");
            }
        }

        public Appointment GetAppointmentById(string id) => _context.Appointments.SingleOrDefault(a => a.AppointmentId == id);

        public IEnumerable<Appointment> GetAppointmentsByPatientId(string id)
        {
            try
            {
                var ap = _context.Appointments
                    .Include(a => a.Patient)
                    .Include(a => a.Staff)
                    .Include(a => a.Doctor)
                    .Include(a => a.Clinic)
                    .Include(a => a.Service)
                    .Where(a => a.PatientId == id).ToList();
                return ap;
            }
            catch (System.Exception)
            {
                throw new System.Exception("Error getting appointments");
            }
        }

        public IEnumerable<Appointment> GetAppointmentsByStaffId(string id)
        {
            try
            {
                return _context.Appointments.Include(a => a.Patient)
                    .Include(a => a.Staff)
                    .Include(a => a.Doctor).Include(a => a.Clinic)
                    .Include(a => a.Service).Where(a => a.StaffId == id).ToList();
            }
            catch (System.Exception)
            {
                throw new System.Exception("Error getting appointments");
            }
        }

    }
}
