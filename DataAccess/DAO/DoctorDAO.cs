using BusinessObject.Models;

namespace DataAccess.DAO;

public class DoctorDAO
{
    private static DoctorDAO instance = null;
    private static readonly object instanceLock = new object();
    private readonly ClinicContext _context;
    private DoctorDAO()
    {
        _context = new ClinicContext();
    }
    public static DoctorDAO Instance
    {
        get
        {
            lock (instanceLock)
            {
                if (instance == null)
                {
                    instance = new DoctorDAO();
                }
                return instance;
            }
        }
    }

    public IEnumerable<Doctor> GetAllDoctor() => _context.Doctors.ToList();

    public List<Doctor> GetDoctorByClinicId(string clinicId)
    {
        var doctor = _context.Doctors.Where(d => d.ClinicId == clinicId).ToList();
        return doctor;
    }


}