using BusinessObject.Models;

namespace DataAccess.Repository.Interface;

public interface IDoctorRepository
{
    IEnumerable<Doctor> GetAllDoctors();
    List<Doctor> GetDoctorByClinicId(string clinicId);
}