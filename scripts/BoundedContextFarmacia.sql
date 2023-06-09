/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28/04/2023 19:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enderecos]    Script Date: 28/04/2023 19:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enderecos](
	[Id] [uniqueidentifier] NOT NULL,
	[FornecedorId] [uniqueidentifier] NOT NULL,
	[Logradouro] [varchar](200) NOT NULL,
	[Numero] [varchar](50) NOT NULL,
	[Complemento] [varchar](250) NULL,
	[Cep] [varchar](8) NOT NULL,
	[Bairro] [varchar](100) NOT NULL,
	[Cidade] [varchar](100) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Enderecos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fornecedores]    Script Date: 28/04/2023 19:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedores](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[Documento] [varchar](14) NOT NULL,
	[TipoFornecedor] [int] NOT NULL,
	[Ativo] [bit] NOT NULL,
 CONSTRAINT [PK_Fornecedores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepresentanteLegal]    Script Date: 28/04/2023 19:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepresentanteLegal](
	[Id] [uniqueidentifier] NOT NULL,
	[FornecedorId] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[SobreNome] [varchar](50) NOT NULL,
	[Documento] [varchar](14) NOT NULL,
	[Email] [varchar](255) NULL,
	[Telefone] [varchar](13) NOT NULL,
 CONSTRAINT [PK_RepresentanteLegal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230423225905_Initial', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230424051033_AdjutForeingKeyFornecedorEndereco', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230424065239_AdjutForeingKeyFornecedorEndereco2', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230424065548_AdjutForeingKeyFornecedorEndereco3', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230424203540_AddPropetyConfigOfValorInProduto', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230425035736_ChangeProdutosToEndercos', N'6.0.9')
GO
INSERT [dbo].[Enderecos] ([Id], [FornecedorId], [Logradouro], [Numero], [Complemento], [Cep], [Bairro], [Cidade], [Estado]) VALUES (N'a0471528-67a7-4654-b870-08d92d68367e', N'493e1150-6f86-4d99-aaa5-08d92d68366d', N'Rua Cuba', N'379', N'201 - B', N'21060120', N'Penha Circular', N'Rio de Janeiro', N'RJ')
INSERT [dbo].[Enderecos] ([Id], [FornecedorId], [Logradouro], [Numero], [Complemento], [Cep], [Bairro], [Cidade], [Estado]) VALUES (N'34859647-d76b-4c3b-fa4c-08d92e902cfa', N'493e1150-6f86-4d99-aaa5-08d92d68366d', N'Rua Cuba', N'379 ', N'Sala 101', N'21020160', N'Penha', N'Rio de Janeiro', N'RJ')
INSERT [dbo].[Enderecos] ([Id], [FornecedorId], [Logradouro], [Numero], [Complemento], [Cep], [Bairro], [Cidade], [Estado]) VALUES (N'44caff7c-15d9-41ff-89b7-08d9320c1593', N'13a4cac1-5524-46cc-e37e-08d9320c1591', N'Rua Cuba', N'379', N'201', N'20060120', N'Penha Circular', N'Rio de Janeiro', N'RJ')
INSERT [dbo].[Enderecos] ([Id], [FornecedorId], [Logradouro], [Numero], [Complemento], [Cep], [Bairro], [Cidade], [Estado]) VALUES (N'd1f2468f-9317-43a8-54b8-08daa18e1849', N'493e1150-6f86-4d99-aaa5-08d92d68366d', N'Rua Vieira de Araújo', N'155', N'c 3', N'21765100', N'Realengo', N'Rio de Janeiro', N'RJ')
INSERT [dbo].[Enderecos] ([Id], [FornecedorId], [Logradouro], [Numero], [Complemento], [Cep], [Bairro], [Cidade], [Estado]) VALUES (N'709758d7-7d3f-48ce-9cd2-08db45405c8b', N'd0fa4f1f-caf0-4112-e1aa-08db4517c6ba', N'Rua do Alex', N'123', N'Complemento do Alex', N'21060120', N'Bairro do Alex', N'Cidade do Alex', N'Estado do Alex')
INSERT [dbo].[Enderecos] ([Id], [FornecedorId], [Logradouro], [Numero], [Complemento], [Cep], [Bairro], [Cidade], [Estado]) VALUES (N'b9a3068b-616b-4ba4-034e-08db46b777a3', N'13a4cac1-5524-46cc-e37e-08d9320c1591', N'Rua do Alex', N'123', N'Complemento do Alex de novo!', N'25659870', N'Bairro do Alex', N'Juiz de Fora', N'Minas Gerais')
INSERT [dbo].[Enderecos] ([Id], [FornecedorId], [Logradouro], [Numero], [Complemento], [Cep], [Bairro], [Cidade], [Estado]) VALUES (N'3435cc42-32c5-4a7c-32c6-08db478691c3', N'e82ca0f3-bd48-43e4-fd69-08db45196da8', N'Rua do Alex', N'123', N'Xpto da Silva Complemento', N'21321233', N'Goianópis', N'Goiania', N'GO')
INSERT [dbo].[Enderecos] ([Id], [FornecedorId], [Logradouro], [Numero], [Complemento], [Cep], [Bairro], [Cidade], [Estado]) VALUES (N'56ff79b0-ae7d-48eb-8073-08db478701d6', N'e82ca0f3-bd48-43e4-fd69-08db45196da8', N'Teste de Adição', N'99', N'Complemento do Teste de Adição', N'21456788', N'Madureira', N'Rio de Janeiro', N'Rio de Janeiro')
GO
INSERT [dbo].[Fornecedores] ([Id], [Nome], [Documento], [TipoFornecedor], [Ativo]) VALUES (N'493e1150-6f86-4d99-aaa5-08d92d68366d', N'Cooperchip CPES Ltda.', N'09075759000108', 2, 1)
INSERT [dbo].[Fornecedores] ([Id], [Nome], [Documento], [TipoFornecedor], [Ativo]) VALUES (N'b9b330d9-93c0-4120-520c-08d92e902cf1', N'Lumac Importação e Exportação Ltda', N'75535785768', 1, 1)
INSERT [dbo].[Fornecedores] ([Id], [Nome], [Documento], [TipoFornecedor], [Ativo]) VALUES (N'13a4cac1-5524-46cc-e37e-08d9320c1591', N'XPTO DA SILVA', N'86480820000143', 2, 1)
INSERT [dbo].[Fornecedores] ([Id], [Nome], [Documento], [TipoFornecedor], [Ativo]) VALUES (N'4e38e35c-4258-4fe2-50fc-08daa18e183e', N'Cooperchip CPES Ltda 2', N'12018256017', 1, 1)
INSERT [dbo].[Fornecedores] ([Id], [Nome], [Documento], [TipoFornecedor], [Ativo]) VALUES (N'd0fa4f1f-caf0-4112-e1aa-08db4517c6ba', N'Alex Produções', N'32762606000150', 2, 1)
INSERT [dbo].[Fornecedores] ([Id], [Nome], [Documento], [TipoFornecedor], [Ativo]) VALUES (N'e82ca0f3-bd48-43e4-fd69-08db45196da8', N'Teste Adição', N'15791226000125', 2, 1)
GO
INSERT [dbo].[RepresentanteLegal] ([Id], [FornecedorId], [Nome], [SobreNome], [Documento], [Email], [Telefone]) VALUES (N'7dd4a1f7-59e5-46e8-bd0a-08db4517c6c0', N'd0fa4f1f-caf0-4112-e1aa-08db4517c6ba', N'Alex Souza', N'da Silva', N'75535689566', N'alexdasilva012@admin.com', N'21986502122')
INSERT [dbo].[RepresentanteLegal] ([Id], [FornecedorId], [Nome], [SobreNome], [Documento], [Email], [Telefone]) VALUES (N'e959e9fc-4af6-4cb9-061b-08db45196dab', N'e82ca0f3-bd48-43e4-fd69-08db45196da8', N'Elisa', N'da Silva', N'75535689545', N'elisadasilva@admin.com', N'21986502122')
INSERT [dbo].[RepresentanteLegal] ([Id], [FornecedorId], [Nome], [SobreNome], [Documento], [Email], [Telefone]) VALUES (N'b0d06fef-0d56-4ef0-b67e-4ce923544887', N'13a4cac1-5524-46cc-e37e-08d9320c1591', N'Lívia Cristina', N'Santos', N'13340118779', N'livia.cooperchip@gmail.com', N'21997752915')
INSERT [dbo].[RepresentanteLegal] ([Id], [FornecedorId], [Nome], [SobreNome], [Documento], [Email], [Telefone]) VALUES (N'4cabc250-89b1-4cd6-8053-54a681989423', N'b9b330d9-93c0-4120-520c-08d92e902cf1', N'Claudia Maria', N'Jezler', N'06492322835', N'claudiam.jmfernandes@gmail.com', N'11997750029')
INSERT [dbo].[RepresentanteLegal] ([Id], [FornecedorId], [Nome], [SobreNome], [Documento], [Email], [Telefone]) VALUES (N'63532f19-5f6a-4387-884b-6bdc8a92fbc7', N'493e1150-6f86-4d99-aaa5-08d92d68366d', N'Carlos A', N'Santos', N'75535785768', N'carlos.itdeveloper@gmail.com', N'21986502122')
INSERT [dbo].[RepresentanteLegal] ([Id], [FornecedorId], [Nome], [SobreNome], [Documento], [Email], [Telefone]) VALUES (N'5798834c-03c0-4531-9961-6d7541e5088a', N'4e38e35c-4258-4fe2-50fc-08daa18e183e', N'Maria Alice', N'Nascimento', N'12108075587', N'maria.cooperchip@gmail.com', N'21985565121')
GO
ALTER TABLE [dbo].[Enderecos]  WITH CHECK ADD  CONSTRAINT [FK_Enderecos_Fornecedores_FornecedorId] FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedores] ([Id])
GO
ALTER TABLE [dbo].[Enderecos] CHECK CONSTRAINT [FK_Enderecos_Fornecedores_FornecedorId]
GO
ALTER TABLE [dbo].[RepresentanteLegal]  WITH CHECK ADD  CONSTRAINT [FK_RepresentanteLegal_Fornecedores_FornecedorId] FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedores] ([Id])
GO
ALTER TABLE [dbo].[RepresentanteLegal] CHECK CONSTRAINT [FK_RepresentanteLegal_Fornecedores_FornecedorId]
GO
