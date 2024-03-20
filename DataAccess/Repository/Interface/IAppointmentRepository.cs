using BusinessObject.Models;

namespace DataAccess.Repository.Interface
{
    public interface IAppointmentRepository
    {
        void AddAppointment(Appointment appointment);

        IEnumerable<Appointment> GetAppointmentsByPatientId(string id);

        IEnumerable<Appointment> GetAppointmentsByStaffId(string id);
        void UpdateAppointment(Appointment appoinment);
        void DeleteAppointment(Appointment appoinment);
        Appointment GetAppointmentById(string id);
    }
}
