using BusinessObject.Models;

namespace DataAccess.Repository.Interface
{
    public interface IPatientRepository
    {
        IEnumerable<Patient> GetAllPatients();
        void AddPatient(Patient member);
        void UpdatePatient(Patient member);
        void DeletePatient(Patient member);
        Patient GetPatientById(string id);
        Patient GetPatientByPhone(string phone);
        Patient GetPatientByPhonePassword(string phone, string password);
    }
}
