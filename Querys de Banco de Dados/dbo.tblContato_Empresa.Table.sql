USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblContato_Empresa]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContato_Empresa](
	[IdContato] [uniqueidentifier] NOT NULL,
	[IdEmpresa] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblContato_Empresa] PRIMARY KEY CLUSTERED 
(
	[IdContato] ASC,
	[IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblContato_Empresa]  WITH CHECK ADD  CONSTRAINT [FK_tblContato_Empresa_tblContato] FOREIGN KEY([IdContato])
REFERENCES [dbo].[tblContato] ([IdContato])
GO
ALTER TABLE [dbo].[tblContato_Empresa] CHECK CONSTRAINT [FK_tblContato_Empresa_tblContato]
GO
ALTER TABLE [dbo].[tblContato_Empresa]  WITH CHECK ADD  CONSTRAINT [FK_tblContato_Empresa_tblEmpresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[tblEmpresa] ([id])
GO
ALTER TABLE [dbo].[tblContato_Empresa] CHECK CONSTRAINT [FK_tblContato_Empresa_tblEmpresa]
GO
