USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblNotaFiscal]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNotaFiscal](
	[Id] [uniqueidentifier] NOT NULL,
	[Numero] [int] NULL,
	[RazaoSocial] [nvarchar](200) NULL,
	[ValorNota] [decimal](8, 2) NULL,
	[IdTipoNota] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblNotaFiscal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblNotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_tblNotaFiscal_tblTipoNotaFiscal] FOREIGN KEY([IdTipoNota])
REFERENCES [dbo].[tblTipoNotaFiscal] ([Id])
GO
ALTER TABLE [dbo].[tblNotaFiscal] CHECK CONSTRAINT [FK_tblNotaFiscal_tblTipoNotaFiscal]
GO
