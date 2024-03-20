using BusinessObject.Models;
using DataAccess.Repository;
using DataAccess.Repository.Interface;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System.IO;
using System.Windows;

namespace ClinicManagement;
public partial class App : Application
{
    private readonly ServiceProvider serviceProvider;

    public App()
    {
        ServiceCollection services = new ServiceCollection();
        ConfigureServices(services);
        serviceProvider = services.BuildServiceProvider();
    }

    private void ConfigureServices(ServiceCollection services)
    {
        //Add DI here


        services.AddDbContext<ClinicContext>(options =>
        {
            var ConnectionString = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build().GetConnectionString("DefaultConnection");
            options.UseSqlServer(ConnectionString);
        });


        services.AddSingleton<MainWindow>();
        services.AddSingleton<ILoginRepository, LoginRepository>();
        services.AddSingleton<IAppointmentRepository, AppointmentRepository>();
        services.AddSingleton<IStaffRepository, StaffRepository>();
        services.AddSingleton<IPatientRepository, PatientRepository>();

        services.AddSingleton<IDoctorRepository, DoctorRepository>();

        services.AddSingleton<IClinicRepository, ClinicRepository>();

        services.AddSingleton<IServiceRepository, ServiceRepository>();

    }

    private void OnStartup(object sender, StartupEventArgs e)
    {
        var mainWindow = serviceProvider.GetService<MainWindow>();
        mainWindow.Show();
    }
}
