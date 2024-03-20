using BusinessObject.Models;

namespace DataAccess.Repository.Interface
{
    public interface IStaffRepository
    {
        IEnumerable<staff> GetAllStaff();
        List<staff> GetStaffByClinicId(string clinicId);
    }
}
