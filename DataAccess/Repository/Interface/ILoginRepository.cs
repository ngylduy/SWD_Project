using BusinessObject.Models;

namespace DataAccess.Repository.Interface
{
    public interface ILoginRepository
    {
        Patient PatientLogin(string phone, string password);
        Doctor DoctorLogin(string phone, string password);
        staff StaffLogin(string phone, string password);
    }
}
