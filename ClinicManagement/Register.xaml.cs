using BusinessObject.Models;
using DataAccess.Repository.Interface;
using System.Windows;

namespace ClinicManagement
{
    /// <summary>
    /// Interaction logic for Register.xaml
    /// </summary>
    public partial class Register : Window
    {
        private readonly IPatientRepository _patientRepository;

        public Register(IPatientRepository patientRepository)
        {
            InitializeComponent();
            _patientRepository = patientRepository;
        }

        private void btnRegister_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Patient patient = new Patient
                {
                    Patient1 = Guid.NewGuid().ToString().Substring(0, 10),
                    PatientName = txtName.Text,
                    Gender = rbMale.IsChecked == true ? true : false,
                    DateOfBirth = dtpDOB.SelectedDate,
                    PhoneNumber = txtPhone.Text,
                    Address = txtAddress.Text,
                    Password = txtPassword.Text
                };
                _patientRepository.AddPatient(patient);
                MessageBox.Show("Register successfully!");
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
