USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblTelefone]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTelefone](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Prefixo] [nvarchar](3) NULL,
	[Numero] [nvarchar](9) NULL,
	[IdTipoTelefone] [uniqueidentifier] NOT NULL,
	[ramal] [nvarchar](5) NULL,
 CONSTRAINT [PK_tblTelefone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblTelefone] ADD  CONSTRAINT [DF_tblTelefone_Id]  DEFAULT (newid()) FOR [Id]
GO
