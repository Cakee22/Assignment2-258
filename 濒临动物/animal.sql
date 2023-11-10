/*
 Navicat Premium Data Transfer

 Source Server         : sqlserver
 Source Server Type    : SQL Server
 Source Server Version : 16001000
 Source Host           : localhost:1433
 Source Catalog        : animal
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 16001000
 File Encoding         : 65001

 Date: 10/11/2023 10:14:51
*/


-- ----------------------------
-- Table structure for __EFMigrationsHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[__EFMigrationsHistory]
GO

CREATE TABLE [dbo].[__EFMigrationsHistory] (
  [MigrationId] nvarchar(150) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ProductVersion] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[__EFMigrationsHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of __EFMigrationsHistory
-- ----------------------------
INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231109162505_Init', N'7.0.13')
GO

INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231109163507_slogan', N'7.0.13')
GO

INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231110003731_AddAnimal', N'7.0.13')
GO

INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231110011525_addanimial', N'7.0.13')
GO


-- ----------------------------
-- Table structure for AreaType
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AreaType]') AND type IN ('U'))
	DROP TABLE [dbo].[AreaType]
GO

CREATE TABLE [dbo].[AreaType] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ImgUrl] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Type] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [AreaId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[AreaType] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AreaType
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AreaType] ON
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'1', N'https://wildaidchina.org.cn/wp-content/uploads/2018/04/squared_nameless_1elephant.jpg', N'Elephants', N'1')
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'2', N'https://wildaidchina.org.cn/wp-content/uploads/2018/04/squared_nameless_2rhino.jpg', N'rhinos', N'1')
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'3', N'
https://wildaidchina.org.cn/wp-content/uploads/2018/04/squared_nameless_4tigers.jpg', N'tigers', N'1')
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'4', N'https://wildaidchina.org.cn/wp-content/uploads/2018/04/squared_nameless_3pangolins.jpg', N'pangolins', N'1')
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'5', N'https://wildaidchina.org.cn/wp-content/uploads/2018/04/squared_nameless_7sea-turtles.jpg', N'sea turtles', N'1')
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'7', N'
https://wildaidchina.org.cn//wp-content/uploads/2018/04/squared_nameless_5sharks.jpg', N'sharks', N'1')
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'8', N'
https://wildaidchina.org.cn/wp-content/uploads/2018/04/squared_nameless_6manta-rays.jpg', N'manta rays', N'1')
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'9', N'
https://wildaidchina.org.cn/wp-content/uploads/2018/04/squared_nameless_8vaquitas.jpg', N'vaquitas', N'1')
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'10', N'
https://wildaidchina.org.cn/wp-content/uploads/2021/07/%E6%9C%AA%E6%A0%87%E9%A2%98-1-1.jpg', N'refuse to play', N'1')
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'11', N'
https://wildaidchina.org.cn/wp-content/uploads/2021/10/6.jpg', N'marine biodiversity', N'2')
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'12', N'
https://wildaidchina.org.cn/wp-content/uploads/2022/05/ocean-plastic-copy.png', N'ocean plastics', N'2')
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'14', N'https://wildaidchina.org.cn/wp-content/uploads/2022/05/health-copy.png', N'climate and health', N'3')
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'15', N'https://wildaidchina.org.cn/wp-content/uploads/2022/05/action-2.jpg', N'climate action', N'3')
GO

INSERT INTO [dbo].[AreaType] ([Id], [ImgUrl], [Type], [AreaId]) VALUES (N'16', N'
https://wildaidchina.org.cn/wp-content/uploads/2022/05/culture.png', N'climate and culture', N'3')
GO

SET IDENTITY_INSERT [dbo].[AreaType] OFF
GO


-- ----------------------------
-- Table structure for News
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[News]') AND type IN ('U'))
	DROP TABLE [dbo].[News]
GO

CREATE TABLE [dbo].[News] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [imgUrl] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [title] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [putTime] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[News] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of News
-- ----------------------------
SET IDENTITY_INSERT [dbo].[News] ON
GO

INSERT INTO [dbo].[News] ([id], [imgUrl], [title], [putTime]) VALUES (N'1', N'https://wildaidchina.org.cn/wp-content/uploads/2023/11/8e1e6d37a3926f4a3782cdee50798b7d-scaled.jpg', N'Public welfare ambassador Wu Lei calls on the public to jointly tackle climate change The "Next Climate Action You Define" communication campaign was launched in Beijing', N'2023-09-21 01:05:39.0000000')
GO

INSERT INTO [dbo].[News] ([id], [imgUrl], [title], [putTime]) VALUES (N'2', N'https://wildaidchina.org.cn/wp-content/uploads/2023/09/80291694781042_.pic_.jpg', N'"The Ocean is More Beautiful with You" public service announcement film was released, and Lang Lang invited netizens to create the theme song "Stay"', N'2023-09-15 01:05:58.0000000')
GO

INSERT INTO [dbo].[News] ([id], [imgUrl], [title], [putTime]) VALUES (N'3', N'https://wildaidchina.org.cn/wp-content/uploads/2023/04/Screen-Shot-2023-04-22-at-11.32.32.png', N'4.22 On Earth Day, Yang Zi spoke out, so that travel is only beautiful and does not leave regrets', N'2023-04-23 01:06:15.0000000')
GO

INSERT INTO [dbo].[News] ([id], [imgUrl], [title], [putTime]) VALUES (N'4', N'https://wildaidchina.org.cn/wp-content/uploads/2023/06/6.7%E9%95%BF%E5%B2%9B%E6%B5%B7%E6%B4%8B%E6%8A%A5%E5%91%8A%E5%8F%91%E5%B8%83%E4%BC%9A-%E4%B8%BB%E8%A7%86%E8%A7%89%E6%B5%B7%E6%8A%A5%E5%9B%BE.png', N'WildAid''s "Vivid Ocean Can''t Live Without You" Conservation Communication Project Enters a New Stage The report "Public Marine Biodiversity Conservation Awareness Survey - Shandong Changdao" was released today', N'2023-11-11 05:54:45.0000000')
GO

INSERT INTO [dbo].[News] ([id], [imgUrl], [title], [putTime]) VALUES (N'5', N'https://wildaidchina.org.cn/wp-content/uploads/2023/04/%E5%8F%8C%E6%96%B9%E5%8F%82%E4%BC%9A%E4%BA%BA%E5%91%98%E5%90%88%E5%BD%B1.png', N'The Foreign Cooperation and Exchange Center of the Ministry of Wildlife Rescue and Ecology and Environment held an exchange forum', N'2023-11-08 05:55:34.0000000')
GO

INSERT INTO [dbo].[News] ([id], [imgUrl], [title], [putTime]) VALUES (N'6', N'https://wildaidchina.org.cn/wp-content/uploads/2022/06/%C2%A9-WildAid%E5%8D%B0%E5%B0%BC%E5%9B%9B%E7%8E%8B%E7%BE%A4%E5%B2%9B%E7%B1%B3%E8%8B%8F%E5%B0%94%E6%B5%B7%E6%B4%8B%E4%BF%9D%E6%8A%A4%E5%8C%BA-%E6%91%84%E5%BD%B1%EF%BC%9AShawn-Heinrichs.png', N'MPA: Bringing the Ocean to Life (Narrator: Huang Xuan, WildAid Public Welfare Ambassador)', N'2023-11-09 05:56:22.0000000')
GO

INSERT INTO [dbo].[News] ([id], [imgUrl], [title], [putTime]) VALUES (N'7', N'https://wildaidchina.org.cn/wp-content/uploads/2021/08/Screenshot-2021-08-03-at-6.54.47-PM.png', N'New mission, new challenges	', N'2023-11-10 05:57:11.0000000')
GO

INSERT INTO [dbo].[News] ([id], [imgUrl], [title], [putTime]) VALUES (N'8', N'https://wildaidchina.org.cn/wp-content/uploads/2020/06/chuanshanjia-kidnapping.jpg', N'Pangolins have been upgraded to a Class 1 protected animal, and WildAid welcomes them', N'2023-11-10 05:58:11.0000000')
GO

INSERT INTO [dbo].[News] ([id], [imgUrl], [title], [putTime]) VALUES (N'9', N'https://wildaidchina.org.cn/wp-content/uploads/2020/06/WechatIMG1-1024x568.png', N'WildAid: The proposal of the two sessions to "severely punish the illegal killing and trading of wild animals" is encouraging', N'2023-11-10 05:59:12.0000000')
GO

INSERT INTO [dbo].[News] ([id], [imgUrl], [title], [putTime]) VALUES (N'10', N'https://wildaidchina.org.cn/wp-content/uploads/2021/11/WA_%E6%B5%B7%E9%BE%9F_2021%E3%80%8A%E6%B5%B7%E6%B4%8B%E5%AE%9D%E8%B4%9D%E4%B8%8D%E6%98%AF%E5%B8%82%E5%9C%BA%E5%AE%9D%E8%B4%9D%E3%80%8B%E5%B9%B3%E9%9D%A2%E6%B5%B7%E6%8A%A5_1920x1080-1536x864.jpg', N'What is a tortoiseshell?	', N'2023-10-31 06:00:09.0000000')
GO

SET IDENTITY_INSERT [dbo].[News] OFF
GO


-- ----------------------------
-- Table structure for T_Animal
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[T_Animal]') AND type IN ('U'))
	DROP TABLE [dbo].[T_Animal]
GO

CREATE TABLE [dbo].[T_Animal] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Desc] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Action] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [WeDo] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[T_Animal] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of T_Animal
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Animal] ON
GO

INSERT INTO [dbo].[T_Animal] ([Id], [Name], [Desc], [Action], [WeDo]) VALUES (N'4', N'Elephant', N'Elephants are the largest animals on land and are divided into three species: African savannah elephants, African forest elephants, and Asian elephants. Threats to elephants include habitat loss and fragmentation, the impact of human-elephant conflict, and poaching due to the ivory trade. Ivory refers to an elephant''s tusks, which do not fall off throughout their lives and grow one-third of them within the skull. Ivory was used as a luxury carving raw material to make crafts and ornaments. It is estimated that there are currently 350,000 African elephants in Africa, and about 1~15,000 African elephants are killed by poachers every year. 1 The total number of Asian elephants is less than 50,000. China has only about 300 Asian elephants in Xishuangbanna, Yunnan Province.

Elephants are listed in Appendix I of the Convention on International Trade in Endangered Species of Wild Fauna and Flora (CITES), which prohibits commercial trade in the species and its products internationally. In China, elephants are included in the list of national first-class key protected wild animals for protection. On 1 January 2018, China imposed a complete ban on the commercial processing and sale of ivory in China, making it one of the countries with the strictest measures to combat the illegal trade in ivory in the world. 2

On the basis of the Criminal Law of the People''s Republic of China, anyone who illegally hunts or kills rare or endangered wildlife under key national protection, or illegally purchases, transports, or sells rare or endangered wildlife under key national protection and the products thereof, is sentenced to up to five years imprisonment or short-term detention and a concurrent fine; where the circumstances are serious, a sentence of between 5 and 10 years imprisonment and a concurrent fine is to be given; where the circumstances are especially serious, a sentence of 10 or more years imprisonment and a concurrent fine or confiscation of property is to be given.

In accordance with the "Criminal Law of the People''s Republic of China" and the "Interpretation of the Supreme People''s Court on Several Issues Concerning the Specific Application of Law in the Trial of the Crime of Smuggling" and other provisions, whoever smuggles precious animals and their products whose export is prohibited by the state shall be sentenced to fixed-term imprisonment of not less than five years but not more than ten years and shall also be fined; where the circumstances are especially serious, a sentence of 10 or more years imprisonment or indefinite imprisonment is to be given, and confiscation of property is to be given; where the circumstances are more minor, a sentence of up to five years imprisonment and a concurrent fine is to be given.', N'In early 2018, WildAid partnered with the National Forestry and Grassland Administration to launch a public service announcement titled "In the Name of the Law, Let Ivory No Longer Be a Commodity" to educate the public about the ivory ban and related laws and regulations. In early 2019, WildAid, together with the General Administration of Customs, the National Forestry and Grassland Administration, and the World Wide Fund for Nature (WWF) produced a public service advertisement and poster titled "Souvenirs May Become Evidence of Crime" in order to strengthen the legal awareness of inbound and outbound passengers and prevent smuggling crimes. Huang Xuan, the public welfare ambassador of China Customs'' anti-ivory anti-smuggling campaign, reminded Chinese citizens who are traveling or working abroad: "If someone sells ivory to you as a souvenir, don''t be fooled, they may become evidence of the crime." ”', N'Consciously abide by the CITES Convention and the laws of the host country, and do not illegally hunt, collect and eat wild animals and plants; &
Do not illegally purchase, carry, mail or consign endangered species and their products, as well as traditional Chinese medicine containing ingredients of endangered species.&
If you find illegal or criminal acts of destroying wildlife resources, report them to the local 110 on the premise of ensuring your own safety.')
GO

SET IDENTITY_INSERT [dbo].[T_Animal] OFF
GO


-- ----------------------------
-- Table structure for T_Slogan
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[T_Slogan]') AND type IN ('U'))
	DROP TABLE [dbo].[T_Slogan]
GO

CREATE TABLE [dbo].[T_Slogan] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Content] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[T_Slogan] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of T_Slogan
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_Slogan] ON
GO

INSERT INTO [dbo].[T_Slogan] ([Id], [Content]) VALUES (N'1', N'WildAid is committed to ending the illegal wildlife trade and reducing carbon emissions around the world to achieve its vision of protecting biodiversity and combating climate change.')
GO

INSERT INTO [dbo].[T_Slogan] ([Id], [Content]) VALUES (N'2', N'WildAid is committed to ending the illegal wildlife trade and reducing carbon emissions around the world to achieve its vision of protecting biodiversity and combating climate change.')
GO

INSERT INTO [dbo].[T_Slogan] ([Id], [Content]) VALUES (N'3', N'Illegal wildlife trade is the fourth largest illegal trade after drug, arms and human trafficking, leading to a dramatic decline in many wildlife populations worldwide. More than 20 years ago, a wildlife trade investigator named Peter Knight discovered in his work that the conservation community was putting almost all of its money and energy into habitat protection and illegal trade enforcement. In contrast, far fewer resources and efforts have been made to reduce the demand for wildlife products. And the presence of demand is the root cause of the repeated prohibition of illegal trade. So he came up with a bold idea: a conservation agency focused on reducing demand for endangered wildlife products. In 2000, Peter Knights and a friend signed up for an NGO called WildAid. His wish is to end the illegal wildlife trade in his lifetime.')
GO

INSERT INTO [dbo].[T_Slogan] ([Id], [Content]) VALUES (N'4', N'WildAid adopts the working model of "Conservation Through Communication", giving full play to the role model of celebrity charity ambassadors, producing high-level public welfare content at a low cost, conveying the concept of refusing to consume endangered wild animals and participating in green lifestyles through various media channels, and promoting rational thinking and action participation by triggering emotional resonance among the public.

					Over the past two decades, WildAid has worked in the United States, Mexico, the Caribbean, Ecuador, Peru, Kenya, South Africa, Tanzania, China, Thailand, Vietnam, Indonesia, Palau, and more. In 2005, WildAid began working in China with the State Forestry Administration of China (now the State Forestry and Grassland Administration) under the Chinese name of WildAid. In 2017, the Beijing Representative Office was officially established.')
GO

SET IDENTITY_INSERT [dbo].[T_Slogan] OFF
GO


-- ----------------------------
-- Table structure for T_WorkArea
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[T_WorkArea]') AND type IN ('U'))
	DROP TABLE [dbo].[T_WorkArea]
GO

CREATE TABLE [dbo].[T_WorkArea] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Area] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[T_WorkArea] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of T_WorkArea
-- ----------------------------
SET IDENTITY_INSERT [dbo].[T_WorkArea] ON
GO

INSERT INTO [dbo].[T_WorkArea] ([Id], [Area]) VALUES (N'1', N'Diversity preservation')
GO

INSERT INTO [dbo].[T_WorkArea] ([Id], [Area]) VALUES (N'2', N'Marine protection')
GO

INSERT INTO [dbo].[T_WorkArea] ([Id], [Area]) VALUES (N'3', N'Climate protection')
GO

SET IDENTITY_INSERT [dbo].[T_WorkArea] OFF
GO


-- ----------------------------
-- Primary Key structure for table __EFMigrationsHistory
-- ----------------------------
ALTER TABLE [dbo].[__EFMigrationsHistory] ADD CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED ([MigrationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for AreaType
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[AreaType]', RESEED, 16)
GO


-- ----------------------------
-- Indexes structure for table AreaType
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AreaType_AreaId]
ON [dbo].[AreaType] (
  [AreaId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AreaType
-- ----------------------------
ALTER TABLE [dbo].[AreaType] ADD CONSTRAINT [PK_AreaType] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for News
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[News]', RESEED, 10)
GO


-- ----------------------------
-- Primary Key structure for table News
-- ----------------------------
ALTER TABLE [dbo].[News] ADD CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for T_Animal
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[T_Animal]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table T_Animal
-- ----------------------------
ALTER TABLE [dbo].[T_Animal] ADD CONSTRAINT [PK_T_Animal] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for T_Slogan
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[T_Slogan]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table T_Slogan
-- ----------------------------
ALTER TABLE [dbo].[T_Slogan] ADD CONSTRAINT [PK_T_Slogan] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for T_WorkArea
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[T_WorkArea]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table T_WorkArea
-- ----------------------------
ALTER TABLE [dbo].[T_WorkArea] ADD CONSTRAINT [PK_T_WorkArea] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table AreaType
-- ----------------------------
ALTER TABLE [dbo].[AreaType] ADD CONSTRAINT [FK_AreaType_T_WorkArea_AreaId] FOREIGN KEY ([AreaId]) REFERENCES [dbo].[T_WorkArea] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

