USE [master]
GO
/****** Object:  Database [CoursewareOnlineAssignment]    Script Date: 13/12/2022 11:39:58 AM ******/
CREATE DATABASE [CoursewareOnlineAssignment]
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CoursewareOnlineAssignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET RECOVERY FULL 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET  MULTI_USER 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CoursewareOnlineAssignment', N'ON'
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET QUERY_STORE = OFF
GO
USE [CoursewareOnlineAssignment]
GO
/****** Object:  Table [dbo].[category]    Script Date: 13/12/2022 11:39:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[couseware]    Script Date: 13/12/2022 11:39:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[couseware](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NULL,
	[short_content] [nvarchar](max) NULL,
	[title] [nvarchar](255) NULL,
	[created_date] [date] NULL,
	[modified_date] [date] NULL,
	[category_id] [bigint] NULL,
 CONSTRAINT [PK_Couseware] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 13/12/2022 11:39:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](80) NOT NULL,
	[roleID] [varchar](50) NULL,
	[fullName] [nvarchar](80) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__Users__1788CCAC1DCA6110] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 
GO
INSERT [dbo].[category] ([id], [code], [name]) VALUES (1, N'JSP', N'Java server page')
GO
INSERT [dbo].[category] ([id], [code], [name]) VALUES (2, N'Spring', N'Spring framework')
GO
INSERT [dbo].[category] ([id], [code], [name]) VALUES (10, N'MAD101', N'Discrete mathematic')
GO
INSERT [dbo].[category] ([id], [code], [name]) VALUES (11, N'SSG104', N'Communication and In-Group Working Skills	')
GO
INSERT [dbo].[category] ([id], [code], [name]) VALUES (12, N'PRN211', N'.NET')
GO
INSERT [dbo].[category] ([id], [code], [name]) VALUES (13, N'MAS291', N'Probability & statistics')
GO
INSERT [dbo].[category] ([id], [code], [name]) VALUES (14, N'ITE302c', N'Ethics in IT')
GO
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[couseware] ON 
GO
INSERT [dbo].[couseware] ([id], [content], [short_content], [title], [created_date], [modified_date], [category_id]) VALUES (17, N'<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="background-color:#ffffff"><strong><span style="font-size:16pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Purpose</span></span></span></span></strong><span style="font-size:16pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">&nbsp;:&nbsp;&nbsp;&nbsp;</span></span></span></span><span style="font-size:14pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">In this article, we show how to build a java web project, divided into 2 modules, Web application and Library common.&nbsp;The goal of this problem is to break down the project for easy management and convert common features that can be reused in other projects into libraries.&nbsp;Gradle is used to make the build tool in this article.</span></span></span></span></span></span></span></span></p>

<p><a name="more"></a></p>

<p style="text-align:start"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="background-color:#ffffff"><a name="more"></a><strong><span style="font-size:16pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Basic knowledge required:</span></span></span></span></strong></span></span></span></span></p>

<p style="margin-left:66px; text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="background-color:#ffffff"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="background-color:white"><span style="color:#222222">Master and use the skills to build complete applications with the MVC2 model.&nbsp;(refer to&nbsp;</span></span></span><a href="http://www.kieutrongkhanh.net/search/label/Servlet%26JSP" style="text-decoration:underline; color:#0563c1"><span style="font-size:14pt"><span style="background-color:white">http://www.kieutrongkhanh.net/search/label/Servlet%26JSP</span></span></a><span style="font-size:14pt"><span style="background-color:white"><span style="color:#222222">&nbsp;)</span></span></span></span></span></span></span></p>

<p style="margin-left:66px; text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="background-color:#ffffff"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="background-color:white"><span style="color:#222222">Master the concepts of Java programming language, object-oriented programming.</span></span></span></span></span></span></span></p>

<p style="margin-left:66px; text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="background-color:#ffffff"><span style="color:#0563c1"><u><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span></u></span><span style="font-size:14pt"><span style="background-color:white"><span style="color:#222222">Basic understanding and usage of Springboot framework.&nbsp;</span></span></span><a href="https://spring.io/projects/spring-boot" style="text-decoration:underline; color:#0563c1"><span style="font-size:14pt"><span style="background-color:white">https://spring.io/projects/spring-boot</span></span></a></span></span></span></span></p>

<p style="margin-left:66px; text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="background-color:#ffffff"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Understand and know how to set environment variables for programming tools on Windows operating system (refer to&nbsp;</span></span><a href="http://www.kieutrongkhanh.net/2016/11/video-cau-hinh-trien-khai-tomcat-server.html" style="text-decoration:underline; color:#0563c1"><span style="font-size:14pt">http://www.kieutrongkhanh.net/2016/11/video-cau-hinh-trien-khai -tomcat-server.html</span></a><span style="font-size:14pt"><span style="color:#222222">&nbsp;)</span></span></span></span></span></span></p>

<p style="margin-left:66px; text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="background-color:#ffffff"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Understand the web structure and configure the separate tomcat server on the operating system along with the process of deploying and undeploy the application into the standalone tomcat (refer to&nbsp;</span></span><a href="http://www.kieutrongkhanh.net/2016/11/video-cau-hinh-trien-khai-tomcat-server.html" style="text-decoration:underline; color:#0563c1"><span style="font-size:14pt">http://www.kieutrongkhanh.net/2016/11 /video-cau-hinh-trien-declaration-tomcat-server.html</span></a><span style="font-size:14pt"><span style="color:#222222">&nbsp;)</span></span></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="background-color:#ffffff"><strong><span style="font-size:16pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">Tools used:</span></span></span></span></strong></span></span></span></span></p>

<p style="margin-left:66px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">Gradle</span></span></span><span style="font-size:14pt"><span style="background-color:white"><span style="color:#222222">7.0.2 (download at&nbsp;</span></span></span><span style="color:black"><a href="https://gradle.org/releases/" style="text-decoration:underline; color:#0563c1">Gradle | Releases</a>&nbsp;)</span></span></span></span></span></p>

<p style="margin-left:66px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="background-color:white"><span style="color:#222222">spring-tool-suite (sts) 4.10.0 (download at&nbsp;</span></span></span><span style="color:black"><a href="https://spring.io/tools" style="text-decoration:underline; color:#0563c1">Spring | Tools</a>&nbsp;)</span></span></span></span></span></p>

<p style="margin-left:66px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="background-color:white"><span style="color:#222222">JDK 8</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">&nbsp;</span></span></span></span></p>

<p style="margin-left:72px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:16pt"><span style="color:#222222">I.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:16pt"><span style="color:#222222">Introduction</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Currently, when developing software, we will more or less see that most projects reuse some functions, such as writing files, reading files, processing strings ... Instead of we clone the function as mentioned from the previous versions. old project and integrate it back into the new project, we will build those functions into a library that can be easily reused in other projects.&nbsp;Here, we call reusable functions under the common name library.</span></span></span></span></span></span></p>

<p style="margin-left:72px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:16pt"><span style="color:#222222">II.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:16pt"><span style="color:#222222">Introducing Gradle</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><strong><span style="font-size:14pt"><span style="color:#222222">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><strong><span style="font-size:14pt"><span style="color:#222222">What is Gradle?</span></span></strong></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">Gradle&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">is an open source build automation system, based on the concepts of Apache Ant and Apache Maven.</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Gradle was released in 2007, combines the advantages of Ant and Maven and is developed using the Groovy language instead of XML</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">Gradle&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">is considered an automated build system, but basically, Gradle does not compile any code at all.&nbsp;All those features come from a surrounding ecosystem of Gradle, called Plugins.</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">Because&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">of the above, Gradle has built support for more than 60 different programming languages, including Java, Scala, Python, C/C++...</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><strong><span style="font-size:14pt"><span style="color:#222222">2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><strong><span style="font-size:14pt"><span style="color:#222222">Install Gradle</span></span></strong></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Gradle environment variable installed in windows is GRADLE_USER_HOME</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black"><img id="Picture 1" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image001.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:149px; padding:5px; width:624px" /></span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Here, we use gradle latest version at 29/5/2021 which is 7.0.2</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We continue to set the reference to the ready-to-use Gradle tool in Windows by setting the PATH reference to the gradle bin directory under the path: %GRADLE_USER_HOME%\&nbsp;<strong>bin</strong></span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black"><img id="Picture 2" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image002.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:505px; padding:5px; width:624px" /></span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">After setting the environment variable, we check if gradle has been successfully set up by cmd - command prompt and type the command gradle -v or gradle -version (press enter)</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black"><img id="Picture 3" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image003.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:353px; padding:5px; width:624px" /></span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">If cmd shows the result as shown above, this means we have successfully set up gradle</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><strong><span style="font-size:14pt"><span style="color:#222222">3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><strong><span style="font-size:14pt"><span style="color:#222222">How Gradle works</span></span></strong></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Gradle works around 2 files, build.gradle and settings.gradle</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">build.gradle is where we configure plugins, versions, repositories, dependencies&hellip;</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">settings.gradle is where we set the name of the project or sub-modules of the project if any</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Basically, the way gradle works is similar to maven, they only differ in syntax.</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Build phases cá»§a Gradle gá»m: Initialization, Configuration, Execution</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We can refer to the build lifecycle, Gradle vs Maven comparison at the link below:</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;</span></span></span><span style="color:black"><a href="https://docs.gradle.org/current/userguide/build_lifecycle.html" style="text-decoration:underline; color:#0563c1"><span style="font-size:14pt">https://docs.gradle.org/current/userguide/build_lifecycle.html</span></a></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;</span></span></span><span style="color:black"><a href="https://gradle.org/maven-vs-gradle/" style="text-decoration:underline; color:#0563c1"><span style="font-size:14pt">https://gradle.org/maven-vs-gradle/</span></a></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><strong><span style="font-size:14pt"><span style="color:#222222">4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><strong><span style="font-size:14pt"><span style="color:#222222">Gradle dependencies v&agrave; repositories</span></span></strong></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Dependencies is where we declare to integrate 3rd party libraries into the project</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Repositories are simply repositories.&nbsp;Based on the repositories we set up, Gradle will find the dependencies we need to use contained in the repository.</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Universal dependencies have been published by the community for us to use at the link:&nbsp;</span></span><span style="color:black"><a href="https://mvnrepository.com/" style="text-decoration:underline; color:#0563c1"><span style="font-size:14pt">https://mvnrepository.com/</span></a></span><span style="font-size:14pt"><span style="color:#222222">&nbsp;.</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Example:</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black"><img id="Picture 4" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image004.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:396px; padding:5px; width:624px" /></span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Or, we can also implement the local library to include in the project with the syntax:</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;</span></span></span><strong><span style="font-size:14pt"><span style="color:#222222">implementation project(&#39;:common&#39;)</span></span></strong></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Specify the sub-module, the library that we need.</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><strong><span style="font-size:14pt"><span style="color:#222222">common</span></span></strong><span style="font-size:14pt"><span style="color:#222222">&nbsp;is the sub-module name (&nbsp;<em>we will learn in the next content</em>&nbsp;).</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><strong><span style="font-size:14pt"><span style="color:#222222">Note</span></span></strong><span style="font-size:14pt"><span style="color:#222222">&nbsp;when declaring, before the name of the module, library must start with&nbsp;<strong>: (colon).</strong></span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Or declare the entire local library in a folder with the syntax<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong>compile fileTree(dir: &#39;libs&#39;, include: [&#39;*.jar&#39;])</strong></span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">In which, libs is the name of the folder containing the library, *.jar is the entire jar library contained in the libs folder.</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">To hierarchical package, we will declare with : (colon).&nbsp;For example:</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">com.example.utils -&gt; com:example:utils</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">If we don&#39;t want directory hierarchy but the package name is long, we can use the - (dash) sign to separate words according to naming recommendations of gradle, kebab.&nbsp;You can find more information at:</span></span><br />
<span style="color:black"><a href="https://docs.gradle.org/current/userguide/multi_project_builds.html" style="text-decoration:underline; color:#0563c1"><span style="font-size:14pt">https://docs.gradle.org/current/userguide/multi_project_builds.html</span></a></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><strong><span style="font-size:14pt"><span style="color:#222222">5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><strong><span style="font-size:14pt"><span style="color:#222222">Structure of a Gradle project</span></span></strong></span></span></span></span></p>

<p style="margin-left:156px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><strong><span style="font-size:14pt"><span style="color:#222222">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><strong><span style="font-size:14pt"><span style="color:#222222">Structure a standard gradle project</span></span></strong></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 7" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image005.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:95px; padding:5px; width:244px" /></span></span></span></span></span></p>

<p style="margin-left:156px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><strong><span style="font-size:14pt"><span style="color:#222222">b.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><strong><span style="font-size:14pt"><span style="color:#222222">Structure a multi-modules gradle project</span></span></strong></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 9" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image006.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:111px; padding:5px; width:170px" /></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">subproject-one, subproject-two is the source code, but has been separated into 2 separate modules and can refer to each other</span></span></span></span></span></span></p>

<p style="margin-left:72px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:16pt"><span style="color:#222222">III.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:16pt"><span style="color:#222222">Build and Implement project Web application using sts</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><strong><span style="font-size:14pt"><span style="color:#222222">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><strong><span style="font-size:14pt"><span style="color:#222222">Create a new project</span></span></strong></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We create a root folder named: MultiModule.</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We open up cmd and from the root folder we in turn create sub-projects and corresponding files as shown below.</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black"><img id="Picture 5" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image007.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:328px; padding:5px; width:542px" /></span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings">&sect;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:14pt"><span style="color:black">Here, we have commands like mkdir, cd, type nul &gt; build.gradle, type nul &gt; settings.gradle</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol">mkdir</span></span><span style="font-size:14pt"><span style="color:black">is the command to create an empty folder.&nbsp;Thus, with mkdir webapp\src\main\java is to create 4 folders at the right level with the given path.</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol">&middot;</span></span><span style="font-size:14pt"><span style="color:black">cd is the command to move from the directory location we are working on to the directory inside or another directory with a specific path</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol">&middot;</span></span><span style="font-size:14pt"><span style="color:black">type nul &gt; build.gradle is the command to create an empty file, with the name build and the extension gradle.&nbsp;We will do the same to create the settings.graddle file with the command line type nul &gt; settings.gradle</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">After the files and directory structure have been created, we add configuration content to those files as follows</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We configure the content of the settings.graddle file as follows</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 11" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image008.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:135px; padding:5px; width:382px" /></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings">&sect;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:14pt"><span style="color:black">rootProject.name is the name of the project.</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol">&middot;</span></span><span style="font-size:14pt"><span style="color:black">If we import 02 different projects but have the same rootProject.name into the ide, the 2nd project will import error.&nbsp;Because ide understands that this project has been imported before</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings">&sect;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:14pt"><span style="color:black">include is the declaration of sub-projects.&nbsp;Thanks to that, new sub-projects can refer to each other</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">For sts4 ide, when placing project right in workspace but rootProject.name is different from project&#39;s folder name, sts4 will report an error</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Project at &#39;D:\Project\SpringBoot\abc&#39; can&#39;t be named &#39;MultiModule&#39; because it&#39;s located directly under the workspace root. If such a project is renamed, Eclipse would move the container directory. To resolve this problem, move the project out of the workspace root or configure it to have the name &#39;abc&#39;.</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">That means we have to name the folder the same as rootProject.name or we have to put the project folder in a different location than the workspace of sts4.&nbsp;We can dodge like this</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 21" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image009.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:277px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">For example here our workspace is D:\Project\SpringBoot.&nbsp;Creating an extra Newfolder folder and setting the project folder to a sub-folder got out of the ide workspace</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Or we add eclipse.project.name = project.rootDir.name in the root project&#39;s build.gradle file</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 32" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image010.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:260px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Next, we configure in turn the build.gradle file in the modules</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">build.gradle</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Since we create a large project containing modules inside, we can configure what is common to all sub-projects here, and sub-projects just use common configurations without declaration. again</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">If any sub-project wants to declare its own dependency, it can be declared separately in the build.gradle files of that project itself.</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">The content is specifically configured as follows</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">&nbsp;</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 20" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image011.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:344px; padding:5px; width:497px" /></span></span></span></span></span></p>

<p style="margin-left:240px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:14pt"><span style="color:black">Plugins are add-ons</span></span></span></span></span></span></p>

<p style="margin-left:288px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings">&sect;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:14pt"><span style="color:black">As mentioned above, we declare the plugin as java, which means we are telling gradle that our source code is written in java language and build then build a binary file.</span></span></span></span></span></span></p>

<p style="margin-left:288px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings">&sect;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:14pt"><span style="color:black">With id value of &#39;org.springframework.boot&#39; means the project uses springboot framework</span></span></span></span></span></span></p>

<p style="margin-left:288px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings">&sect;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:14pt"><span style="color:black">With the id value of io.spring.dependency-management, it means that we want springboot to support the management of our dependencies in our projects.&nbsp;When they declare this plugin in conjunction with springboot dependencies, we just need to implement their name without needing to include the version.&nbsp;Because this plugin will take care of that and search for the corresponding version.&nbsp;You can find more information at&nbsp;</span></span><span style="color:black"><a href="https://docs.spring.io/spring-boot/docs/2.4.5/gradle-plugin/reference/htmlsingle/" style="text-decoration:underline; color:#0563c1"><span style="font-size:14pt">https://docs.spring.io/spring-boot/docs/2.4.5/gradle-plugin/reference/htmlsingle/</span></a></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol">Allprojects</span></span><span style="font-size:14pt"><span style="color:black">is used to indicate that all content declared here will be applied to all sub-projects.</span></span></span></span></span></span></p>

<p style="margin-left:240px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:14pt"><span style="color:black">sourceCompatibility is the java version to be used</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol">&middot;</span></span><span style="font-size:14pt"><span style="color:black">subprojects is where we can independently declare what each sub-project will have, or we can declare it separately in each sub-project&#39;s build.gradle file.&nbsp;By default no specific project is specified, everything will be applied to all sub-projects like allprojects</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">webapp\build.gradle</span></span></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">&nbsp;</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 8" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image012.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:257px; padding:5px; width:523px" /></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14pt"><span style="color:#222222">Because the main project&#39;s build.gradle already declares plugins, sub-projects only need to declare the name of the plugin again without declaring their version&nbsp;</span></span><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">.</span></span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14pt"><span style="color:#222222">When we tell gradle to use springboot framework, by default gradle will understand that we need to build executable&nbsp;</span></span><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">archive</span></span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">bootJar is a task to build the executable jar.&nbsp;Where baseName is the name and version is the version of the jar.&nbsp;After build, the package jar will have the following name: multi-module-jar-1.0.0.jar</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">dependencies is where we implement 3rd party libraries and apply only to this sub-project.</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Where implementation project(&#39;:common&#39;) is an import sub-project declaration named common.&nbsp;For the import to be successful, the sub-project common must be declared outside the settings.gradle file with the include . tag</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">common\build.gradle</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">&nbsp;</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 17" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image013.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:287px; padding:5px; width:317px" /></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">Because</span></span></span><span style="font-size:14pt"><span style="color:#222222">here common is just a library, there is no main() function, so we will turn off bootJar because bootJar will look for main() function in the project.</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">The</span></span></span><span style="font-size:14pt"><span style="color:#222222">jar task is enabled, which means that this gradle sub-project only needs to build the plain archive, the library used to import.</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">After the configuration is complete</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Our current project structure is as follows</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 10" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image014.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:108px; padding:5px; width:548px" /></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We open cmd and run the gradle wrapper command so that Gradle builds us the&nbsp;</span></span><strong><span style="font-size:14pt"><span style="color:black">gradle\wrapper</span></span></strong><span style="font-size:14pt"><span style="color:#222222">&nbsp;directory .&nbsp;Here is the gradle package that will download the dependencies later for us.</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">More information about gradle wrapper can be found at:&nbsp;</span></span><span style="color:black"><a href="https://docs.gradle.org/current/userguide/gradle_wrapper.html" style="text-decoration:underline; color:#0563c1"><span style="font-size:14pt">https://docs.gradle.org/current/userguide/gradle_wrapper.html</span></a></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black"><img id="Picture 12" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image015.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:203px; padding:5px; width:624px" /></span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">After all the configuration and execution content is completed, our project folder has the structure as shown below</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black"><img id="Picture 13" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image016.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:253px; padding:5px; width:378px" /></span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">If the configuration of any build.gradle file is incorrect, an error will be generated when running gradle wrapper</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><strong><span style="font-size:14pt"><span style="color:#222222">2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><strong><span style="font-size:14pt"><span style="color:#222222">Implement project</span></span></strong></span></span></span></span></p>

<p style="margin-left:48px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:red">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Import the project we just created into sts4</span></span></span></span></span></span></p>

<p style="margin-left:24px; text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black"><img id="Picture 14" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image017.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:531px; padding:5px; width:624px" /></span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Select the project folder we have generated.&nbsp;Click Finish</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">During the import process, we will see that the tool will download the dependencies for us.</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">After the import is complete, we will see the project content in the tool as shown</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="background-color:#ffffff"><span style="font-family:&quot;Times New Roman&quot;,serif"><img id="Picture 15" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image018.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:464px; padding:5px; width:378px" /></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Next, we build a simple HelloWorld API in the common library package - common as shown below</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black"><img id="Picture 16" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image019.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:368px; padding:5px; width:624px" /></span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We build a simple executable application to call the newly created API with the class name Application.java in the web application package with the image shown below</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">In the process of writing code, we just type about 3 characters and press the control -space bar key combination, the code will expand including the import line for us.</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">&nbsp;</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black"><img id="Picture 18" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image020.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:565px; padding:5px; width:624px" /></span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">During coding, we can import Hello class because we have implemented sub-project common in webapp\build.gradle and dependency of common when successfully added will be added to the project.&nbsp;We can check this by opening the Project and External Dependencies section in the web application package</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><strong><span style="font-size:14pt"><span style="color:#222222">3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><strong><span style="font-size:14pt"><span style="color:#222222">Build project</span></span></strong></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We open up cmd and move to the root directory of the project, ..\MultiModule and run the command gradle build.&nbsp;We will get the result</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black"><img id="Picture 19" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image021.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:311px; padding:5px; width:624px" /></span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">The reason is that the root project we do not implement any source code.&nbsp;But our source code is implemented in sub-projects.</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">The solution to build the project is that we need to go into the sub-projects that we have done above (Here, we only need to go to one project to execute, not necessarily in both projects to perform)</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We also need to note that the webapp project already implements using the common project, so when building the webapp, gradle will build both projects into jar.</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><strong><span style="font-size:14pt"><span style="color:#222222">However, if we build in common project,</span></span></strong><span style="font-size:14pt"><span style="color:#222222">&nbsp;gradle will only build 1 common package jar&nbsp;<strong>without building web application package</strong></span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Here, we will build the webapp and run the test</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We move into the webapp directory from the main project&#39;s current directory using the cd command on cmd</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-size:14pt"><span style="color:#222222"><img id="Picture 29" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image022.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:51px; padding:5px; width:611px" /></span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Retype the gradle build command, we will have the following result</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-size:14pt"><span style="color:#222222"><img id="Picture 30" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image023.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:93px; padding:5px; width:615px" /></span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><strong><span style="font-size:14pt"><span style="color:#222222">Note:</span></span></strong><span style="font-size:14pt"><span style="color:#222222">&nbsp;if we force to rename the project folder other than rootProject.name and use eclipse.project.name = project.rootDir.name to be able to successfully import the ide, then after build, we have to delete the line this command.&nbsp;Otherwise, the build process will generate an error</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 33" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image024.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:241px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">After gradle build is successful, a build folder will appear as shown</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black"><img id="Picture 22" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image025.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:273px; padding:5px; width:624px" /></span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Package webapp jar is built at path \webapp\build\libs</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Similarly, package common jar \common \build\libs</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Open cmd and use the cd command to move to the directory containing the jar we just built.&nbsp;Specifically here is .\webapp\build\libs</span></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Next we run the command java &ndash;jar &lt;package name jar&gt; to run the server</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 6" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image026.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:192px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:black"><img id="Picture 23" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image027.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:121px; padding:5px; width:302px" /></span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Since we did not create application.properties file for configuration, the default server will run on port 8080.We&nbsp;<strong>can look on the server screen to determine the port and version of tomcat being hosted.</strong></span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 37" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image028.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:48px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">As we can see in the run jar, in the first info line, Starting Application&hellip; with PID 8792 or all INFO lines that follow are 8792. This means, this process is currently running in windows with pid 8792</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">To&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">turn off the server, we have 3 ways:</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Press Ctrl + c</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Open another cmd and type taskkill /f /pid 8792</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 31" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image029.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:198px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">To see all taskkill commands, we type taskkill /?</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 34" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image030.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:864px; padding:5px; width:549px" /></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="color:#222222">2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:14pt"><span style="color:#222222">Open Task Manager and find the process jar to kill</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 35" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image031.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:556px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">To display PID on Task Manager, we right-click on any label in Name, Status, CPU... and select PID</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 36" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image032.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:516px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">The whole process above is a guide on building jar, so what if we want to build a package war to deploy to tomcat server?</span></span></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We make the configuration add the following content to the build.gradle file in the web application package as shown below</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 24" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image033.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:405px; padding:5px; width:552px" /></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We will apply one more plugin, war.</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Change from bootJar to bootWar</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">And finally implement more tomcat server dependency</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">Note&nbsp;&nbsp;&nbsp;</span></span></span><strong><span style="font-size:14pt"><span style="color:#222222">_</span></span></strong></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Gradle only builds 1 package at a time, even if we have to bootWar and bootJar</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">If the war plugin is not applied, an error will arise when building with bootWar</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Besides, because by default spring boot is starting the server and the application with jar and tomcat packages cannot recognize the application itself but must be a servlet because the web application is built on top of a Servlet-based application with configuration is the web deployment descriptor (we used to be familiar with web.xml).</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">While</span></span></span><span style="font-size:14pt"><span style="color:#222222">Spring boot used Java Configuration to overwrite XML Configuration</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">In</span></span></span><span style="font-size:14pt"><span style="color:#222222">addition,&nbsp;<em>the SpringBootServletInitializer</em>&nbsp;&nbsp;class</span></span>&nbsp;implements the&nbsp;&nbsp;<em>WebApplicationInitializer</em>&nbsp;&nbsp;interface and overrides the web configuration at the time the application is deployed.&nbsp;So it&#39;s easy to redeploy a Servlet-based Application based on the Java Configuration</span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">Conclusion</span></span></span><span style="font-size:14pt"><span style="color:#222222">, to deploy the web application (war package) on tomcat we need to add extends SpringBootServletInitializer to the main file of the specific web application as shown below</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 38" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image034.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:268px; padding:5px; width:620px" /></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We execute the gradle build command (&nbsp;<strong><em>every time we change the source code we don&#39;t need to rerun the gradle wrapper</em></strong>&nbsp;), we will see the war package in the \webapp\build\libs folder</span></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">After that, we start the standalone tomcat server for test deployment.</span></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Start tomcat server with cmd</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 39" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image035.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:72px; padding:5px; width:496px" /></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Tomcat is started</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 40" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image036.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:82px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">Copy</span></span></span><span style="font-size:14pt"><span style="color:#222222">war package to tomcat&#39;s webapp directory.&nbsp;Tomcat will deploy &ndash; deploy will be the same as running with jar</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 41" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image037.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:384px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">The</span></span></span><span style="font-size:14pt"><span style="color:#222222">sign of successful deployment is that the war package is extracted in the deploy directory</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 42" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image038.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:175px; padding:5px; width:503px" /></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Test the application on the browser</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 43" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image039.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:118px; padding:5px; width:349px" /></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">&middot;</span></span></span><span style="font-size:14pt"><span style="color:#222222">The process of undeploy the application just delete the war package and the extracted folder from tomcat&#39;s webapp folder.&nbsp;Server will display</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 44" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image040.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:166px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="margin-left:192px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Symbol"><span style="color:#222222">Turn</span></span></span><span style="font-size:14pt"><span style="color:#222222">off the tomcat server with the shutdown command or Ctrl + C</span></span></span></span></span></span></p>

<p style="margin-left:72px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><strong><span style="font-size:16pt"><span style="color:#222222">IV.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><strong><span style="font-size:16pt"><span style="color:#222222">Issues related to using gradle</span></span></strong></span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Let&#39;s learn more why bootJar can find main() function to build executable jar when we don&#39;t declare main() where?</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">According to gradle, by default executable archive&#39;s main class will be configured automatically by searching for class with public static void main(String[])</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">So what if we intentionally leave out parameters in main() and build?</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We edit the Application.java file as shown below</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 25" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image041.png" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:385px; padding:5px; width:518px" /></span></span></span></span></span></p>

<p style="margin-left:144px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Wingdings"><span style="color:#222222">&sect;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">We do gradle build again, we will have the result as shown below</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 26" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image042.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:289px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">To perform overriding finding main() with parameters and for successful build, we just need to add mainClass property and specify where main class is in bootJar</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 27" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image043.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:197px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">Perform a rebuild</span></span></span></span></span></span></p>

<p style="text-align:center"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="color:black"><img id="Picture 28" src="http://img.tobebetter.info/khanhkt/Springs/MultiModule_Gradle_Intro_files/image044.jpg" style="background:#ffffff; border:1px solid #eeeeee; box-shadow:rgba(0, 0, 0, 0.1) 1px 1px 5px; height:325px; padding:5px; width:624px" /></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:start"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;"><span style="color:#222222">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style="font-size:14pt"><span style="color:#222222">For detailed information about build jar and war, refer here:&nbsp;</span></span><span style="color:black"><a href="https://docs.spring.io/spring-boot/docs/current/gradle-plugin/reference/htmlsingle/#packaging-executable" style="text-decoration:underline; color:#0563c1">Spring Boot Gradle Plugin Reference Guide</a></span></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">&nbsp;</span></span></span></span></p>

<p style="margin-left:48px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:Calibri,sans-serif">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:14pt"><span style="color:black">Finally, it is very easy to reuse projects or libraries,</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:14pt"><span style="color:black">We can separate the sub-projects into other projects and configure the include as the steps outlined above</span></span></span></span></span></span></p>

<p style="margin-left:96px; text-align:justify"><span style="font-size:12pt"><span style="background-color:white"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Courier New&quot;">o&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:14pt"><span style="color:black">Or you can use the jar packages built from the common project into the application according to the mechanism of using the library</span></span></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">&nbsp;</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">We have just learned the basics of the Gradle build tool and at the same time decoupled the project module using Springboot framework</span></span></span></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">&nbsp;</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">All project creation process is completely manual.&nbsp;IDE only acts as an environment to support us in the coding process.&nbsp;Every IDE that applies projects using gradle is also based on the standard rules set out by gradle.</span></span></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">This article gives a solution to backup when the IDE has an error and apply the application deployment process that needs to fix the bug, we can still use the manual method with the console and the available tools without the need. have to rely too much on the IDE.</span></span></span></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222">&nbsp;</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:11pt"><span style="background-color:white"><span style="font-family:Calibri,sans-serif"><span style="color:#222222"><span style="font-size:14pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#222222">We hope you will comment on the content of this article because the article is shared based on the subjective opinion of the author.&nbsp;See you in the next articles.</span></span></span></span></span></span></span></p>
', N'<p><span style="font-size:26px"><strong>Purpose</strong></span>: <span style="font-size:16px">In this article, we show how to build a java web project, divided into 2 modules, Web application and Library common. The goal of this problem is to break down the project for easy management and convert common features that can be reused in other projects into libraries. Gradle is used to make the build tool in this article.</span></p>
', N'Build Multi Module Java Web Application Using Springboot Framework with Gradle', CAST(N'2022-12-13' AS Date), CAST(N'2022-12-13' AS Date), 1)
GO
INSERT [dbo].[couseware] ([id], [content], [short_content], [title], [created_date], [modified_date], [category_id]) VALUES (23, N'<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">- The application is developed based on the content of design consultancy and is<strong>MD Online Joint Stock Company approved the solution and applied it at the company.&nbsp;The orientation of the system is to apply the metaverse in supporting remote recruitment for experts and candidates who do not work in the position or area of ââthe recruitment company but ensure to have real experiences in the company&#39;s environment. company at the time of contact, application and work in the recruitment process.&nbsp;A job fair is only organized based on the recruitment plan of the departments in the company to conduct online to save time for candidates in the process from researching, evaluating, interviewing to hiring. Assist in creating reusable resumes for candidates.&nbsp;In addition, the orientation of the system is also towards increasing space benefits in that the candidate does not need to be in the company&#39;s area or location (maybe abroad,&nbsp;In this project, reducing the time during the interview process and ensuring the overall experience is required&nbsp;</strong></span></em><strong><em><span style="font-size:10.5pt"><span style="font-family:Wingdings">and</span></span></em></strong><strong><em><span style="font-size:10.5pt">&nbsp;Metaverse is intended to be used in conjunction with the way of organizing support for the hosting. their recruitment dates on the system are determined for development</span></em></strong></span></span></span></span></p>

<p><a name="more"></a></p>

<p style="text-align:start">&nbsp;</p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">In addition, the system is built based on a consulting process that combines requests from users to manage job fairs from a specific company through the process of creating, organizing and operate a job fair that incorporates a metaverse.&nbsp;Moreover, the system must support an interactive environment between employers and candidates, record work and communicate with candidates through cv, test and record interview results.&nbsp;The hosting service system for participating companies with available plans and human resources is included in the format without concern for the company&#39;s personnel management to use.&nbsp;The system determines the cost of paying the company to use through a license with a policy.&nbsp;The system collects information to assist in synthesizing information about the job fair from start to finish to create a view to help the company learn from or evaluate other job fair implementation processes depending on the ability of the employer. manager.&nbsp;The main process of companies in building and managing job fair is as follows</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;&nbsp;+ The company manager will set up a jobfair, upload or use the default 3D map showing the company&#39;s environment and give a list of human resources with roles in each booth (corresponding to the department or partner of the company) .</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;&nbsp;+ The company manager will set the time from preparing the organization, the time of the event, designing the landing page and other related information.&nbsp;This information will be forwarded to the relevant job fair participants.</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;&nbsp;+ The booth manager (supervisor) will perform the job assignment, design the booth, bring the content to the vacancy according to the given deadline.</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;&nbsp;+ The interviewer (interviewer), on duty (staff, employee) will perform the work according to the assigned schedule</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;&nbsp;+ Candidates (attendance) participating in the system can visit directly in 3D environment, see basic information of booths, directly join booths to interact, search for information, build CVs for their own&hellip;</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;&nbsp;+ Candidates can submit their CVs in the booths to participate through the tests to be transferred to the application process if qualified.</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;&nbsp;+ The system supports the assessment of the suitability of the CV and informs the candidates and also creates similar assessment information about the criteria to support the interview in the selection of documents for approval.</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;&nbsp;+ The interviewer will approve the documents</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;&nbsp;+ The system automatically schedule and notify the candidates</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;&nbsp;+ The system supports space and tools for interviewing to determine scheduled attendance and interviews, record information about the interview as a premise to provide information for recruiters or personnel when processing records.</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;&nbsp;+ The support system ends when the job fair reaches the deadline</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;&nbsp;+&hellip;</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">- The application can perform the following functions:</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;+ Web application supports user manipulation in company registration, attendances.</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;+ Web application supports building job fair according to the process and operating according to the process mentioned above.</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;+ Web application supports the creation of summary reports related to each job fair, to the management of the job fair of each company, to the management of the job fair of the whole system</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;+ Web application that provides license and policy management for the company using the system</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;+ Web application supports 3D spatial environment for actual observation of companies and departments</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;+ Web application supports attendees to communicate with departments, enhancing experience when taking tests and interviews</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;+ Web application that supports managing and viewing the jobs of each user role participating in the job fair</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;+ Web application supports other components in system support and management</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;+ The system supports notifications depending on the jobs related to the roles used in the system</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em><span style="font-size:10.5pt">&nbsp;+&hellip;</span></em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em>- Building a process based on actual needs collected directly from project owners, proposing design ideas and solutions for software and actual implementation.&nbsp;From here, the system is gradually tested and evaluated to improve...</em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em>- The application uses a mechanism so that the system can run automatically with the tasks to be processed without operator interaction.</em></span></span></span></span></p>

<p style="text-align:start"><span style="font-size:13.2px"><span style="color:#222222"><span style="font-family:Arial,Tahoma,Helvetica,FreeSans,sans-serif"><span style="background-color:#ffffff"><em>- The application builds on the foundation of the Web application combining 3D, Metaverse to increase the interaction and user experience</em></span></span></span></span></p>
', N'<p><em><span style="font-size:10.5pt">- The application is developed based on the content of design consultancy and is<strong>MD Online Joint Stock Company approved the solution and applied it at the company.&nbsp;The orientation of the system is to apply the metaverse in supporting remote recruitment for experts and candidates who do not work in the position or area of ââthe recruitment company but ensure to have real experiences in the company&#39;s environment.</strong></span></em></p>
', N'Capstone: JobFair online management (Job fair online organization system)', CAST(N'2022-12-13' AS Date), CAST(N'2022-12-13' AS Date), 1)
GO
INSERT [dbo].[couseware] ([id], [content], [short_content], [title], [created_date], [modified_date], [category_id]) VALUES (27, N'<h2>Article Summary</h2>

<p><a name="tfb-abstract-information-technology-and-ethics-abstract-1"></a></p>

<p>Information technology ethics is the study of the ethical issues arising out of the use and development of electronic technologies. Its goal is to identify and formulate answers to questions about the moral basis of individual responsibilities and actions, as well as the moral underpinnings of public policy.</p>

<p>Information technology ethics raises new and unique moral problems because information technology itself has brought about dramatic social, political, and conceptual change. Because information technology affects not only how we do things but how we think about them, it challenges some of the basic organizing concepts of moral and political philosophy such as property, privacy, the distribution of power, basic liberties and moral responsibility.</p>

<p>Specific questions include the following. What are the moral responsibilities of computer professionals? Who is to blame when computer software failure causes harm? Is computer hacking immoral? Is it immoral to make unauthorized copies of software? Questions related to public policy include: what constitutes just policy with respect to freedom of speech, association, and the exercise of other civil liberties over computer networks? What determines the extent and limits of property rights over computer software and electronic information? What policies adequately protect a right to privacy?</p>

<p>The list of questions shifts in response to developments in information technology. One noteworthy example is the rise in prominence of questions about communication and information in response to the explosive growth of high-speed digital networks. This shift has subsumed the field commonly called &lsquo;computer ethics&rsquo; under the broader rubric of &lsquo;information technology ethics&rsquo;.</p>
', N'<p>Information technology ethics is the study of the ethical issues arising out of the use and development of electronic technologies. Its goal is to identify and formulate answers to questions about the moral basis of individual responsibilities and actions, as well as the moral underpinnings of public policy.</p>
', N'Information technology and ethics', CAST(N'2022-12-13' AS Date), CAST(N'2022-12-13' AS Date), 14)
GO
INSERT [dbo].[couseware] ([id], [content], [short_content], [title], [created_date], [modified_date], [category_id]) VALUES (28, N'<h2>INTRODUCTION</h2>

<p>The Each general public structures a lot of guidelines that sets up the limits of commonly acknowledged conduct. These guidelines are frequently communicated in articulations about how individuals ought to carry on, and they fit together to shape the ethical code by which a general public lives. Shockingly, the distinctive standards frequently have logical inconsistencies, and individuals are now and again dubious about which principle to pursue. For example, in the event that you witness a companion duplicate another person&rsquo;s answers while taking a test, you may be gotten in a contention between devotion to your companion and the benefit of coming clean. In some cases the tenets don&rsquo;t appear to cover new circumstances, and an individual must decide how to apply existing guidelines or develop new ones. You may strongly support personal privacy, but what rules do you think are acceptable for governing the appropriate use of company resources, such as e-mail and Internet access?</p>

<p>The term profound quality alludes to social shows about good and bad that are so broadly shared that they become the reason for a built up accord. Notwithstanding, singular perspectives on what is good may differ by age, social gathering, ethnic foundation, religion, beneficial encounters, training, and sexual orientation. There is boundless concurrence on the corruption of homicide burglary, and fire related crime, yet different practices that are acknowledged in one culture may be inadmissible in another. Indeed, even inside a similar society, individuals can have solid contradictions over essential good issues.</p>

<p>Ethics are one&rsquo;s close to home convictions about good and bad, while the term morals portrays guidelines or codes of conduct expected of a person by a gathering (country, association, calling) to which an individual has a place. For instance, the morals of the law calling request that resistance lawyers protect a blamed customer to the best for their capacity, regardless of whether they realize that the customer is liable of the most horrifying and ethically shocking wrongdoing one could envision.</p>

<p>Law is a system of rules that tells us what we can and cannot do. Laws are enforced by a set of institutions (the police, courts, law-making bodies). Legal acts are acts that conform to the law. Moral acts conform to what an individual believes to be the right thing to do. Laws can proclaim an act as legal, although many people may consider the act immoral&mdash;for example, abortion.</p>

<p>The remainder of this chapter provides an introduction to ethics in the business world. It discusses the importance of ethics in business, outlines what businesses can do to improve their ethics, provides advice on creating an ethical work environment, and suggests a model for ethical decision making.</p>

<p>Morals is a lot of convictions about good and bad conduct inside a general public. Moral conduct fits in with commonly acknowledged standards&mdash;a large number of which are practically all inclusive. Nonetheless, albeit almost everybody would concur that lying and tricking are exploitative, suppositions about what establishes moral conduct frequently fluctuate drastically. For instance, demeanors toward programming theft&mdash;that is, the act of illicitly making duplicates of programming or empowering others to get to programming to which they are not entitled&mdash;run from solid restriction to acknowledgment of the training as a standard way to deal with leading business. In 2007, 38% of all product available for use worldwide was pilfered&mdash;at an expense of almost $48 billion (USD). The most astounding theft rate&mdash;93%&mdash;was in Armenia; Bangladesh, Azerbaijan, and Moldova all had robbery rates of 92%. The least theft rates were in the US (20%), Luxembourg (21%), and New Zealand (22%).</p>

<p>As youngsters develop, they learn confounded undertakings&mdash;strolling, talking, swimming, riding a bicycle, composing the letters in order&mdash;that they perform without really thinking for the remainder of their lives. Individuals additionally create propensities that make it simpler to pick between what society thinks about positive or negative. Excellencies are propensities that slant individuals to do what is adequate, and indecencies are propensities for inadmissible conduct. Reasonableness, liberality, and dependability are instances of ideals, while vanity, voracity, jealousy, and outrage are viewed as indecencies. Individuals&rsquo; ethics and indecencies help characterize their own esteem framework&mdash;the complex plan of good qualities by which they live.</p>

<h2>ETHICS</h2>

<p>The development of the internet, the capacity to catch and store immense measures of individual information, and more prominent dependence on data frameworks in all parts of life have expanded the hazard that data innovation will be utilized dishonestly. Amidst the numerous IT achievements as of late, the significance of morals and human qualities has been underemphasized&mdash;with a scope of outcomes. Here are some examples that raise public concern about the ethical use of information technology:</p>

<ul>
	<li>Many representatives may have their email and Web get to checked while at work, as bosses battle to adjust their need to oversee vital organization resources and work time with representatives&rsquo; craving for protection and self-heading.</li>
	<li>Millions of individuals have downloaded music and motion pictures at no charge and in clear infringement of copyright laws at enormous cost to the proprietors of those copyrights.</li>
	<li>Organizations contact a great many individuals worldwide through spontaneous email (spam) as a very minimal effort advertising approach.</li>
	<li>Hackers break into databases of money related and retail foundations to take client data, at that point use it to submit wholesale fraud&mdash;opening new records and charging buys to clueless exploited people.</li>
	<li>Students around the globe have been discovered downloading material from the Internet and counterfeiting content for their research papers.</li>
	<li>Web locales plant treats or spyware on guests&rsquo; hard drives to follow their online buys and exercises.</li>
</ul>

<h3>Is There a Place for Ethics in IT?</h3>

<p>On March 15, 2005, Michael Schrage published an article in CIO magazine entitled &ldquo;Ethics, Schematics,&rdquo; which stirred up a great deal of controversy in the IT community. In the article,</p>

<p>Schrage proposed that CIOs (chief information officers) &ldquo;should stop trying to do the &lsquo;right thing&rsquo; when implementing IT and focus instead on getting their implementations right.&rdquo; Schrage argued that ethics had become a buzzword, just like quality in the 1980s; he asserted that the demand for ethical behaviour interferes with business efficiency.</p>

<p>In the article, Schrage gave a couple of situations to back up his sentiment. In one such model, an organization is building up a client relationship the board (CRM) framework, and the staff is buckling down to comply with the time constraint. The organization intends to redistribute the upkeep and backing of the CRM framework once it is created, implying that there is a decent possibility that 66% of the IT staff will be laid off. OK unveil this data? Schrage replied, &lsquo;I don&rsquo;t think so.&rsquo;</p>

<p>In another situation, Schrage inquired as to whether they would consider purposely denying critical data of their supervisor on the off chance that they realized that its divulgence would incite his or her prompt counterproductive mediation in an essential task. Schrage said he would retain it. Business includes contending values, he contended, and exchange offs must be made to shield business activities from getting to be incapacitated.</p>

<p>Schrage was hit with a flood of reactions blaming him for being despicable, limited, and lethargic. Other criticism gave new points of view on his situations that Schrage had not considered in his article. For instance, an IT supervisor at Boise State College contended that making the best choice is useful for business. Not revealing cutbacks, she contended, is a trap that just works once. Remaining representatives will never again trust the organization and may seek after employments where they can feel progressively safe. New occupation candidates will reconsider before uniting an organization with a notoriety for abusing representatives. Different perusers reacted to that situation by proposing that the organization could attempt to keep up steadfastness by offering motivations for the individuals who stayed or by giving occupation position administrations to withdrawing representatives.</p>

<p>Tending to the second situation, another peruser, Dewey, recommended that not giving the manager vital data could reverse discharge on the representative: &lsquo;Imagine a scenario in which your supervisor discovers reality. Imagine a scenario where you weren&rsquo;t right and the manager could have made a difference. When your supervisor realizes that you lied once, will he trust you whenever?&rsquo;</p>

<p>Another peruser had really worked under an ineffective, receptive, interfering supervisor. In light of his experience, he recommended addressing the supervisor about the issue at a suitable time and spot. Likewise, the peruser clarified that as circumstances emerged that expected him to pass on vital data that may inspire impedance; he created activity designs and made firm introductions to his supervisor. The supervisor, the peruser guaranteed Schrage, will adjust.</p>

<p>A few perusers contended that CIOs must consider the organization&rsquo;s long haul needs instead of simply the present needs of a particular venture. Others contended that taking part in unscrupulous conduct, notwithstanding for the best of purposes, crosses a line that in the long run prompts progressively genuine transgressions. A few perusers presumed that Schrage had distributed the article to incite shock. Another peruser concurred with Schrage, contending that morals needs to &lsquo;take a secondary lounge to spending plans and calendars&rsquo; in a substantial association. This peruser clarified, &lsquo;By the day&rsquo;s end, IT is the business.&rsquo;</p>

<h2>COMMON ETHICAL ISSUES FOR IT USERS</h2>

<p>There is also the possible threat of unfaithful or vengeful employees that can use information technology to achieve their personal goals which might be harmful to an organization. IT is not bad in itself, but the way humans use the tools provided by information technology has brought some serious challenges.</p>

<h3>Software Piracy</h3>

<p>As mentioned earlier in this chapter, software piracy in a corporate setting can sometimes be directly traceable to IT expertss&mdash;they may enable it to occur, or they may effectively take part in it. Corporate IT use strategies and the board ought to urge clients to report occasions of robbery and to challenge its training.</p>
', N'<h2>INTRODUCTION</h2>

<p>The Each general public structures a lot of guidelines that sets up the limits of commonly acknowledged conduct. These guidelines are frequently communicated in articulations about how individuals ought to carry on, and they fit together to shape the ethical code by which a general public lives. Shockingly, the distinctive standards frequently have logical</p>
', N'Ethics in Information Technology', CAST(N'2022-12-13' AS Date), CAST(N'2022-12-13' AS Date), 14)
GO
INSERT [dbo].[couseware] ([id], [content], [short_content], [title], [created_date], [modified_date], [category_id]) VALUES (29, N'<p><strong>Probability And Statistics&nbsp;</strong>are the&nbsp;two important concepts in Maths. Probability is all about chance. Whereas statistics is more about how we handle various data using different techniques.&nbsp; It helps to represent complicated data in a very easy and understandable way. Statistics and probability are usually introduced in Class 10, Class 11 and Class 12 students are preparing for school exams and competitive examinations.&nbsp;The introduction of these fundamentals is briefly given in your academic books and notes. The statistic has a huge application nowadays in data science professions. The professionals use the stats and do the predictions of the business. It helps them to predict the future&nbsp;<a href="https://byjus.com/maths/profit-and-loss/">profit or loss</a>&nbsp;attained by the company.</p>

<p><strong>Table of contents:</strong></p>

<ul>
	<li><a href="https://byjus.com/#probability">Probability</a></li>
	<li><a href="https://byjus.com/#statistics">Statistics</a></li>
	<li><a href="https://byjus.com/#terms">Terms</a></li>
	<li><a href="https://byjus.com/#probability%20topics">Probability Topics</a></li>
	<li><a href="https://byjus.com/#statistics%20topics">Statistics Topics</a></li>
	<li><a href="https://byjus.com/#formulas">Formulas</a></li>
	<li><a href="https://byjus.com/#solved%20examples">Solved Examples</a></li>
</ul>

<p><a id="probability" name="Probability"></a></p>

<h2>What is Probability?</h2>

<p>Probability denotes the possibility of the outcome of any random event. The meaning of this term is to check the extent to which any event is likely to happen. For example,&nbsp;when we flip a coin&nbsp;in the air,&nbsp;what is the possibility of&nbsp;getting a head? The answer to this question is based on the number of possible outcomes. Here the possibility is either head or tail will be the outcome. So, the probability of a head to come as a result is 1/2.</p>

<p>The probability is the measure of the likelihood of an event to happen. It measures the certainty of the event. The formula for probability is given by;</p>

<p><strong>P(E) = Number of Favourable Outcomes/Number of total outcomes</strong></p>

<p><strong>P(E) = n(E)/n(S)</strong></p>

<p>Here,</p>

<p>n(E) = Number of event favourable to event E</p>

<p>n(S) = Total number of outcomes</p>

<table style="width:407px">
	<tbody>
		<tr>
			<td>
			<ul>
				<li><a href="https://byjus.com/maths/probability-class-9/">Probability Class 9</a></li>
				<li><a href="https://byjus.com/maths/probability-for-class-10/">Probability For Class 10</a></li>
				<li><a href="https://byjus.com/maths/probability-class-11/">Probability Class 11</a></li>
				<li><a href="https://byjus.com/maths/probability-for-class-12/">Probability For Class 12</a></li>
				<li><a href="https://byjus.com/maths/statistics-for-class-10/">Statistics For Class 10</a></li>
				<li><a href="https://byjus.com/maths/statistics-class-11/">Statistics Class 11</a></li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>

<p><a id="statistics" name="Statistics"></a></p>

<h2>What is Statistics?</h2>

<p>Statistics is the study of the collection, analysis, interpretation, presentation, and organization of data. It is a method of collecting and summarising the data. This has many applications from a small scale to large scale. Whether it is the study of the population of the country or its economy, stats are used for all such data analysis.</p>

<p>Statistics has a huge scope in many fields such as sociology, psychology, geology, weather forecasting, etc. The data collected here for analysis could be quantitative or qualitative. Quantitative data are also of two types such as: discrete and continuous. Discrete data has a fixed value whereas continuous data is not a fixed data but has a range. There are many terms and formulas used in this concept.&nbsp;See the below table to&nbsp;understand&nbsp;them.<br />
<a id="terms" name="Terms"></a></p>

<h2>Terms Used in Probability and Statistics</h2>

<p>There are various terms utilised in the probability and statistics concepts, Such as:</p>

<ul>
	<li>Random Experiment</li>
	<li>Sample Sample</li>
	<li>Random variables</li>
	<li>Expected Value</li>
	<li>Independence</li>
	<li>Variance</li>
	<li>Mean</li>
</ul>

<p>Let us discuss these terms one by one.</p>

<h3>Random Experiment</h3>

<p>An experiment whose result cannot be predicted, until it is noticed is called a random experiment. For example, when we throw a dice randomly, the result is uncertain to us. We can get any output between 1 to 6. Hence, this experiment is random.</p>

<h3>Sample Space</h3>

<p>A sample space is the set of all possible results or outcomes of a random experiment. Suppose, if we have thrown a dice, randomly, then the sample space for this experiment will be all possible outcomes of throwing a dice, such as;</p>

<p>Sample Space = { 1,2,3,4,5,6}</p>

<h3>Random Variables</h3>

<p>The variables which denote the possible outcomes of a random experiment are called random variables. They are of two types:</p>

<ol>
	<li>Discrete Random Variables</li>
	<li>Continuous Random Variables</li>
</ol>

<p>Discrete random variables take only those distinct values which are countable. Whereas continuous random variables&nbsp;could&nbsp;take an infinite&nbsp;number&nbsp;of possible values.</p>

<h3>Independent Event</h3>

<p>When the probability of occurrence of one event has no impact on the probability of another event, then both the events are termed as independent of each other. For example, if you flip a coin and at the same time you throw a dice, the probability of getting a &lsquo;head&rsquo; is independent of the probability of getting a 6 in dice.</p>

<h3>Mean</h3>

<p>Mean of a random variable is the average of the random values of the possible outcomes of a random experiment. In simple terms, it is the expectation of the possible outcomes of the random experiment, repeated again and again or n number of times. It is also called the expectation of a random variable.</p>

<h3>Expected Value</h3>

<p>Expected value is the mean of a random variable. It is the assumed value which is considered for a random experiment.&nbsp; It is also called expectation, mathematical expectation or first moment. For example, if we roll a dice having six faces, then the expected value will be the average value of all the possible outcomes, i.e. 3.5.</p>

<h3>Variance</h3>

<p>Basically, the variance tells us how the values of the random variable are spread around the mean value. It specifies the distribution of the sample space across the mean.<br />
<a id="probability topics" name="Probability Topics"></a></p>

<h2>List of Probability Topics</h2>

<p><strong>Basic probability topics are</strong>:</p>

<table>
	<tbody>
		<tr>
			<td>Addition Rule of Probability</td>
			<td>Binomial Probability</td>
			<td><a href="https://byjus.com/maths/bayes-theorem/">Bayes Theorem</a></td>
		</tr>
		<tr>
			<td>Compound Events</td>
			<td>Compound Probability</td>
			<td>Complementary Events</td>
		</tr>
		<tr>
			<td><a href="https://byjus.com/maths/conditional-probability/">Conditional Probability</a></td>
			<td>Complementary Events</td>
			<td>Coin Toss Probability</td>
		</tr>
		<tr>
			<td><a href="https://byjus.com/maths/independent-events/">Dependent Events</a></td>
			<td><a href="https://byjus.com/maths/experimental-probability/">Experimental Probability</a></td>
			<td>Geometric Probability</td>
		</tr>
		<tr>
			<td><a href="https://byjus.com/maths/independent-events/">Independent Events</a></td>
			<td><a href="https://byjus.com/maths/multiplication-rule-probability/">Multiplication Rule of Probability</a></td>
			<td><a href="https://byjus.com/maths/mutually-exclusive-events/">Mutually Exclusive Events</a></td>
		</tr>
		<tr>
			<td>Properties of Probability</td>
			<td>Probability Line</td>
			<td>Probability without Replacement</td>
		</tr>
		<tr>
			<td><a href="https://byjus.com/maths/random-variable/">Random Variables</a></td>
			<td>Simple Event</td>
			<td><a href="https://byjus.com/maths/sample-space/">Sample Space</a></td>
		</tr>
		<tr>
			<td><a href="https://byjus.com/maths/tree-diagram/">Tree Diagram</a></td>
			<td><a href="https://byjus.com/maths/theoretical-probability/">Theoretical Probability</a></td>
			<td><a href="https://byjus.com/maths/types-of-events-in-probability/">Types of Events</a></td>
		</tr>
		<tr>
			<td><a href="https://byjus.com/maths/experimental-probability/">Experimental Probability</a></td>
			<td><a href="https://byjus.com/maths/axiomatic-definition-to-probability/">Axiomatic Probability</a></td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<p><a id="statistics topics" name="Statistics Topics"></a></p>

<h2>List of Statistical Topics</h2>

<p>Basic Statistics topics are:</p>

<table>
	<tbody>
		<tr>
			<td>
			<p>Box and Whisker Plots</p>
			</td>
			<td>Comparing Two Means</td>
			<td>Comparing Two Proportions</td>
		</tr>
		<tr>
			<td><a href="https://byjus.com/maths/categorical-data/">Categorical Data</a></td>
			<td><a href="https://byjus.com/maths/central-tendency/">Central Tendency</a></td>
			<td><a href="https://byjus.com/maths/correlation/">Correlation</a></td>
		</tr>
		<tr>
			<td><a href="https://byjus.com/maths/data-handling/">Data Handling</a></td>
			<td>Degree of freedom</td>
			<td>Empirical Rule</td>
		</tr>
		<tr>
			<td><a href="https://byjus.com/maths/frequency-distribution-table/">Frequency Distribution Table</a></td>
			<td>Five Number Summary</td>
			<td><a href="https://byjus.com/maths/graphical-representation/">Graphical Representation of Data</a></td>
		</tr>
		<tr>
			<td><a href="https://byjus.com/maths/histogram/">Histogram</a></td>
			<td><a href="https://byjus.com/maths/mean/">Mean</a></td>
			<td><a href="https://byjus.com/maths/median/">Median</a></td>
		</tr>
		<tr>
			<td><a href="https://byjus.com/maths/mode/">Mode</a></td>
			<td>Data Range</td>
			<td><a href="https://byjus.com/maths/relative-frequency/">Relative Frequency</a></td>
		</tr>
		<tr>
			<td><a href="https://byjus.com/maths/population-and-sample/">Population and Sample</a></td>
			<td>Scatter Plots</td>
			<td><a href="https://byjus.com/maths/standard-deviation/">Standard Deviation</a></td>
		</tr>
		<tr>
			<td>Ungrouped Data</td>
			<td><a href="https://byjus.com/maths/variance/">Variance</a></td>
			<td><a href="https://byjus.com/maths/data-sets/">Data Sets</a></td>
		</tr>
	</tbody>
</table>

<p><a id="formulas" name="Formulas"></a></p>

<h2>Probability and Statistics Formulas</h2>

<p><a href="https://byjus.com/probability-formulas/">Probability Formulas</a>: For two events A and B:</p>

<table>
	<tbody>
		<tr>
			<td>Probability Range</td>
			<td>Probability of an event ranges from 0 to 1 i.e. 0 &le; P(A) &le; 1</td>
		</tr>
		<tr>
			<td>Rule of Complementary Events</td>
			<td>P(A&rsquo;) + P(A) = 1</td>
		</tr>
		<tr>
			<td>Rule of Addition</td>
			<td>P(A&cup;B) = P(A) + P(B) &ndash; P(A&cap;B)</td>
		</tr>
		<tr>
			<td>Mutually Exclusive Events</td>
			<td>P(A&cup;B) = P(A) + P(B)</td>
		</tr>
		<tr>
			<td>Independent Events</td>
			<td>P(A&cap;B) = P(A)P(B)</td>
		</tr>
		<tr>
			<td>Disjoint Events</td>
			<td>P(A&cap;B) = 0</td>
		</tr>
		<tr>
			<td>Conditional Probability</td>
			<td>P(A|B) = P(A&cap;B)/P(B)</td>
		</tr>
		<tr>
			<td>Bayes Formula</td>
			<td>P(A|B) = P(B|A) P(A)/P(B)</td>
		</tr>
	</tbody>
</table>

<p><a href="https://byjus.com/statistics-formulas/">Statistics Formulas</a>&nbsp;:&nbsp;Some important formulas are listed below:</p>

<p>Let x be an item given and n is the total number of items.</p>

<table>
	<tbody>
		<tr>
			<td>Mean</td>
			<td>Mean = (Sum of all the terms)/(Total number of terms)&nbsp;
			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>Mean=xâ=&sum;xn</p>
			</td>
		</tr>
		<tr>
			<td>Median</td>
			<td>
			<p>M=(n+12)th,&nbsp;if&nbsp;n=odd</p>
			&nbsp;

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>M=(n2)thterm+(n2+1)thterm2,&nbsp;if&nbsp;n=even</p>
			</td>
		</tr>
		<tr>
			<td>Mode &nbsp;</td>
			<td>The most frequently occurring value</td>
		</tr>
		<tr>
			<td>Standard Deviation</td>
			<td>
			<p>S.D(&sigma;)=&sum;i=1n(xi&minus;x&macr;)2n</p>
			</td>
		</tr>
		<tr>
			<td>Variance</td>
			<td>
			<p>V(&sigma;2)=&sum;i=1n(xi&minus;x&macr;)2n</p>
			</td>
		</tr>
	</tbody>
</table>

<p><a id="solved examples" name="Solved Examples"></a></p>

<h2>Solved Examples</h2>

<p>Here are some examples based on the concepts of statistics and probability to understand better. Students can practice more questions based on these solved examples to excel in the topic. Also, make use of the formulas given in this article in the above section to solve problems based on them.</p>

<p><strong>Example 1</strong>:&nbsp;<strong>Find the mean and mode of the following data: 2, 3, 5, 6, 10, 6, 12, 6, 3, 4.</strong></p>

<p><strong>Solution</strong>:</p>

<p>Total Count: 10</p>

<p>Sum of all the numbers: 2+3+5+6+10+6+12+6+3+7=60</p>

<p>Mean = (sum of all the numbers)/(Total number of items)</p>

<p>Mean = 60/10 = 6</p>

<p>Again, Number 6 is occurring for 3 times, therefore Mode = 6. Answer</p>

<p><strong>Example 2:</strong><strong>&nbsp;A bucket contains 5 blue, 4 green and 5 red balls. Sudheer is asked to pick 2 balls randomly from the bucket without replacement and then one more ball is to be picked. What is the probability he picked 2 green balls and 1 blue ball?</strong></p>

<p><strong>Solution</strong>: Total number of balls = 14</p>

<p>Probability of drawing</p>

<p>1 green ball = 4/14</p>

<p>another green ball = 3/13</p>

<p>1 blue ball = 5/12</p>

<p>Probability of picking 2 green balls and 1 blue ball = 4/14 * 3/13 * 5/12 = 5/182.</p>

<p><strong>Example 3</strong>:&nbsp;<strong>What is the probability that Ram will choose a marble at random and that it is not black if the bowl contains 3 red, 2 black and 5 green marbles.</strong></p>

<p><strong>Solution</strong>: Total number of marble = 10</p>

<p>Red and Green marbles = 8</p>

<p>Find the number of marbles that are not black and divide by the total number of marbles.</p>

<p>So P(not black) = (number of red or green marbles)/(total number of marbles)</p>

<p>= 8 /10</p>

<p>= 4/5</p>

<p><strong>Example 4: Find the mean of the following data:</strong></p>

<p><strong>55, 36, 95, 73, 60, 42, 25, 78, 75, 62</strong></p>

<p><strong>Solution:&nbsp;</strong>Given,</p>

<p>55 36 95 73 60 42 25 78 75 62</p>

<p>Sum of observations = 55 + 36 + 95 + 73 + 60 + 42 + 25 + 78 + 75 + 62 = 601</p>

<p>Number of observations = 10</p>

<p>Mean = 601/10 = 60.1</p>

<p><strong>Example 5: Find the median and mode of the following marks (out of 10) obtained by 20 students:</strong></p>

<p><strong>4, 6, 5, 9, 3, 2, 7, 7, 6, 5, 4, 9, 10, 10, 3, 4, 7, 6, 9, 9</strong></p>

<p><strong>Solution:&nbsp;</strong>Given,</p>

<p>4, 6, 5, 9, 3, 2, 7, 7, 6, 5, 4, 9, 10, 10, 3, 4, 7, 6, 9, 9</p>

<p>Ascending order: 2, 3, 3, 4, 4, 4, 5, 5, 6, 6, 6, 7, 7, 7, 9, 9, 9, 9, 10, 10</p>

<p>Number of observations = n = 20</p>

<p>Median = (10th&nbsp; + 11th observation)/2</p>

<p>= (6 + 6)/2</p>

<p>= 6</p>

<p>Most frequent observations = 9</p>

<p>Hence, the mode is 9.</p>
', N'<p><strong>Probability And Statistics&nbsp;</strong>are the&nbsp;two important concepts in Maths. Probability is all about chance. Whereas statistics is more about how we handle various data using different techniques.</p>
', N'Probability And Statistics', CAST(N'2022-12-13' AS Date), CAST(N'2022-12-13' AS Date), 13)
GO
INSERT [dbo].[couseware] ([id], [content], [short_content], [title], [created_date], [modified_date], [category_id]) VALUES (30, N'<p>&ldquo;<em>Write once, run anywhere&rdquo; seems to be the mantra that finds favour with application developers nowadays. This reduces the need for developers to write a lot of redundant code. .NET Core, an open source offering from Microsoft, (yes, Microsoft!) is just the tool for writing code for a cross-platform application that will work on Windows, Linux and macOS systems.</em></p>

<p>.NET Core is a free and open source framework for developing cross-platform applications targeting Windows, Linux and macOS. It is capable of running applications on devices, the cloud and the IoT. It supports four cross-platform scenarios: ASP.NET Core Web apps, command line apps, libraries and Web APIs. The recently released .NET Core 3 (preview bits) supports Windows rendering forms like WinForms, WPF and UWP, but only on Windows.</p>

<p>Historically, the .NET Framework has worked only on the Windows platform. It was released in 2002, and has millions of applications developed using it, which run on Windows servers and desktops. The stable version of the .NET Framework (Windows only) release is 4.7.2. With the help of the Mono project, developers were able to bring the .NET code on to mobile devices, macOS, and Linux, but not the applications. So they were managing two separate applications for cross-platform compatibility. Now, with the help of .NET Core, they can target any platform without any code changes; in short, they can now &ldquo;write once, and run anywhere.&rdquo;</p>

<p>.NET Core is an open source development platform and Microsoft contributed it to the .NET Foundation in 2014. It is now one of the most active .NET Foundation projects. It can be freely adopted by individuals and companies for personal, academic or commercial purposes. Multiple companies use .NET Core as a part of apps, tools, new platforms and hosting services. Some of these companies make significant contributions to .NET Core on GitHub, and provide guidance on product direction as part of the .NET Foundation Technical Steering Group. This group of companies includes Microsoft, Google, Red Hat, Unity, Samsung and JetBrains.</p>

<p>With .NET Core, developers can build and run .NET code on more than one platform of choice. As of this November, .NET Core 2.1 is generally available (production ready) whereas .NET Core 3.0 is under development, having had a few preview releases. .NET 3.0 GA is expected by early 2019.</p>

<p><a href="https://www.opensourceforu.com/wp-content/uploads/2019/01/net1.png" rel="noopener" target="_blank"><img alt="" src="https://www.opensourceforu.com/wp-content/uploads/2019/01/net1-350x97.png" style="height:97px; width:350px" /></a></p>

<p>Table 1: The .NET Core release table</p>

<p><strong>Why should developers care about .NET Core?</strong></p>

<p>Until 2010, every organisation wanted to design its applications using the SOA (service oriented architecture) pattern with API interfaces. The server operating system was chosen first and then the client components. But once the server platform is confirmed, it&rsquo;s hard to switch between the platforms. Java is well positioned and has become a natural choice for creating cross-platform apps, with Node, Python, etc, now added to this list.</p>

<p><strong>Key things to consider about .NET Core</strong></p>

<p>1.&nbsp;<strong>Cross-platform:</strong>&nbsp;It runs on Windows, macOS and Linux operating systems. With .NET Core you can target any application type that&rsquo;s running on any platform. Developers can reuse skills and code across all of them in a familiar environment. From mobile applications running on iOS, Android and Windows, to enterprise server applications running on Windows Server and Linux, or high scale microservices running in the cloud, .NET Core provides a solution for you.</p>

<p>2.<strong>&nbsp;Consistent across architectures:</strong>&nbsp;It runs your code with the same behaviour on multiple architectures, including x64, x86 and ARM.</p>

<p>3.&nbsp;<strong>Flexible deployment:</strong>&nbsp;.NET Core can be included in your app or installed side-by-side, user-wide or machine-wide. It can be used with Docker containers, which typically run Linux today, and it can host ASP.NET Core applications, allowing them to take advantage of the benefits of containers and microservices.</p>

<p>4.&nbsp;<strong>Modular:</strong>&nbsp;.NET Core supports the use of NuGet packages. Instead of assemblies, now developers can work with NuGet packages. In the .NET Framework, the framework updates are typically serviced through Windows updates, but .NET Core relies on its package manager to receive updates.</p>

<p>5.&nbsp;<strong>Microservices architecture:</strong>&nbsp;A microservices architecture allows a mix of technologies across a service boundary. This technology mix enables a gradual embrace of .NET Core for new microservices that work with other microservices or services. For example, you can mix microservices or services developed with the .NET Framework, Java, Ruby, or other monolithic technologies.</p>

<p>There are many infrastructure platforms available. Azure Service Fabric, for instance, is designed for large and complex microservice systems. Azure App Service is a good choice for stateless microservices. Other alternatives based on Docker fit any kind of microservices approach, as explained in the section on &lsquo;Containers&rsquo;. All these platforms support .NET Core and make them ideal for hosting your microservices.</p>

<p>6.&nbsp;<strong>Open source:</strong>&nbsp;.NET Core is open source and uses the MIT and Apache 2 licences. It is part of the .NET Foundation, which is an independent non-profit supporting the innovative, commercial yet open source-friendly .NET ecosystem. Over 25,000 developers from over 1700 companies outside Microsoft are currently contributing to the .NET open source code base. The .NET community is growing fast, and already has a good number of community projects and libraries available for free. In addition to the community and Microsoft, the Technical Steering Group members like Google, JetBrains, Red Hat, Samsung and Unity are guiding the future of the .NET platform.</p>

<p>7.<strong>&nbsp;Tools and productivity:</strong>&nbsp;The Visual Studio product family provides a great .NET development experience on Windows, Linux, and macOS. The Visual Studio Marketplace has thousands of editor extensions from Microsoft and others. If you prefer to use a different editor, there are .NET command line tools and plugins for many popular editors. .NET helps you develop high quality applications faster. Modern language constructs like generics, Language Integrated Query (LINQ), and asynchronous programming make developers productive. Combined with the extensive class libraries, common APIs, multi-language support and the powerful tooling provided by the Visual Studio family, .NET is the most productive platform for developers.</p>

<p>8.&nbsp;<strong>Command line tools:</strong>&nbsp;These include easy-to-use command line tools for local development and in continuous-integration scenarios.</p>

<p>9.&nbsp;<strong>Performance:</strong>&nbsp;.NET Core is fast. Yes, faster than Node.js and Go. Really fast! That means applications provide better response times and require less compute power. Stackoverflow serves 5.3 million page views a day on just nine servers. The popular TechEmpower benchmark compares Web application frameworks with tasks like JSON serialisation, database access, and server-side template rendering, and .NET Core performs faster than any other popular framework.</p>

<p>Microsoft recommends running .NET Core with ASP.NET Core for the best performance and scale. This becomes important when hundreds of microservices are used, in which case fewer servers and virtual machines are needed. The efficiency and scalability gained can translate to a better user experience in addition to cost savings. Bing.com runs on .NET Core 2.1 and the platform has seen a 34 per cent improvement in its performance, which means fewer machines are required. New Zealand headquartered Raygun has reported that it increased its throughput 2000 per cent by switching from Node.js to .NET Core.</p>

<p>10.&nbsp;<strong>Trusted and secure:</strong>&nbsp;.NET Core provides you with immediate security benefits through its managed run time. A collection of services prevents critical issues like bad pointer manipulation or malicious attempts to alter compiled code. Microsoft takes security very seriously and releases updates quickly when threats are discovered.</p>

<p>11.&nbsp;<strong>A vast ecosystem:</strong>&nbsp;You can leverage the vast .NET ecosystem by incorporating libraries from the NuGet package manager, the extensive partner network, and the Visual Studio Marketplace. You can also find answers to technical challenges from the community, MVPs, and large support network.</p>

<p>12.&nbsp;<strong>Support:</strong>&nbsp;.NET Core is supported by Microsoft, on Windows, macOS and Linux. It is updated for security and quality several times a year. .NET Core binary distributions are built and tested on Microsoft-maintained servers in Azure and supported just like any Microsoft product. Red Hat supports .NET Core on Red Hat Enterprise Linux (RHEL). It builds .NET Core from source and makes it available in the Red Hat Software Collections. Red Hat and Microsoft collaborate to ensure that .NET Core works well on RHEL.</p>

<p><strong>Comparisons with Mono</strong></p>

<p>Mono is the original cross-platform and open source .NET implementation, and it was first shipped in 2004. It can be thought of as a community clone of the .NET Framework. The Mono project team relied on the open .NET standards (notably ECMA 335) published by Microsoft to provide a compatible implementation.</p>

<p>The major differences between .NET Core and Mono include the following.</p>

<ul>
	<li><em>App-models:</em>&nbsp;Mono supports a subset of the .NET Framework app-models (for example, Windows Forms) and some additional ones (like Xamarin.iOS) through the Xamarin product. .NET Core doesn&rsquo;t support these.</li>
	<li><em>APIs:</em>&nbsp;Mono supports a large subset of the .NET Framework APIs, using the same assembly names and factoring.</li>
	<li><em>Platforms:</em>&nbsp;Mono supports many platforms and CPUs.</li>
	<li><em>Open source:</em>&nbsp;Mono and .NET Core both use the MIT licence and are .NET Foundation projects.</li>
	<li><em>Focus:</em>&nbsp;The primary focus of Mono in recent years has been mobile platforms, while .NET Core is focused on the cloud and desktop workloads.</li>
	<li><em>Mobile:</em>&nbsp;Xamarin/Mono is a .NET implementation for running apps on all the major mobile operating systems.</li>
</ul>

<p><strong>Languages</strong></p>

<p>C#, Visual Basic and F# languages can be used to write applications and libraries for .NET Core. These languages are or can be integrated into your favourite text editors and IDEs, including Visual Studio, Visual Studio Code, Sublime Text and Vim. This integration is provided, in part, by the good folks from the OmniSharp and Ionide projects.</p>

<p><strong>Comparing .NET Core with .NET Framework</strong></p>

<p>There are fundamental differences between the two and your choice depends on what you want to accomplish. Table 2 guides you on when to use each.</p>

<p><a href="https://www.opensourceforu.com/wp-content/uploads/2019/01/net2.png" rel="noopener" target="_blank"><img alt="" src="https://www.opensourceforu.com/wp-content/uploads/2019/01/net2-350x78.png" style="height:78px; width:350px" /></a></p>

<p>Table 2: A comparison of .NET Core and .NET Framework</p>

<p><strong>Creating a &lsquo;Hello World&rsquo; application using .NET Core</strong></p>

<p>Let us look at how to create our first Hello World application using .NET Core in Ubuntu. You can either use the Visual Studio code editor or the command line to write this code. For the sake of simplicity, I am using the command line here.</p>

<p>The prerequisites are:</p>

<ul>
	<li>.NET Core SDK 2.1</li>
	<li>A text editor or code editor of your choice</li>
</ul>

<p>I am assuming here that you have Ubuntu 18 for this hands-on tutorial. If you have something else, then please go to&nbsp;<em>https://www.microsoft.com/net/download</em>&nbsp;to get OS-specific SDK installation instructions.</p>

<p><em><strong>Step 1: Register Microsoft key and feed:</strong></em>&nbsp;Before installing .NET, we&rsquo;ll need to register the Microsoft key and the product repository, and install the required dependencies. This only needs to be done once, per machine. Open a command prompt and run the following commands:</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><code>$ wget -q https:</code><code>//packages</code><code>.microsoft.com</code><code>/config/ubuntu/18</code><code>.04</code><code>/packages-microsoft-prod</code><code>.deb</code></p>

			<p>&nbsp;</p>

			<p><code>$ </code><code>sudo</code> <code>dpkg -i packages-microsoft-prod.deb</code></p>
			</td>
		</tr>
	</tbody>
</table>

<p><em><strong>Step 2: Install .NET SDK:</strong>&nbsp;</em>Update the products available for installation, then install the .NET SDK. In your command prompt, run the following commands:</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><code>$ </code><code>sudo</code> <code>apt-get </code><code>install</code> <code>apt-transport-https</code></p>

			<p>&nbsp;</p>

			<p><code>$ </code><code>sudo</code> <code>apt-get update</code></p>

			<p>&nbsp;</p>

			<p><code>$ </code><code>sudo</code> <code>apt-get </code><code>install</code> <code>dotnet-sdk-2.1</code></p>
			</td>
		</tr>
	</tbody>
</table>

<p><em><strong>Step 3: Hello, console app!</strong>&nbsp;</em>Open a terminal window and create a folder named Hello. Navigate to the folder we&rsquo;ve created and type the following command:</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><code>$ dotnet new console</code></p>

			<p>&nbsp;</p>

			<p><code>$ dotnet run</code></p>
			</td>
		</tr>
	</tbody>
</table>

<p>Let&rsquo;s do a quick walkthrough of these commands. The first command is:</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><code>$ dotnet new console</code></p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>dotnet new</em>&nbsp;creates an up-to-date&nbsp;<em>Hello.csproj</em>&nbsp;project file with the dependencies necessary to build a console app. It also creates&nbsp;<em>Program.cs</em>, a basic file containing the entry point for the application.</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><code>Hello.csproj:</code></p>

			<p>&nbsp;</p>

			<p><code>&lt;Project Sdk=&rdquo;Microsoft.NET.Sdk&rdquo;&gt;</code></p>

			<p>&nbsp;</p>

			<p><code>&lt;PropertyGroup&gt;</code></p>

			<p>&nbsp;</p>

			<p><code>&lt;OutputType&gt;Exe&lt;</code><code>/OutputType</code><code>&gt;</code></p>

			<p>&nbsp;</p>

			<p><code>&lt;TargetFramework&gt;netcoreapp2.1&lt;</code><code>/TargetFramework</code><code>&gt;</code></p>

			<p>&nbsp;</p>

			<p><code>&lt;</code><code>/PropertyGroup</code><code>&gt;</code></p>

			<p>&nbsp;</p>

			<p><code>&lt;</code><code>/Project</code><code>&gt;</code></p>
			</td>
		</tr>
	</tbody>
</table>

<p>The project file specifies everything that&rsquo;s needed to restore dependencies and build the program. The OutputType tag specifies that we&rsquo;re building an executable &mdash; in other words, a console application. The&nbsp;<em>TargetFramework</em>&nbsp;tag specifies what .NET implementation we&rsquo;re targeting. In an advanced scenario, we can specify multiple target frameworks and build to all those in a single operation. In this tutorial, we&rsquo;ll stick to building only for .NET Core 1.0.</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><code>Program.cs</code></p>

			<p>&nbsp;</p>

			<p><code>using System;</code></p>

			<p>&nbsp;</p>

			<p><code>namespace Hello</code></p>

			<p>&nbsp;</p>

			<p><code>{</code></p>

			<p>&nbsp;</p>

			<p><code>class Program</code></p>

			<p>&nbsp;</p>

			<p><code>{</code></p>

			<p>&nbsp;</p>

			<p><code>static void Main(string[] args)</code></p>

			<p>&nbsp;</p>

			<p><code>{</code></p>

			<p>&nbsp;</p>

			<p><code>Console.WriteLine(&ldquo;Hello World from DotNET Core Apps </code><code>in</code> <code>Linux !&rdquo;);</code></p>

			<p>&nbsp;</p>

			<p><code>}</code></p>

			<p>&nbsp;</p>

			<p><code>}</code></p>

			<p>&nbsp;</p>

			<p><code>}</code></p>
			</td>
		</tr>
	</tbody>
</table>

<p><strong>Note:&nbsp;</strong><em>Starting with .NET Core 2.0, we don&rsquo;t have to run &lsquo;dotnet restore&rsquo; because it&rsquo;s run implicitly by all commands that require a restore to occur, such as &lsquo;dotnet new&rsquo;, &lsquo;dotnet build&rsquo; and &lsquo;dotnet run&rsquo;. It&rsquo;s still a valid command in certain scenarios in which doing an explicit restore makes sense, such as continuous integration builds in Azure DevOps Services or in build systems that need to explicitly control the time at which the restore occurs.</em></p>

<p><em>dotnet new</em>&nbsp;calls dotnet restore implicitly.&nbsp;<em>dotnet restore</em>&nbsp;calls into NuGet (.NET package manager) to restore the tree of dependencies. NuGet analyses the&nbsp;<em>Hello.csproj</em>&nbsp;file, downloads the dependencies defined in the file (or grabs them from a cache on your machine) and writes the<em>&nbsp;obj/project.assets.json</em>&nbsp;file, which is necessary to compile and run the sample.</p>

<p><strong>Important:</strong>&nbsp;<em>If you&rsquo;re using a .NET Core 1.x version of the SDK, you&rsquo;ll have to call dotnet restore yourself after calling dotnet new.</em></p>

<p>The second command is:</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><code>$ dotnet run</code></p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>dotnet run</em>&nbsp;calls&nbsp;<em>dotnet build</em>&nbsp;to ensure that the build targets have been built, and then calls&nbsp;<em>dotnet &lt;assembly.dll&gt;</em>&nbsp;to run the target application.</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><code>$ dotnet run</code></p>

			<p>&nbsp;</p>

			<p><code>Hello World from DotNET Core Apps </code><code>in</code> <code>Linux!!</code></p>
			</td>
		</tr>
	</tbody>
</table>

<p>Alternatively, you can also execute dotnet build to compile the code without running the build console applications. This results in a compiled application as a DLL file that can be run with dotnet&nbsp;<em>bin\Debug\netcoreapp2.1\Hello.dll</em>&nbsp;on Windows (use / for non-Windows systems). You may also specify arguments to the application as you&rsquo;ll see later on.</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><code>$ dotnet bin\Debug\netcoreapp2.1\Hello.dll</code></p>

			<p>&nbsp;</p>

			<p><code>Hello World!</code></p>
			</td>
		</tr>
	</tbody>
</table>

<p>As an advanced scenario, it&rsquo;s possible to build the application as a self-contained set of platform-specific files that can be deployed and run to a machine that doesn&rsquo;t necessarily have .NET Core installed.</p>

<p><strong>Analyse your .NET apps for portability to .NET Core</strong></p>

<p>Want to make your libraries multi-platform? Want to see how much work is required to make your application compatible with other .NET implementations and profiles, including .NET Core, .NET Standard, UWP, and Xamarin for iOS, Android and Mac? The .NET Portability Analyser is a tool that provides you with a detailed report on how flexible your program is across .NET implementations by analysing assemblies. The Portability Analyser is offered as a Visual Studio Extension and as a console app. You can get more details about it at&nbsp;<em>http://aka.ms/portabilityAnalyzer.</em></p>

<p>In my next article, we will look at how to create a ASP.NET Core 2.1 Web application using Visual Studio code in Ubuntu, and run it in Linux containers.</p>
', N'<p>&ldquo;<em>Write once, run anywhere&rdquo; seems to be the mantra that finds favour with application developers nowadays. This reduces the need for developers to write a lot of redundant code. .NET Core, an open source offering from Microsoft, (yes, Microsoft!) is just the tool for writing code for a cross-platform application that will work on Windows, Linux and macOS systems.</em></p>
', N'Building Cross-Platform Applications with .NET Core', CAST(N'2022-12-13' AS Date), CAST(N'2022-12-13' AS Date), 12)
GO
INSERT [dbo].[couseware] ([id], [content], [short_content], [title], [created_date], [modified_date], [category_id]) VALUES (31, N'<p><a href="https://uwaterloo.ca/centre-for-teaching-excellence/sites/ca.centre-for-teaching-excellence/files/uploads/files/Teamwork-Skills-Being-an-Effective-Group-Member.mp3" title=" Being an effective group member tip sheet (MP3)">Audio version of &quot;Teamwork skills: Being an effective group member&quot; tip sheet (MP3)</a></p>

<p>For small groups to function effectively in a course context, students must attend to both the climate within their group and the process by which they accomplish their tasks. Critical to a healthy climate and an effective process are strong communication skills. Below you will find the basic characteristics of effective communicators, plus tips to help students with group climate and process.</p>

<p>Although students can gain many of the skills described below through informal social interactions, they still benefit from having them made explicit. To hone their skills they also need opportunities to practice as well as to receive regular feedback on how they&rsquo;re doing. Share the information below with your students, use it to set activities for them, and work to incorporate three components of feedback into your plan: instructor comments (oral and/or written), reflective group discussions and/or peer assessment, and self-reflection (see the reflection prompts in Appendix A for ideas).</p>

<h2>Communication skills</h2>

<p>To function successfully in a small group, students need to be able to communicate clearly on intellectual and emotional levels. Effective communicators:</p>

<ul>
	<li>can explain their own ideas</li>
	<li>express their feelings in an open but non-threatening way</li>
	<li>listen carefully to others</li>
	<li>ask questions to clarify others&rsquo; ideas and emotions</li>
	<li>can sense how others feel based on their nonverbal communication</li>
	<li>will initiate conversations about group climate or process if they sense tensions brewing</li>
	<li>reflect on the activities and interactions of their group and encourage other group members to do so as well</li>
</ul>

<p>Regular open communication, in which group members share their thoughts, ideas, and feelings, is a must for successful group work. Unspoken assumptions and issues can be very destructive to productive group functioning. When students are willing to communicate openly with one another, a healthy climate will emerge and an effective process can be followed.</p>

<h2>Skills for a healthy group climate</h2>

<p>To work together successfully, group members must demonstrate a sense of cohesion. Cohesion emerges as group members exhibit the following skills:</p>

<ul>
	<li><strong>Openness</strong>: Group members are willing to get to know one another, particularly those with different interests and backgrounds. They are open to new ideas, diverse viewpoints, and the variety of individuals present within the group. They listen to others and elicit their ideas. They know how to balance the need for cohesion within a group with the need for individual expression.</li>
	<li><strong>Trust and self-disclosure</strong>: Group members trust one another enough to share their own ideas and feelings. A sense of mutual trust develops only to the extent that everyone is willing to self-disclose and be honest yet respectful. Trust also grows as group members demonstrate personal accountability for the tasks they have been assigned.</li>
	<li><strong>Support</strong>: Group members demonstrate support for one another as they accomplish their goals. They exemplify a sense of team loyalty and both cheer on the group as a whole and help members who are experiencing difficulties. They view one another not as competitors (which is common within a typically individualistic educational system) but as collaborators.</li>
	<li><strong>Respect</strong>: Group members communicate their opinions in a way that respects others, focusing on &ldquo;What can we learn?&rdquo; rather than &ldquo;Who is to blame?&rdquo; See constructive feedback in the process section for more details.</li>
</ul>

<p>As an instructor, you can use several strategies to encourage students to develop a healthy climate within their small groups:</p>

<ul>
	<li>Assign students into diverse groups so that they encounter others with different backgrounds and interests.</li>
	<li>Design activities that break the ice, promote awareness of differences within the group, encourage reflection on the stresses of working within a group, and point out the demands of working in a group.</li>
	<li>Have students participate in trust challenges. For example, try the trust-fall, in which individual group members fall backward off a table and are caught by their fellow group members. Or blindfold individual students, and have their group members guide them orally through an obstacle course.</li>
	<li>Encourage students to participate willingly and ask questions of others. To encourage listening skills and ensure that everyone in the group speaks, try the &ldquo;circle of voices&rdquo; exercise. See Centre for Teaching Excellence (CTE) teaching tip &ldquo;<a href="https://uwaterloo.ca/centre-for-teaching-excellence/teaching-resources/teaching-tips/developing-assignments/group-work/group-work-classroom-types-small-groups">Group Work in the Classroom: Types of Small Groups</a>&rdquo;.</li>
	<li>After students have worked in their groups for a couple of weeks, have them fill in a &ldquo;Are we a team?&rdquo; checklist individually, then discuss their answers within their group. Have them repeat this exercise when they have completed their task. See appendix B for an example of this checklist.</li>
</ul>

<h2>Skills for an effective group process</h2>

<p>Besides knowing how to develop a healthy group climate, students also need to know how to function so that they are productive and accomplish their tasks effectively. An effective process will emerge as students exhibit these skills:</p>

<ul>
	<li><strong>Individual responsibility and accountability</strong>: All group members agree on what needs to be done and by whom. Each student then determines what he or she needs to do and takes responsibility to complete the task(s). They can be held accountable for their tasks, and they hold others accountable for theirs.</li>
	<li><strong>Constructive Feedback</strong>: Group members are able to give and receive feedback about group ideas. Giving constructive feedback requires focusing on ideas and behaviours, instead of individuals, being as positive as possible, and offering suggestions for improvement. Receiving feedback requires listening well, asking for clarification if the comment is unclear, and being open to change and other ideas.</li>
	<li><strong>Problem solving</strong>: Group members help the group to develop and use strategies central to their group goals. As such, they can facilitate group decision making and deal productively with conflict. In extreme cases, they know when to approach the professor for additional advice and help.</li>
	<li><strong>Management and organization</strong>: Group members know how to plan and manage a task, how to manage their time, and how to run a meeting. For example, they ensure that meeting goals are set, that an agenda is created and followed, and that everyone has an opportunity to participate. They stay focused on the task and help others to do so too.</li>
	<li><strong>Knowledge of roles</strong>: Group members know which roles can be filled within a group (e.g., facilitator, idea-generator, summarizer, evaluator, mediator, encourager, recorder) and are aware of which role(s) they and others are best suited for. They are also willing to rotate roles to maximize their own and others&rsquo; group learning experience.</li>
</ul>

<p>As an instructor, use some of these strategies to encourage students to develop an effective process within their small groups:</p>

<ul>
	<li>Design the group task so that the students must work together. Group members will be more motivated and committed to working together if they are given a group mark; if you choose to evaluate in this way, be sure to make your expectations extremely clear. See the CTE teaching tip sheet &ldquo;<a href="https://uwaterloo.ca/centre-for-teaching-excellence/teaching-resources/teaching-tips/developing-assignments/group-work/methods-assessing-group-work">Methods for Assessing Group Work</a>&rdquo; for additional ideas.</li>
	<li>Once students are in groups, have them develop, as one of their early assignments, a group contract in which they articulate ground rules and group goals. See the teaching tip &ldquo;<a href="https://uwaterloo.ca/centre-for-teaching-excellence/teaching-resources/teaching-tips/developing-assignments/group-work/making-group-contracts">Making Group Contracts</a>&rdquo; for details. Be sure that groups discuss how they will respond to various scenarios such as absentee or late group members and those who do not complete their assigned tasks.</li>
	<li>Distribute a list of decision-making methods and strategies for conflict resolution. The CTE teaching tip sheet &ldquo;<a href="https://uwaterloo.ca/centre-for-teaching-excellence/teaching-resources/teaching-tips/developing-assignments/group-work/group-decision-making">Group Decision Making</a>&rdquo; is a good place to start. Have each group articulate, based on this list, a set of strategies for decision making and conflict resolution; this list should become part of the group contract. You may also want to offer yourself as an impartial arbitrator in emergency situations, but encourage students to work out problems among themselves.</li>
	<li>Provide students with guidelines for running a meeting, such as setting and following an agenda, specifying time limits, and monitoring progress on the agenda. Consult the CTE teaching tip sheet &ldquo;<a href="https://uwaterloo.ca/centre-for-teaching-excellence/teaching-resources/teaching-tips/alternatives-lecturing/group-work/meeting-strategies-help-prepare-students-group-work">Meeting Strategies to Help Prepare Students for Group Work</a>&rdquo; for additional suggestions.</li>
	<li>Teach students effective methods for giving and receiving feedback. For sample methods, see the teaching tip &ldquo;<a href="https://uwaterloo.ca/centre-for-teaching-excellence/teaching-resources/teaching-tips/assessing-student-work/grading-and-feedback/receiving-and-giving-effective-feedback">Receiving and Giving Effective Feedback</a>&rdquo;. Create an assignment that involves them giving feedback to group members, and make it part of their final grade.</li>
	<li>To help students recognize and make the most of their own and one another&rsquo;s preferred roles, outline with them a list of team roles (see the teaching tip &ldquo;<a href="https://uwaterloo.ca/centre-for-teaching-excellence/teaching-resources/teaching-tips/developing-assignments/group-work/group-roles-maximizing-group-performance">Group Roles</a>&rdquo; for one such list), have them determine which role(s) suits them best, and give them time to discuss within their groups how their particular role(s) will complement those of other group members. Requiring them to rotate their roles helps them to expand their skills set.</li>
</ul>

<h2>Appendix A: Encouraging self-awareness and reflection in group work</h2>

<p>One of the most important things you can do as an instructor is to have students reflect regularly on their group experiences. Their self-reflection will reinforce and further develop critical teamwork skills. Based on your objectives for the group project, create a set of prompts using the questions below. Have students then use these prompts to journal about their reactions to group climate and process. The journals encourage self-reflection and can help students see teamwork issues in new ways and create ideas for resolution. They can also provide a good basis from which students can choose comments to share with their group members in debriefing sessions. If students submit their journals periodically throughout the semester, give them feedback orally or in writing, and to the extent appropriate, discuss in class any trends that you have identified through observation or in the journals (e.g., reassure groups that many are facing similar challenges). Also, requiring all students to submit a final reflective report after the group project can help them to see the value of the teamwork expertise they have developed through practice.</p>

<h3>Climate</h3>

<ul>
	<li>What have you enjoyed the most/the least about getting to know your group members?</li>
	<li>How is your attitude towards your group members demonstrated in how you function within the group?</li>
	<li>How do you demonstrate trust and openness towards the other members and their ideas?</li>
	<li>Do you give honest opinions? If not, why not?</li>
	<li>How much do you feel you can rely on your group members to complete the required task(s)?</li>
	<li>How do you make sure that group members feel supported, encouraged, and appreciated for their work?</li>
	<li>How does the team ensure that all voices are heard?</li>
	<li>Do you participate willingly in the discussion? If not, why not?</li>
	<li>Do others appear to understand your ideas? If not, why not?</li>
	<li>What do you do if another person&rsquo;s ideas are unclear?</li>
	<li>What do you focus on when others speak? How could you improve your listening skills?</li>
	<li>
	<p>How do you respond to others&rsquo; ideas? How do they respond to yours? What could be improved?</p>
	</li>
</ul>

<h3>Process</h3>

<ul>
	<li>What are your group&rsquo;s ground rules and goals? What changes to these rules and goals might improve the functioning of your group?</li>
	<li>How is everyone encouraged to stay accountable to the tasks they have been assigned?</li>
	<li>To what extent do you and others follow the feedback methods laid out in class? How could you and your group members improve the way you give and receive feedback?</li>
	<li>To what extent does your group reflect on how well its goals are being achieved? How would more (or less) discussion about goals help or hinder your group&rsquo;s functioning?</li>
	<li>How are decisions made in your group? Who is involved and in which ways? What has been effective about the processes you have used? How could your decision-making processes be improved?</li>
	<li>What happens if a group member is unhappy or uncomfortable with a decision made by the group?</li>
	<li>What conflicts have arisen within your group? How (if at all) have the conflicts been resolved? What role do you play in resolving these conflicts? What could you (or others) do to improve your group&rsquo;s ability to deal productively with conflict?</li>
	<li>How do your meetings typically proceed? What do you accomplish and in how much time? What is effective about your group functioning during meetings? What changes would improve your meetings?</li>
	<li>Who has emerged as the leader in your group? Which other roles do you see team members playing? Which role(s) do you play? Which role do you prefer and why?</li>
</ul>

<h2>Appendix B: &ldquo;Are We a Team?&rdquo; checklist&nbsp;(Levin &amp; Kent, 2001)</h2>

<p>Check off the statements that accurately represent your group. Be prepared to discuss your choices afterwards with your group. Also consider ways to improve your group&rsquo;s functioning, especially as it relates to the statements you did not check off.</p>

<ul>
	<li>We all show equal commitment to our objective.</li>
	<li>We all take part in deciding how work should be allocated.</li>
	<li>We are committed to helping each other learn.</li>
	<li>We acknowledge good contributions from team members.</li>
	<li>We handle disagreements and conflicts constructively within the team.</li>
	<li>We are able to give constructive criticism to one another and to accept it ourselves.</li>
	<li>We all turn up to meetings and stay to the end.</li>
	<li>We are good at making sure that everyone knows what&rsquo;s going on.</li>
	<li>When one of us is under pressure, others offer to help him or her.</li>
	<li>We trust each other.</li>
	<li>We remain united even when we disagree.</li>
	<li>We support each other to outsiders.</li>
	<li>We feel comfortable and relaxed with one another.&nbsp;</li>
</ul>

<h2>References</h2>

<ul>
	<li>Bosworth,&nbsp;K. (1994). Developing Collaborative Skills in College Students. New Directions for Teaching and Learning,<br />
	59. San Francisco:&nbsp;Jossey-Bass.&nbsp;pp. 25-31.</li>
	<li>Breslow,&nbsp;L. (1998). Teaching Teamwork Skills, Part 2. Teach Talk, X, 5.&nbsp;</li>
	<li>Hills,&nbsp;H. (2001). Team-Based Learning. Burlington, VT:&nbsp;Gower.</li>
	<li>Levin,&nbsp;P. (2002). Teamwork tutoring: Helping students working on group projects to develop teamwork skills.&nbsp;</li>
	<li>Levin,&nbsp;P., and Kent, I. (2001). Draft manual on teamwork tutoring: 28 questions and answers for academics on teamwork in universities.&nbsp;</li>
	<li>Reynolds,&nbsp;M. (1994).&nbsp;Groupwork&nbsp;in Education and Training. London:&nbsp;Kogan&nbsp;Page.</li>
	<li>Silberman,&nbsp;M. (1996). Active Learning: 101 Strategies to Teach Any Subject. Boston:&nbsp;Allyn&nbsp;and Bacon.</li>
</ul>

<h2>Resources</h2>

<ul>
	<li>UWaterloo&rsquo;s&nbsp;<a href="https://uwaterloo.ca/student-success/resources">Student Success Office</a></li>
	<li>UWaterloo&rsquo;s&nbsp;<a href="https://uwaterloo.ca/academic-integrity/integrity-students">Office of Academic Integrity</a></li>
</ul>
', N'<p>For small groups to function effectively in a course context, students must attend to both the climate within their group and the process by which they accomplish their tasks. Critical to a healthy climate and an effective process are strong communication skills. Below you will find the basic characteristics of effective communicators, plus tips to help students with group climate and process.</p>
', N'Teamwork Skills: Being an Effective Group Member', CAST(N'2022-12-13' AS Date), CAST(N'2022-12-13' AS Date), 11)
GO
SET IDENTITY_INSERT [dbo].[couseware] OFF
GO
INSERT [dbo].[users] ([username], [password], [roleID], [fullName], [status]) VALUES (N'admin', N'1', N'AD', N'admin', 1)
GO
INSERT [dbo].[users] ([username], [password], [roleID], [fullName], [status]) VALUES (N'user', N'1', N'US', N'user', 1)
GO
ALTER TABLE [dbo].[couseware]  WITH CHECK ADD  CONSTRAINT [FK_couseware_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[couseware] CHECK CONSTRAINT [FK_couseware_category]
GO
USE [master]
GO
ALTER DATABASE [CoursewareOnlineAssignment] SET  READ_WRITE 
GO
