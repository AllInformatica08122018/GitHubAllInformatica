USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblCliente_Documento]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCliente_Documento](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[IdDocumento] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCliente_Documento] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC,
	[IdDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblCliente_Documento]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_Documento_tblCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[tblCliente] ([Id])
GO
ALTER TABLE [dbo].[tblCliente_Documento] CHECK CONSTRAINT [FK_tblCliente_Documento_tblCliente]
GO
ALTER TABLE [dbo].[tblCliente_Documento]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_Documento_tblDocumentos] FOREIGN KEY([IdDocumento])
REFERENCES [dbo].[tblDocumentos] ([IdDocumento])
GO
ALTER TABLE [dbo].[tblCliente_Documento] CHECK CONSTRAINT [FK_tblCliente_Documento_tblDocumentos]
GO
