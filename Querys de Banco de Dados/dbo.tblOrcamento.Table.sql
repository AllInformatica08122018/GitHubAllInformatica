USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblOrcamento]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrcamento](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[IdCliente] [uniqueidentifier] NULL,
	[Numero] [int] NULL,
	[Descricao] [nvarchar](200) NULL,
	[VlrTotalOrcamento] [decimal](18, 2) NULL,
	[Observacao] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblOrcamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblOrcamento] ADD  CONSTRAINT [DF_tblOrcamento_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblOrcamento]  WITH CHECK ADD  CONSTRAINT [FK_tblOrcamento_tblCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[tblCliente] ([Id])
GO
ALTER TABLE [dbo].[tblOrcamento] CHECK CONSTRAINT [FK_tblOrcamento_tblCliente]
GO
