using BusinessObject.Models;
using DataAccess.Repository.Interface;
using System.Windows;

namespace ClinicManagement;

/// <summary>
/// Interaction logic for Appointment.xaml
/// </summary>
public partial class AppointmentWindow : Window
{
    public Object _user;
    private readonly IAppointmentRepository _appointmentRepository;
    private readonly IDoctorRepository _doctorRepository;
    private readonly IServiceRepository _serviceRepository;
    private readonly IStaffRepository _staffRepository;
    private readonly IClinicRepository _clinicRepository;

    public AppointmentWindow(Object user,
        IAppointmentRepository appointmentRepository,
        IDoctorRepository doctorRepository,
        IServiceRepository serviceRepository,
        IStaffRepository staffRepository,
        IClinicRepository clinicRepository)
    {
        _appointmentRepository = appointmentRepository;
        _doctorRepository = doctorRepository;
        _serviceRepository = serviceRepository;
        _user = user;
        InitializeComponent();
        LoadData();
        _staffRepository = staffRepository;
        _clinicRepository = clinicRepository;
    }

    private void LoadData()
    {
        var listDoc = _doctorRepository.GetAllDoctors();
        var listService = _serviceRepository.GetAllServices();
        CboService.ItemsSource = listService;
        TxtDate.DisplayDateStart = DateTime.Today.AddDays(1);
        lvAppoinment.ItemsSource = _appointmentRepository.GetAppointmentsByPatientId(_user is Patient patient ? patient.Patient1 : "");
    }

    private void BtnCreateAppoinment_Click(object sender, RoutedEventArgs e)
    {
        try
        {
            string cId = _clinicRepository.GetClinicByServiceId(CboService.SelectedValue.ToString()).ClinicId;
            string serviceId = CboService.SelectedValue.ToString();
            string doctorId = _doctorRepository.GetDoctorByClinicId(cId)[0].DoctorId;
            string staffId = _staffRepository.GetStaffByClinicId(cId)[0].StaffId;

            if (_user is staff Staff)
            {
                _user = (staff)_user;
            }
            else if (_user is Patient patient)
            {
                _user = (Patient)_user;

                Appointment a = new Appointment
                {
                    AppointmentId = Guid.NewGuid().ToString().Substring(0, 10),
                    ClinicId = cId.Trim(),
                    AppointmentDate = string.IsNullOrEmpty(TxtDate.Text) ? null : DateTime.Parse(TxtDate.Text),
                    DoctorId = doctorId.Trim(),
                    ServiceId = serviceId.Trim(),
                    PatientId = patient.Patient1.Trim(),
                    StaffId = staffId.Trim(),
                    Status = false
                };

                _appointmentRepository.AddAppointment(a);
                lvAppoinment.ItemsSource = null;
                lvAppoinment.ItemsSource = _appointmentRepository.GetAppointmentsByPatientId(patient.Patient1);
                MessageBox.Show("Appointment created successfully!");
            }
        }
        catch (System.Exception)
        {
            MessageBox.Show("Error creating appointment");
        }
    }

    private void BtnCancelAppoinment_Click(object sender, RoutedEventArgs e)
    {
        // Get the selected appointment from the ListView
        var selectedAppointment = lvAppoinment.SelectedItem as Appointment;
        if (selectedAppointment != null)
        {
            if (_user is staff Staff)
            {
                _user = (staff)_user;
            }
            else if (_user is Patient patient)
            {
                _user = (Patient)_user;

                var a = MessageBox.Show("Are you sure to cancel?", "Confirm",
                    MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (a == MessageBoxResult.Yes)
                {
                    _appointmentRepository.DeleteAppointment(selectedAppointment);

                    lvAppoinment.ItemsSource = null;
                    lvAppoinment.ItemsSource = _appointmentRepository.GetAppointmentsByPatientId(patient.Patient1);
                }
            }
        }
    }

    private void BtnUpdateAppoinment_Click(object sender, RoutedEventArgs e)
    {
        // Get the selected appointment from the ListView
        var selectedAppointment = lvAppoinment.SelectedItem as Appointment;
        if (selectedAppointment != null)
        {

            try
            {
                string serviceId = CboService.SelectedValue.ToString();
                string cId = _clinicRepository.GetClinicByServiceId(serviceId).ClinicId;
                string doctorId = _doctorRepository.GetDoctorByClinicId(cId)[0].DoctorId;
                string staffId = _staffRepository.GetStaffByClinicId(cId)[0].StaffId;

                if (_user is staff Staff)
                {
                    _user = (staff)_user;
                }
                else if (_user is Patient patient)
                {
                    _user = (Patient)_user;

                    selectedAppointment.ClinicId = cId.Trim();
                    selectedAppointment.AppointmentDate = string.IsNullOrEmpty(TxtDate.Text) ? null : DateTime.Parse(TxtDate.Text);
                    selectedAppointment.DoctorId = doctorId.Trim();
                    selectedAppointment.ServiceId = serviceId.Trim();
                    selectedAppointment.PatientId = patient.Patient1.Trim();
                    selectedAppointment.StaffId = staffId.Trim();
                    selectedAppointment.Status = false;

                    var a = MessageBox.Show("Are you sure to update?", "Confirm",
                    MessageBoxButton.YesNo, MessageBoxImage.Question);
                    if (a == MessageBoxResult.Yes)
                    {
                        _appointmentRepository.UpdateAppointment(selectedAppointment);
                        lvAppoinment.ItemsSource = null;
                        lvAppoinment.ItemsSource = _appointmentRepository.GetAppointmentsByPatientId(patient.Patient1);
                        MessageBox.Show("Appointment updated successfully!");
                    }
                }
            }
            catch (System.Exception)
            {
                MessageBox.Show("Error creating appointment");
            }
        }
    }

}
