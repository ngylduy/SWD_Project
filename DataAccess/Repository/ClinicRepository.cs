using BusinessObject.Models;
using DataAccess.DAO;
using DataAccess.Repository.Interface;

namespace DataAccess.Repository;

public class ClinicRepository : IClinicRepository
{
    public IEnumerable<Clinic> GetAllClinics() => ClinicDAO.Instance.GetAllClinic();

    public Clinic GetClinicByServiceId(string serviceId) => ClinicDAO.Instance.GetClinicByServiceId(serviceId);
}