using DataAccess.DAO;
using DataAccess.Repository.Interface;

namespace DataAccess.Repository
{
    public class LoginRepository : ILoginRepository
    {
        public BusinessObject.Models.Doctor DoctorLogin(string phone, string password) => LoginDAO.Instance.CheckDoctorLogin(phone, password);

        public BusinessObject.Models.Patient PatientLogin(string phone, string password) => LoginDAO.Instance.CheckPatientLogin(phone, password);

        public BusinessObject.Models.staff StaffLogin(string phone, string password) => LoginDAO.Instance.CheckStaffLogin(phone, password);
    }
}
