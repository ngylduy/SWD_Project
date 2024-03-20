using BusinessObject.Models;
using DataAccess.DAO;
using DataAccess.Repository.Interface;

namespace DataAccess.Repository
{
    public class AppointmentRepository : IAppointmentRepository
    {
        public void AddAppointment(Appointment appointment) => AppointmentDAO.Instance.CreateAppointment(appointment);

        public void DeleteAppointment(Appointment appoinment) => AppointmentDAO.Instance.RemoveAppoinment(appoinment);

        public Appointment GetAppointmentById(string id) => AppointmentDAO.Instance.GetAppointmentById(id);

        public IEnumerable<Appointment> GetAppointmentsByPatientId(string id) => AppointmentDAO.Instance.GetAppointmentsByPatientId(id);

        public IEnumerable<Appointment> GetAppointmentsByStaffId(string id) => AppointmentDAO.Instance.GetAppointmentsByStaffId(id);

        public void UpdateAppointment(Appointment appoinment) => AppointmentDAO.Instance.UpdateAppoinment(appoinment);
    }
}
