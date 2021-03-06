USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblDuplicata]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDuplicata](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[IdNotaFiscal] [uniqueidentifier] NULL,
	[Codigo] [nvarchar](50) NULL,
	[Valor] [decimal](7, 2) NULL,
	[Vencimento] [date] NULL,
	[Observacao] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblDuplicata] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblDuplicata] ADD  CONSTRAINT [DF_tblDuplicata_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[tblDuplicata]  WITH CHECK ADD  CONSTRAINT [FK_tblDuplicata_tblNotaFiscal] FOREIGN KEY([IdNotaFiscal])
REFERENCES [dbo].[tblNotaFiscal] ([Id])
GO
ALTER TABLE [dbo].[tblDuplicata] CHECK CONSTRAINT [FK_tblDuplicata_tblNotaFiscal]
GO
