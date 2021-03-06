USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblFornecedor_NotaFiscal]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFornecedor_NotaFiscal](
	[IdNotaFiscal] [uniqueidentifier] NOT NULL,
	[IdFornecedor] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblFornecedor_NotaFiscal] PRIMARY KEY CLUSTERED 
(
	[IdNotaFiscal] ASC,
	[IdFornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblFornecedor_NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_tblFornecedor_NotaFiscal_tblFornecedor] FOREIGN KEY([IdFornecedor])
REFERENCES [dbo].[tblFornecedor] ([Id])
GO
ALTER TABLE [dbo].[tblFornecedor_NotaFiscal] CHECK CONSTRAINT [FK_tblFornecedor_NotaFiscal_tblFornecedor]
GO
ALTER TABLE [dbo].[tblFornecedor_NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_tblFornecedor_NotaFiscal_tblNotaFiscal] FOREIGN KEY([IdNotaFiscal])
REFERENCES [dbo].[tblNotaFiscal] ([Id])
GO
ALTER TABLE [dbo].[tblFornecedor_NotaFiscal] CHECK CONSTRAINT [FK_tblFornecedor_NotaFiscal_tblNotaFiscal]
GO
