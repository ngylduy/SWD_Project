using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace BusinessObject.Models
{
    public partial class ClinicContext : DbContext
    {
        public ClinicContext()
        {
        }

        public ClinicContext(DbContextOptions<ClinicContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Appointment> Appointments { get; set; } = null!;
        public virtual DbSet<Clinic> Clinics { get; set; } = null!;
        public virtual DbSet<Doctor> Doctors { get; set; } = null!;
        public virtual DbSet<DoctorSchedule> DoctorSchedules { get; set; } = null!;
        public virtual DbSet<Medicine> Medicines { get; set; } = null!;
        public virtual DbSet<Patient> Patients { get; set; } = null!;
        public virtual DbSet<Service> Services { get; set; } = null!;
        public virtual DbSet<Treatment> Treatments { get; set; } = null!;
        public virtual DbSet<TreatmentDetail> TreatmentDetails { get; set; } = null!;
        public virtual DbSet<staff> staff { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                var ConnectionString = new ConfigurationBuilder().AddJsonFile("appsettings.json").Build().GetConnectionString("DefaultConnection");
                optionsBuilder.UseSqlServer(ConnectionString);
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Appointment>(entity =>
            {
                entity.ToTable("Appointment");

                entity.Property(e => e.AppointmentId)
                    .HasMaxLength(10)
                    .HasColumnName("Appointment_Id")
                    .IsFixedLength();

                entity.Property(e => e.AppointmentDate)
                    .HasColumnType("datetime")
                    .HasColumnName("Appointment_Date");

                entity.Property(e => e.ClinicId)
                    .HasMaxLength(10)
                    .HasColumnName("Clinic_Id")
                    .IsFixedLength();

                entity.Property(e => e.DoctorId)
                    .HasMaxLength(10)
                    .HasColumnName("Doctor_Id")
                    .IsFixedLength();

                entity.Property(e => e.PatientId)
                    .HasMaxLength(10)
                    .HasColumnName("Patient_Id")
                    .IsFixedLength();

                entity.Property(e => e.ServiceId)
                    .HasMaxLength(10)
                    .HasColumnName("Service_Id")
                    .IsFixedLength();

                entity.HasOne(d => d.Doctor)
                    .WithMany(p => p.Appointments)
                    .HasForeignKey(d => d.DoctorId)
                    .HasConstraintName("FK_Appointment_Doctor");

                entity.HasOne(d => d.Patient)
                    .WithMany(p => p.Appointments)
                    .HasForeignKey(d => d.PatientId)
                    .HasConstraintName("FK_Appointment_Patient");

                entity.HasOne(d => d.Service)
                    .WithMany(p => p.Appointments)
                    .HasForeignKey(d => d.ServiceId)
                    .HasConstraintName("FK_Appointment_Services");
            });

            modelBuilder.Entity<Clinic>(entity =>
            {
                entity.ToTable("Clinic");

                entity.Property(e => e.ClinicId)
                    .HasMaxLength(10)
                    .HasColumnName("Clinic_Id")
                    .IsFixedLength();

                entity.Property(e => e.ClinicName).HasColumnName("Clinic_Name");
            });

            modelBuilder.Entity<Doctor>(entity =>
            {
                entity.ToTable("Doctor");

                entity.Property(e => e.DoctorId)
                    .HasMaxLength(10)
                    .HasColumnName("Doctor_Id")
                    .IsFixedLength();

                entity.Property(e => e.ClinicId)
                    .HasMaxLength(10)
                    .HasColumnName("Clinic_Id")
                    .IsFixedLength();

                entity.Property(e => e.DoctorName).HasColumnName("Doctor_Name");

                entity.Property(e => e.PhoneNumber).HasColumnName("Phone_Number");

                entity.HasOne(d => d.Clinic)
                    .WithMany(p => p.Doctors)
                    .HasForeignKey(d => d.ClinicId)
                    .HasConstraintName("FK_Doctor_Clinic");
            });

            modelBuilder.Entity<DoctorSchedule>(entity =>
            {
                entity.ToTable("Doctor_Schedule");

                entity.Property(e => e.DoctorId)
                    .HasMaxLength(10)
                    .HasColumnName("Doctor_Id")
                    .IsFixedLength();

                entity.Property(e => e.EndeDate)
                    .HasColumnType("datetime")
                    .HasColumnName("Ende_Date");

                entity.Property(e => e.StartDate)
                    .HasColumnType("datetime")
                    .HasColumnName("Start_Date");

                entity.HasOne(d => d.Doctor)
                    .WithMany(p => p.DoctorSchedules)
                    .HasForeignKey(d => d.DoctorId)
                    .HasConstraintName("FK_Doctor_Schedule_Doctor");
            });

            modelBuilder.Entity<Medicine>(entity =>
            {
                entity.ToTable("Medicine");

                entity.Property(e => e.MedicineId)
                    .HasMaxLength(10)
                    .HasColumnName("Medicine_Id")
                    .IsFixedLength();

                entity.Property(e => e.MedicineName).HasColumnName("Medicine_Name");
            });

            modelBuilder.Entity<Patient>(entity =>
            {
                entity.HasKey(e => e.Patient1);

                entity.ToTable("Patient");

                entity.Property(e => e.Patient1)
                    .HasMaxLength(10)
                    .HasColumnName("Patient")
                    .IsFixedLength();

                entity.Property(e => e.DateOfBirth).HasColumnType("date");

                entity.Property(e => e.PatientName).HasColumnName("Patient_Name");

                entity.Property(e => e.PhoneNumber).HasColumnName("Phone_Number");
            });

            modelBuilder.Entity<Service>(entity =>
            {
                entity.Property(e => e.ServiceId)
                    .HasMaxLength(10)
                    .HasColumnName("Service_Id")
                    .IsFixedLength();

                entity.Property(e => e.ClinicId)
                    .HasMaxLength(10)
                    .HasColumnName("Clinic_Id")
                    .IsFixedLength();

                entity.Property(e => e.ServiceName).HasColumnName("Service_Name");

                entity.HasOne(d => d.Clinic)
                    .WithMany(p => p.Services)
                    .HasForeignKey(d => d.ClinicId)
                    .HasConstraintName("FK_Services_Clinic");
            });

            modelBuilder.Entity<Treatment>(entity =>
            {
                entity.ToTable("Treatment");

                entity.Property(e => e.TreatmentId)
                    .HasMaxLength(10)
                    .HasColumnName("Treatment_Id")
                    .IsFixedLength();

                entity.Property(e => e.AppointmentId)
                    .HasMaxLength(10)
                    .HasColumnName("Appointment_Id")
                    .IsFixedLength();

                entity.HasOne(d => d.Appointment)
                    .WithMany(p => p.Treatments)
                    .HasForeignKey(d => d.AppointmentId)
                    .HasConstraintName("FK_Treatment_Appointment");
            });

            modelBuilder.Entity<TreatmentDetail>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("Treatment_Details");

                entity.Property(e => e.MedicineId)
                    .HasMaxLength(10)
                    .HasColumnName("Medicine_Id")
                    .IsFixedLength();

                entity.Property(e => e.TreatmentId)
                    .HasMaxLength(10)
                    .HasColumnName("Treatment_Id")
                    .IsFixedLength();

                entity.HasOne(d => d.Medicine)
                    .WithMany()
                    .HasForeignKey(d => d.MedicineId)
                    .HasConstraintName("FK_Treatment_Details_Medicine");

                entity.HasOne(d => d.Treatment)
                    .WithMany()
                    .HasForeignKey(d => d.TreatmentId)
                    .HasConstraintName("FK_Treatment_Details_Treatment");
            });

            modelBuilder.Entity<staff>(entity =>
            {
                entity.ToTable("Staff");

                entity.Property(e => e.StaffId)
                    .HasMaxLength(10)
                    .HasColumnName("Staff_Id")
                    .IsFixedLength();

                entity.Property(e => e.ClinicId)
                    .HasMaxLength(10)
                    .HasColumnName("Clinic_Id")
                    .IsFixedLength();

                entity.Property(e => e.PhoneNumber).HasColumnName("Phone_Number");

                entity.Property(e => e.StaffName).HasColumnName("Staff_Name");

                entity.HasOne(d => d.Clinic)
                    .WithMany(p => p.staff)
                    .HasForeignKey(d => d.ClinicId)
                    .HasConstraintName("FK_Staff_Clinic");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
