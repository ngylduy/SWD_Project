using BusinessObject.Models;

namespace DataAccess.Repository.Interface;

public interface IClinicRepository
{
    IEnumerable<Clinic> GetAllClinics();
    Clinic GetClinicByServiceId(string serviceId);
}