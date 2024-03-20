using BusinessObject.Models;
using DataAccess.DAO;
using DataAccess.Repository.Interface;

namespace DataAccess.Repository;

public class ServiceRepository : IServiceRepository
{
    public IEnumerable<Service> GetAllServices() => ServiceDAO.Instance.GetAllService();
}