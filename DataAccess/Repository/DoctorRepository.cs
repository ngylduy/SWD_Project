using BusinessObject.Models;
using DataAccess.DAO;
using DataAccess.Repository.Interface;

namespace DataAccess.Repository;

public class DoctorRepository : IDoctorRepository
{
    public IEnumerable<Doctor> GetAllDoctors() => DoctorDAO.Instance.GetAllDoctor();

    public List<Doctor> GetDoctorByClinicId(string clinicId) => DoctorDAO.Instance.GetDoctorByClinicId(clinicId);
}