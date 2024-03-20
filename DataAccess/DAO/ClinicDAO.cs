using BusinessObject.Models;
using Microsoft.EntityFrameworkCore;

namespace DataAccess.DAO;

public class ClinicDAO
{
    private static ClinicDAO instance = null;
    private static readonly object InstanceLock = new object();
    private readonly ClinicContext _context;
    private ClinicDAO()
    {
        _context = new ClinicContext();
    }
    public static ClinicDAO Instance
    {
        get
        {
            lock (InstanceLock)
            {
                if (instance == null)
                {
                    instance = new ClinicDAO();
                }
                return instance;
            }
        }
    }

    public IEnumerable<Clinic> GetAllClinic() => _context.Clinics.ToList();

    public Clinic GetClinicByServiceId(string serviceId)
    {
        var clinic = _context.Clinics
            .Include(d => d.Services)
            .FirstOrDefault(d => d.Services.Any(s => s.ServiceId == serviceId));
        return clinic;
    }

}