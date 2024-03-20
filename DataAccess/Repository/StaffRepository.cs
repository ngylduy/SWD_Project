using BusinessObject.Models;
using DataAccess.DAO;
using DataAccess.Repository.Interface;

namespace DataAccess.Repository
{
    public class StaffRepository : IStaffRepository
    {
        public IEnumerable<staff> GetAllStaff() => StaffDAO.Instance.GetAllStaff();

        public List<staff> GetStaffByClinicId(string clinicId) => StaffDAO.Instance.GetStaffByClinicId(clinicId);
    }
}
