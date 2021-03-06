USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblMateriaPrima]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMateriaPrima](
	[Id] [uniqueidentifier] NOT NULL,
	[Descricao] [nvarchar](200) NULL,
	[Codigo] [nvarchar](50) NULL,
	[IdFornecedor] [uniqueidentifier] NULL,
	[Valor] [decimal](7, 2) NULL,
	[IdUnidade] [uniqueidentifier] NULL,
	[IdTipoMateriaPrima] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblMateriaPrima] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
