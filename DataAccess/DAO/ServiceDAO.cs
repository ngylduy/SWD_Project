using BusinessObject.Models;

namespace DataAccess.DAO;

public class ServiceDAO
{
    private static ServiceDAO instance = null;
    private static readonly object instanceLock = new object();
    private readonly ClinicContext _context;
    private ServiceDAO()
    {
        _context = new ClinicContext();
    }
    public static ServiceDAO Instance
    {
        get
        {
            lock (instanceLock)
            {
                if (instance == null)
                {
                    instance = new ServiceDAO();
                }
                return instance;
            }
        }
    }
    
    public IEnumerable<Service> GetAllService() => _context.Services.ToList();
    
    
}