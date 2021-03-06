USE [Cartonagem]
GO
/****** Object:  Table [dbo].[tblCliente]    Script Date: 08/12/2018 12:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCliente](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[RazaoSocial] [nvarchar](200) NULL,
	[Observacao] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblCliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblCliente] ADD  CONSTRAINT [DF_tblCliente_Id]  DEFAULT (newid()) FOR [Id]
GO
