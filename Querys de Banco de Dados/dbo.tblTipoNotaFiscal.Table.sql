USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblTipoNotaFiscal]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoNotaFiscal](
	[Id] [uniqueidentifier] NOT NULL,
	[Descricao] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblTipoNotaFiscal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
