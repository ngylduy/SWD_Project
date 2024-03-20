using DataAccess.Repository.Interface;
using System.Windows;

namespace ClinicManagement
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        private readonly ILoginRepository _loginRepository;
        private readonly IAppointmentRepository _appointmentRepository;
        private readonly IDoctorRepository _doctorRepository;
        private readonly IServiceRepository _serviceRepository;
        private readonly IStaffRepository _staffRepository;
        private readonly IClinicRepository _clinicRepository;
        private readonly IPatientRepository _patientRepository;

        public MainWindow(ILoginRepository loginRepository,
            IAppointmentRepository appointmentRepository,
            IDoctorRepository doctorRepository, IServiceRepository serviceRepository,
            IStaffRepository staffRepository, IClinicRepository clinicRepository
            , IPatientRepository patientRepository)
        {
            InitializeComponent();
            _loginRepository = loginRepository;
            _appointmentRepository = appointmentRepository;
            _doctorRepository = doctorRepository;
            _serviceRepository = serviceRepository;
            _staffRepository = staffRepository;
            _clinicRepository = clinicRepository;
            _patientRepository = patientRepository;
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            string phone = txtPhone.Text;
            string password = txtPassword.Password;

            if (!string.IsNullOrEmpty(phone) || !string.IsNullOrEmpty(password))
            {
                var patient = _loginRepository.PatientLogin(phone, password);
                var doctor = _loginRepository.DoctorLogin(phone, password);
                var staff = _loginRepository.StaffLogin(phone, password);



                if (patient != null)
                {
                    Hide();
                    AppointmentWindow appointmentWindow = new AppointmentWindow(patient,
                        _appointmentRepository, _doctorRepository,
                        _serviceRepository, _staffRepository, _clinicRepository);
                    /*mainWindow.ShowInTaskbar = false;
                    mainWindow.Owner = Application.Current.MainWindow;*/
                    appointmentWindow.Show();
                }
                else if (staff != null)
                {

                    Hide();
                    StaffWindow staffWindow = new StaffWindow(staff, _appointmentRepository);
                    staffWindow.Show();

                }
                else if (doctor != null)
                {
                    MessageBox.Show("Doctor logged in!");
                }
                else
                {
                    MessageBox.Show("Invalid Phone or Password!");

                }
            }
            else
            {
                MessageBox.Show("Please enter Phone and Password!");
            }
        }

        private void btnRegister_Click(object sender, RoutedEventArgs e)
        {
            Register register = new Register(_patientRepository);
            register.ShowDialog();
        }
    }
}