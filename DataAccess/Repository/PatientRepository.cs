using BusinessObject.Models;
using DataAccess.DAO;
using DataAccess.Repository.Interface;

namespace DataAccess.Repository
{
    public class PatientRepository : IPatientRepository
    {
        public void AddPatient(Patient member) => PatientDAO.Instance.AddPatient(member);

        public void DeletePatient(Patient member) => PatientDAO.Instance.DeletePatient(member);

        public IEnumerable<Patient> GetAllPatients() => PatientDAO.Instance.GetAllPatient();

        public Patient GetPatientById(string id) => PatientDAO.Instance.GetPatientById(id);

        public Patient GetPatientByPhone(string phone) => PatientDAO.Instance.GetPatientByPhone(phone);

        public Patient GetPatientByPhonePassword(string phone, string password) => PatientDAO.Instance.GetPatientByPhonePassword(phone, password);

        public void UpdatePatient(Patient member) => PatientDAO.Instance.UpdatePatient(member);
    }
}
