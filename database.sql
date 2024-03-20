/*
 Navicat Premium Data Transfer

 Source Server         : SQL Server
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Catalog        : Clinic
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 20/03/2024 15:16:52
*/


-- ----------------------------
-- Table structure for Appointment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Appointment]') AND type IN ('U'))
	DROP TABLE [dbo].[Appointment]
GO

CREATE TABLE [dbo].[Appointment] (
  [Appointment_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Clinic_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Appointment_Date] datetime  NULL,
  [Doctor_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Service_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Patient_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Staff_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] bit  NULL
)
GO

ALTER TABLE [dbo].[Appointment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Appointment
-- ----------------------------
INSERT INTO [dbo].[Appointment]  VALUES (N'0c3aeff6-7', N'1         ', N'2024-04-10 00:00:00.000', N'1         ', N'2         ', N'1         ', N'1         ', N'0')
GO

INSERT INTO [dbo].[Appointment]  VALUES (N'247d66d4-0', N'2         ', N'2024-03-28 00:00:00.000', N'2         ', N'6         ', N'1         ', N'2         ', N'0')
GO

INSERT INTO [dbo].[Appointment]  VALUES (N'304ae293-d', N'4         ', N'2024-04-01 00:00:00.000', N'4         ', N'13        ', N'1         ', N'4         ', N'0')
GO

INSERT INTO [dbo].[Appointment]  VALUES (N'7b4616e8-c', N'4         ', N'2024-03-22 00:00:00.000', N'4         ', N'14        ', N'1         ', N'4         ', N'0')
GO

INSERT INTO [dbo].[Appointment]  VALUES (N'990cffa9-7', N'2         ', N'2024-03-27 00:00:00.000', N'2         ', N'7         ', N'1         ', N'2         ', N'0')
GO

INSERT INTO [dbo].[Appointment]  VALUES (N'a6242d32-a', N'3         ', N'2024-03-29 00:00:00.000', N'3         ', N'10        ', N'582e6ab5-d', N'3         ', N'0')
GO

INSERT INTO [dbo].[Appointment]  VALUES (N'b8851ba1-1', N'2         ', N'2024-04-06 00:00:00.000', N'2         ', N'6         ', N'1         ', N'2         ', N'0')
GO

INSERT INTO [dbo].[Appointment]  VALUES (N'dbf042d3-8', N'2         ', N'2024-04-11 00:00:00.000', N'2         ', N'4         ', N'1         ', N'2         ', N'0')
GO

INSERT INTO [dbo].[Appointment]  VALUES (N'e3b4df85-4', N'2         ', N'2024-03-30 00:00:00.000', N'2         ', N'4         ', N'1         ', N'2         ', N'0')
GO

INSERT INTO [dbo].[Appointment]  VALUES (N'e70bcc6e-8', N'4         ', N'2024-03-22 00:00:00.000', N'4         ', N'14        ', N'1         ', N'4         ', N'0')
GO


-- ----------------------------
-- Table structure for Clinic
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Clinic]') AND type IN ('U'))
	DROP TABLE [dbo].[Clinic]
GO

CREATE TABLE [dbo].[Clinic] (
  [Clinic_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Clinic_Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Clinic] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Clinic
-- ----------------------------
INSERT INTO [dbo].[Clinic]  VALUES (N'1         ', N'Phòng khám Ngoại')
GO

INSERT INTO [dbo].[Clinic]  VALUES (N'2         ', N'Phòng khám Mắt')
GO

INSERT INTO [dbo].[Clinic]  VALUES (N'3         ', N'Phòng khám Tai mũi họng')
GO

INSERT INTO [dbo].[Clinic]  VALUES (N'4         ', N'Phòng khám Nội')
GO


-- ----------------------------
-- Table structure for Doctor
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Doctor]') AND type IN ('U'))
	DROP TABLE [dbo].[Doctor]
GO

CREATE TABLE [dbo].[Doctor] (
  [Doctor_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Doctor_Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Phone_Number] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Gender] bit  NULL,
  [Clinic_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Doctor] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Doctor
-- ----------------------------
INSERT INTO [dbo].[Doctor]  VALUES (N'1         ', N'Bác sĩ Hải', N'0123456789', N'1', N'1         ', N'123123')
GO

INSERT INTO [dbo].[Doctor]  VALUES (N'2         ', N'Bác sĩ Võ Thành Nhân', N'0234567891', N'1', N'2         ', N'123123')
GO

INSERT INTO [dbo].[Doctor]  VALUES (N'3         ', N'
Bác sĩ Huỳnh Thoại Loan', N'0345678912', N'0', N'3         ', N'123123')
GO

INSERT INTO [dbo].[Doctor]  VALUES (N'4         ', N'Bác sĩ Nguyễn Thị Hoàn', N'0456789123', N'0', N'4         ', N'123123')
GO


-- ----------------------------
-- Table structure for Doctor_Schedule
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Doctor_Schedule]') AND type IN ('U'))
	DROP TABLE [dbo].[Doctor_Schedule]
GO

CREATE TABLE [dbo].[Doctor_Schedule] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Doctor_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Start_Date] datetime  NULL,
  [Ende_Date] datetime  NULL
)
GO

ALTER TABLE [dbo].[Doctor_Schedule] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Doctor_Schedule
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Doctor_Schedule] ON
GO

INSERT INTO [dbo].[Doctor_Schedule] ([Id], [Doctor_Id], [Start_Date], [Ende_Date]) VALUES (N'2', N'1         ', N'2024-03-12 09:04:13.000', N'2024-04-01 09:03:30.000')
GO

INSERT INTO [dbo].[Doctor_Schedule] ([Id], [Doctor_Id], [Start_Date], [Ende_Date]) VALUES (N'3', N'2         ', N'2024-03-06 09:04:29.000', N'2024-03-27 09:04:32.000')
GO

INSERT INTO [dbo].[Doctor_Schedule] ([Id], [Doctor_Id], [Start_Date], [Ende_Date]) VALUES (N'4', N'3         ', N'2024-03-18 09:04:40.000', N'2024-04-06 09:04:44.000')
GO

INSERT INTO [dbo].[Doctor_Schedule] ([Id], [Doctor_Id], [Start_Date], [Ende_Date]) VALUES (N'5', N'4         ', N'2024-03-05 09:04:51.000', N'2024-05-03 09:04:53.000')
GO

SET IDENTITY_INSERT [dbo].[Doctor_Schedule] OFF
GO


-- ----------------------------
-- Table structure for Medicine
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Medicine]') AND type IN ('U'))
	DROP TABLE [dbo].[Medicine]
GO

CREATE TABLE [dbo].[Medicine] (
  [Medicine_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Medicine_Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Medicine] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Patient
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Patient]') AND type IN ('U'))
	DROP TABLE [dbo].[Patient]
GO

CREATE TABLE [dbo].[Patient] (
  [Patient] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Patient_Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Gender] bit  NULL,
  [DateOfBirth] date  NULL,
  [Phone_Number] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Address] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Patient] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Patient
-- ----------------------------
INSERT INTO [dbo].[Patient]  VALUES (N'1         ', N'Duy', N'1', N'2002-04-30', N'0961257259', N'Thạch Thất', N'123123')
GO

INSERT INTO [dbo].[Patient]  VALUES (N'2         ', N'Hoàn', N'1', N'2002-02-28', N'0563289123', N'Thạch Thất', N'123123')
GO

INSERT INTO [dbo].[Patient]  VALUES (N'582e6ab5-d', N'Lan Anh', N'0', N'2024-03-14', N'034567823', N'Hanoi', N'123123')
GO

INSERT INTO [dbo].[Patient]  VALUES (N'f8e69b88-f', N'Tùng', N'1', N'2024-03-18', N'0354232002', N'Hanoi', N'123123')
GO


-- ----------------------------
-- Table structure for Services
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Services]') AND type IN ('U'))
	DROP TABLE [dbo].[Services]
GO

CREATE TABLE [dbo].[Services] (
  [Service_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Service_Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Clinic_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Services] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Services
-- ----------------------------
INSERT INTO [dbo].[Services]  VALUES (N'1         ', N'Xét nghiệm cận lâm sàng', N'1         ')
GO

INSERT INTO [dbo].[Services]  VALUES (N'10        ', N'Tái khám và Nội soi Tai - Mũi - Họng', N'3         ')
GO

INSERT INTO [dbo].[Services]  VALUES (N'13        ', N'Nội tiết', N'4         ')
GO

INSERT INTO [dbo].[Services]  VALUES (N'14        ', N'Nội ung bướu', N'4         ')
GO

INSERT INTO [dbo].[Services]  VALUES (N'2         ', N'Cấp cứu và sơ cứu', N'1         ')
GO

INSERT INTO [dbo].[Services]  VALUES (N'3         ', N'Tư vấn, điều trị các bệnh ngoại khoa', N'1         ')
GO

INSERT INTO [dbo].[Services]  VALUES (N'4         ', N'Khám bệnh', N'2         ')
GO

INSERT INTO [dbo].[Services]  VALUES (N'5         ', N'Chẩn đoán hình ảnh', N'2         ')
GO

INSERT INTO [dbo].[Services]  VALUES (N'6         ', N'Tiểu phẫu - Thủ thuật', N'2         ')
GO

INSERT INTO [dbo].[Services]  VALUES (N'7         ', N'Phẫu thuật dịch kính võng mạc', N'2         ')
GO

INSERT INTO [dbo].[Services]  VALUES (N'8         ', N'Khám và Nội soi Tai - Mũi - Họng', N'3         ')
GO

INSERT INTO [dbo].[Services]  VALUES (N'9         ', N'Khám Tim mạch', N'3         ')
GO


-- ----------------------------
-- Table structure for Staff
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Staff]') AND type IN ('U'))
	DROP TABLE [dbo].[Staff]
GO

CREATE TABLE [dbo].[Staff] (
  [Staff_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Staff_Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Phone_Number] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Gender] bit  NULL,
  [Clinic_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Staff] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Staff
-- ----------------------------
INSERT INTO [dbo].[Staff]  VALUES (N'1         ', N'Staff 1', N'0111123231', N'1', N'1         ', N'123123')
GO

INSERT INTO [dbo].[Staff]  VALUES (N'2         ', N'Staff 2', N'0666623231', N'1', N'2         ', N'123123')
GO

INSERT INTO [dbo].[Staff]  VALUES (N'3         ', N'Staff 3', N'0333332321', N'0', N'3         ', N'123123')
GO

INSERT INTO [dbo].[Staff]  VALUES (N'4         ', N'Staff 4', N'0444423231', N'1', N'4         ', N'123123')
GO


-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type IN ('U'))
	DROP TABLE [dbo].[sysdiagrams]
GO

CREATE TABLE [dbo].[sysdiagrams] (
  [name] sysname  NOT NULL,
  [principal_id] int  NOT NULL,
  [diagram_id] int  IDENTITY(1,1) NOT NULL,
  [version] int  NULL,
  [definition] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[sysdiagrams] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Treatment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Treatment]') AND type IN ('U'))
	DROP TABLE [dbo].[Treatment]
GO

CREATE TABLE [dbo].[Treatment] (
  [Treatment_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Appointment_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Treatment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Treatment_Details
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Treatment_Details]') AND type IN ('U'))
	DROP TABLE [dbo].[Treatment_Details]
GO

CREATE TABLE [dbo].[Treatment_Details] (
  [Treatment_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Medicine_Id] nchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Quantity] int  NULL
)
GO

ALTER TABLE [dbo].[Treatment_Details] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- Procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- Procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- Procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- Function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Primary Key structure for table Appointment
-- ----------------------------
ALTER TABLE [dbo].[Appointment] ADD CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED ([Appointment_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Clinic
-- ----------------------------
ALTER TABLE [dbo].[Clinic] ADD CONSTRAINT [PK_Clinic] PRIMARY KEY CLUSTERED ([Clinic_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Doctor
-- ----------------------------
ALTER TABLE [dbo].[Doctor] ADD CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED ([Doctor_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Doctor_Schedule
-- ----------------------------
ALTER TABLE [dbo].[Doctor_Schedule] ADD CONSTRAINT [PK_Doctor_Schedule] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Medicine
-- ----------------------------
ALTER TABLE [dbo].[Medicine] ADD CONSTRAINT [PK_Medicine] PRIMARY KEY CLUSTERED ([Medicine_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Patient
-- ----------------------------
ALTER TABLE [dbo].[Patient] ADD CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED ([Patient])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Services
-- ----------------------------
ALTER TABLE [dbo].[Services] ADD CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED ([Service_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Staff
-- ----------------------------
ALTER TABLE [dbo].[Staff] ADD CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED ([Staff_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED ([principal_id] ASC, [name] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [PK__sysdiagr__C2B05B6109A5E011] PRIMARY KEY CLUSTERED ([diagram_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Treatment
-- ----------------------------
ALTER TABLE [dbo].[Treatment] ADD CONSTRAINT [PK_Treatment] PRIMARY KEY CLUSTERED ([Treatment_Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Appointment
-- ----------------------------
ALTER TABLE [dbo].[Appointment] ADD CONSTRAINT [FK_Appointment_Doctor] FOREIGN KEY ([Doctor_Id]) REFERENCES [dbo].[Doctor] ([Doctor_Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Appointment] ADD CONSTRAINT [FK_Appointment_Patient] FOREIGN KEY ([Patient_Id]) REFERENCES [dbo].[Patient] ([Patient]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Appointment] ADD CONSTRAINT [FK_Appointment_Services] FOREIGN KEY ([Service_Id]) REFERENCES [dbo].[Services] ([Service_Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Appointment] ADD CONSTRAINT [FK_Appointment_Staff] FOREIGN KEY ([Staff_Id]) REFERENCES [dbo].[Staff] ([Staff_Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Appointment] ADD CONSTRAINT [FK_Appointment_Clinic] FOREIGN KEY ([Clinic_Id]) REFERENCES [dbo].[Clinic] ([Clinic_Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Doctor
-- ----------------------------
ALTER TABLE [dbo].[Doctor] ADD CONSTRAINT [FK_Doctor_Clinic] FOREIGN KEY ([Clinic_Id]) REFERENCES [dbo].[Clinic] ([Clinic_Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Doctor_Schedule
-- ----------------------------
ALTER TABLE [dbo].[Doctor_Schedule] ADD CONSTRAINT [FK_Doctor_Schedule_Doctor] FOREIGN KEY ([Doctor_Id]) REFERENCES [dbo].[Doctor] ([Doctor_Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Services
-- ----------------------------
ALTER TABLE [dbo].[Services] ADD CONSTRAINT [FK_Services_Clinic] FOREIGN KEY ([Clinic_Id]) REFERENCES [dbo].[Clinic] ([Clinic_Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Staff
-- ----------------------------
ALTER TABLE [dbo].[Staff] ADD CONSTRAINT [FK_Staff_Clinic] FOREIGN KEY ([Clinic_Id]) REFERENCES [dbo].[Clinic] ([Clinic_Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Treatment
-- ----------------------------
ALTER TABLE [dbo].[Treatment] ADD CONSTRAINT [FK_Treatment_Appointment] FOREIGN KEY ([Appointment_Id]) REFERENCES [dbo].[Appointment] ([Appointment_Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Treatment_Details
-- ----------------------------
ALTER TABLE [dbo].[Treatment_Details] ADD CONSTRAINT [FK_Treatment_Details_Medicine] FOREIGN KEY ([Medicine_Id]) REFERENCES [dbo].[Medicine] ([Medicine_Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Treatment_Details] ADD CONSTRAINT [FK_Treatment_Details_Treatment] FOREIGN KEY ([Treatment_Id]) REFERENCES [dbo].[Treatment] ([Treatment_Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

