USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblCliente_Contato]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCliente_Contato](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[IdContato] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCliente_Contato] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC,
	[IdContato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblCliente_Contato]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_Contato_tblCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[tblCliente] ([Id])
GO
ALTER TABLE [dbo].[tblCliente_Contato] CHECK CONSTRAINT [FK_tblCliente_Contato_tblCliente]
GO
ALTER TABLE [dbo].[tblCliente_Contato]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_Contato_tblContato] FOREIGN KEY([IdContato])
REFERENCES [dbo].[tblContato] ([IdContato])
GO
ALTER TABLE [dbo].[tblCliente_Contato] CHECK CONSTRAINT [FK_tblCliente_Contato_tblContato]
GO
