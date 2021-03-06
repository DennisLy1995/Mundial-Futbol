USE [master]
GO
/****** Object:  Database [ProyectoPOO]    Script Date: 8/20/2018 5:20:16 AM ******/
CREATE DATABASE [ProyectoPOO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoPOO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProyectoPOO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectoPOO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProyectoPOO_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProyectoPOO] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoPOO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoPOO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoPOO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoPOO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoPOO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoPOO] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoPOO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProyectoPOO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoPOO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoPOO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoPOO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoPOO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoPOO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoPOO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoPOO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoPOO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProyectoPOO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoPOO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoPOO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoPOO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoPOO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoPOO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoPOO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoPOO] SET RECOVERY FULL 
GO
ALTER DATABASE [ProyectoPOO] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoPOO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoPOO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoPOO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoPOO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoPOO] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProyectoPOO', N'ON'
GO
ALTER DATABASE [ProyectoPOO] SET QUERY_STORE = OFF
GO
USE [ProyectoPOO]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ProyectoPOO]
GO
/****** Object:  Table [dbo].[CuadrosPrimeraFase]    Script Date: 8/20/2018 5:20:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuadrosPrimeraFase](
	[nombre] [varchar](50) NULL,
	[cuadro] [int] NULL,
	[mundial] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipos]    Script Date: 8/20/2018 5:20:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipos](
	[nombre] [varchar](50) NULL,
	[ranking] [int] NOT NULL,
	[bandera] [varchar](50) NULL,
	[iso] [varchar](50) NULL,
 CONSTRAINT [PK_Equipos] PRIMARY KEY CLUSTERED 
(
	[ranking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GanadoresPrimeraFase]    Script Date: 8/20/2018 5:20:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GanadoresPrimeraFase](
	[nombre] [varchar](50) NULL,
	[mundial] [varchar](50) NULL,
	[cuadro] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GanadoresSegundaFase]    Script Date: 8/20/2018 5:20:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GanadoresSegundaFase](
	[nombre] [varchar](50) NULL,
	[mundial] [varchar](50) NULL,
	[fase] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LigasPrivadas]    Script Date: 8/20/2018 5:20:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LigasPrivadas](
	[nombreLiga] [varchar](50) NULL,
	[fechaCreacion] [date] NULL,
	[estado] [varchar](50) NULL,
	[tipoLiga] [varchar](50) NULL,
	[puntos] [int] NULL,
	[bono] [int] NULL,
	[mundialAnfitrion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LigasPublicas]    Script Date: 8/20/2018 5:20:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LigasPublicas](
	[nombreLiga] [varchar](50) NOT NULL,
	[fechaCreacion] [date] NULL,
	[estado] [varchar](50) NULL,
	[tipoLiga] [varchar](50) NULL,
	[puntos] [int] NULL,
	[bono] [int] NULL,
	[mundialAnfitrion] [varchar](50) NULL,
 CONSTRAINT [PK_LigasPublicas] PRIMARY KEY CLUSTERED 
(
	[nombreLiga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mundiales]    Script Date: 8/20/2018 5:20:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mundiales](
	[nombreMundial] [varchar](50) NOT NULL,
	[fechaInicio] [date] NULL,
	[estado] [varchar](50) NULL,
	[paisOrganizador] [varchar](50) NULL,
	[EquipoPrimerLugar] [varchar](50) NULL,
	[EquipoSegundoLugar] [varchar](50) NULL,
	[EquipoTercerLugar] [varchar](50) NULL,
	[resultadosMundial] [varchar](50) NULL,
	[equiposMundial] [varchar](50) NULL,
 CONSTRAINT [PK_Mundiales] PRIMARY KEY CLUSTERED 
(
	[nombreMundial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartidosPrimeraFase]    Script Date: 8/20/2018 5:20:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartidosPrimeraFase](
	[equipo1] [varchar](50) NULL,
	[equipo2] [varchar](50) NULL,
	[equipoGanador] [varchar](50) NULL,
	[equipoPerdedor] [varchar](50) NULL,
	[puntajeEquipo1] [int] NULL,
	[puntajeEquipo2] [int] NULL,
	[cuadro] [varchar](50) NULL,
	[mundial] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartidosSegudaFase]    Script Date: 8/20/2018 5:20:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartidosSegudaFase](
	[equipo1] [varchar](50) NULL,
	[equipo2] [varchar](50) NULL,
	[equipoGanador] [varchar](50) NULL,
	[equipoPerdedor] [varchar](50) NULL,
	[puntajeEquipo1] [int] NULL,
	[puntajeEquipo2] [int] NULL,
	[fase] [int] NULL,
	[mundial] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 8/20/2018 5:20:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[nombreUsuario] [varchar](50) NULL,
	[avatar] [varchar](50) NULL,
	[correoElectronico] [varchar](50) NULL,
	[contrasena] [varchar](50) NULL,
	[fechaRegistro] [date] NULL,
	[Perfiles] [varchar](50) NULL,
	[miLigaPublica] [varchar](50) NULL,
	[miLigaPrivada] [varchar](50) NULL,
	[puntajePublica] [int] NULL,
	[puntajePrivada] [int] NULL,
	[equipoLigaPublica] [varchar](50) NULL,
	[equipoLigaPrivada] [varchar](50) NULL,
	[validacionPrimeraFasePublica] [int] NULL,
	[validacionPrimeraFasePrivada] [int] NULL,
	[validacionOctavosPublica] [varchar](50) NULL,
	[validacioncuartosPublica] [varchar](50) NULL,
	[validacionSemifinalesPublica] [varchar](50) NULL,
	[validacionfinalPublica] [varchar](50) NULL,
	[validacionOctavosPrivada] [varchar](50) NULL,
	[validacioncuartosPrivada] [varchar](50) NULL,
	[validacionSemifinalesPrivada] [varchar](50) NULL,
	[validacionfinalPrivada] [varchar](50) NULL,
	[primerCuadroPublica] [varchar](50) NULL,
	[primerCuadroPrivada] [varchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ProyectoPOO] SET  READ_WRITE 
GO
