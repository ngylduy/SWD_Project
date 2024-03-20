using BusinessObject.Models;

namespace DataAccess.Repository.Interface;

public interface IServiceRepository
{
    IEnumerable<Service> GetAllServices();
}