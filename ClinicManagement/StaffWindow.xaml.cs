using BusinessObject.Models;
using DataAccess.Repository.Interface;
using System.Windows;

namespace ClinicManagement
{
    /// <summary>
    /// Interaction logic for Staff.xaml
    /// </summary>
    public partial class StaffWindow : Window
    {
        public Object _user;
        private readonly IAppointmentRepository _appointmentRepository;

        public StaffWindow(Object user,
        IAppointmentRepository appointmentRepository)
        {
            InitializeComponent();
            _appointmentRepository = appointmentRepository;
            _user = user;
            LoadData();
        }

        private void LoadData()
        {
            if (_user is staff Staff)
            {
                lvAppoinment.ItemsSource = _appointmentRepository.GetAppointmentsByStaffId(Staff.StaffId);
            }
        }
    }
}
