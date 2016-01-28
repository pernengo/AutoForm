USE [BDSistema]
GO
/****** Object:  Schema [Reportes]    Script Date: 12/28/2015 19:47:09 ******/
CREATE SCHEMA [Reportes] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoDocumento] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_TipoDocumento] UNIQUE NONCLUSTERED 
(
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoDocumento] ON
INSERT [dbo].[TipoDocumento] ([Id], [IdTipoDocumento], [Nombre]) VALUES (32, 80, N'C U I T')
INSERT [dbo].[TipoDocumento] ([Id], [IdTipoDocumento], [Nombre]) VALUES (33, 86, N'C U I L')
INSERT [dbo].[TipoDocumento] ([Id], [IdTipoDocumento], [Nombre]) VALUES (42, 96, N'DNI ')
INSERT [dbo].[TipoDocumento] ([Id], [IdTipoDocumento], [Nombre]) VALUES (43, 99, N'SIN IDENTIFICAR / VENTA GLOBAL DIARIA')
SET IDENTITY_INSERT [dbo].[TipoDocumento] OFF
/****** Object:  Table [dbo].[TipoComprobante]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoComprobante](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Letra] [char](1) NULL,
	[Descripcion] [varchar](50) NULL,
	[Copias] [smallint] NULL,
 CONSTRAINT [PK_TipoComprobante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (1, N'FACTURAS A', N'A', N'FACTURA', 3)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (2, N'NOTAS DE DEBITO A', N'A', N'NOTAS DE DEBITO ', 2)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (3, N'NOTAS DE CREDITO A', N'A', N'NOTAS DE CREDITO ', 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (4, N'RECIBOS A', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (5, N'NOTAS DE VENTA AL CONTADO A', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (6, N'FACTURAS B', N'B', N'FACTURA', 2)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (7, N'NOTAS DE DEBITO B', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (8, N'NOTAS DE CREDITO B', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (9, N'RECIBOS B', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (10, N'NOTAS DE VENTA AL CONTADO B', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (11, N'FACTURAS C', N'C', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (12, N'NOTAS DE DEBITO C', N'C', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (13, N'NOTAS DE CREDITO C', N'C', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (15, N'RECIBOS C', N'C', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (16, N'NOTAS DE VENTA AL CONTADO C', N'C', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (17, N'LIQUIDACION DE SERVICIOS PUBLICOS CLASE A', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (18, N'LIQUIDACION DE SERVICIOS PUBLICOS CLASE B', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (19, N'FACTURAS DE EXPORTACION', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (20, N'NOTAS DE DEBITO POR OPERACIONES CON EL EXTERIOR', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (21, N'NOTAS DE CREDITO POR OPERACIONES CON EL EXTERIOR', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (22, N'FACTURAS - PERMISO EXPORTACION SIMPLIFICADO - DTO. 855/97', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (23, N'CPTES  A  DE COMPRA PRIMARIA PARA EL SECTOR PESQUERO MARITIMO', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (24, N'CPTES  A  DE COSIGNACION PRIMARIA PARA EL SECTOR PESQUERO MARITIMO', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (25, N'CPTES  B  DE COMPRA PRIMARIA PARA EL SECTOR PESQUERO MARITIMO', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (26, N'CPTES  B  DE CONSIGNACION PRIMARIA PARA EL SECTOR PESQUERO MARITIMO', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (27, N'LIQUIDACION UNICA COMERCIAL IMPOSITIVA CLASE A', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (28, N'LIQUIDACION UNICA COMERCIAL IMPOSITIVA CLASE B', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (30, N'COMPROBANTES DE COMPRA DE BIENES USADOS', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (32, N'COMPROBANTES PARA RECICLAR MATERIALES', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (33, N'LIQUIDACION PRIMARIA DE GRANOS', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (34, N'COMPROBANTES A DEL APARTADO A  INCISO F  R G  N  1415', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (35, N'COMPROBANTES B DEL ANEXO I  APARTADO A  INC. F   RG N  1415', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (36, N'COMPROBANTES C DEL ANEXO I  APARTADO A  INC.F   R.G. N  1415', N'C', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (37, N'NOTAS DE DEBITO O DOCUMENTO EQUIVALENTE QUE CUMPLAN CON LA R.G. N  1415', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (39, N'OTROS COMPROBANTES A QUE CUMPLEN CON LA R G  1415', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (40, N'OTROS COMPROBANTES B QUE CUMPLAN CON LA R.G. 1415', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (41, N'OTROS COMPROBANTES C QUE CUMPLAN CON LA R.G. 1415', N'C', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (43, N'NOTA DE CREDITO LIQUIDACION UNICA COMERCIAL IMPOSITIVA CLASE B', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (45, N'NOTA DE DEBITO LIQUIDACION UNICA COMERCIAL IMPOSITIVA CLASE A', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (46, N'NOTA DE DEBITO LIQUIDACION UNICA COMERCIAL IMPOSITIVA CLASE B', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (48, N'NOTA DE CREDITO LIQUIDACION UNICA COMERCIAL IMPOSITIVA CLASE A', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (49, N'COMPROBANTES DE COMPRA DE BIENES NO REGISTRABLES A CONSUMIDORES FINALES', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (50, N'RECIBO FACTURA A  REGIMEN DE FACTURA DE CREDITO', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (51, N'FACTURAS M', N'M', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (52, N'NOTAS DE DEBITO M', N'M', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (53, N'NOTAS DE CREDITO M', N'M', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (54, N'RECIBOS M', N'M', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (55, N'NOTAS DE VENTA AL CONTADO M', N'M', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (56, N'COMPROBANTES M DEL ANEXO I  APARTADO A  INC F   R G  N  1415', N'M', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (57, N'OTROS COMPROBANTES M QUE CUMPLAN CON LA R G  N  1415', N'M', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (58, N'CUENTAS DE VENTA Y LIQUIDO PRODUCTO M', N'M', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (59, N'LIQUIDACIONES M', N'M', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (60, N'CUENTAS DE VENTA Y LIQUIDO PRODUCTO A', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (61, N'CUENTAS DE VENTA Y LIQUIDO PRODUCTO B', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (63, N'LIQUIDACIONES A', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (64, N'LIQUIDACIONES B', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (66, N'DESPACHO DE IMPORTACION', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (70, N'RECIBOS FACTURA DE CREDITO', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (81, N'TIQUE FACTURA A   CONTROLADORES FISCALES', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (82, N'TIQUE - FACTURA B', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (83, N'TIQUE', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (90, N'NOTA DE CREDITO OTROS COMP  QUE NO CUMPLEN CON LA R G  1415 Y SUS MODIF', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (99, N'OTROS COMP  QUE NO CUMPLEN CON LA R G  1415 Y SUS MODIF', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (110, N'TIQUE NOTA DE CREDITO', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (111, N'TIQUE FACTURA C', N'C', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (112, N'TIQUE NOTA DE CREDITO A', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (113, N'TIQUE NOTA DE CREDITO B', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (114, N'TIQUE NOTA DE CREDITO C', N'C', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (115, N'TIQUE NOTA DE DEBITO A', N'A', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (116, N'TIQUE NOTA DE DEBITO B', N'B', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (117, N'TIQUE NOTA DE DEBITO C', N'C', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (118, N'TIQUE FACTURA M', N'M', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (119, N'TIQUE NOTA DE CREDITO M', N'M', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (120, N'TIQUE NOTA DE DEBITO M', N'M', NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (331, N'LIQUIDACION SECUNDARIA DE GRANOS', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (332, N'CERTIFICADO DE DEPOSITO DE GRANOS EN PLANTA', NULL, NULL, 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (333, N'efsdfsfsd', N'A', N'sdfsdf', 0)
INSERT [dbo].[TipoComprobante] ([Id], [Nombre], [Letra], [Descripcion], [Copias]) VALUES (1000, N'Orden Compra', N'X', N'ORDEN DE COMPRA', 2)
/****** Object:  Table [dbo].[Parametros]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parametros](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreParametro] [varchar](50) NULL,
	[ValorParametro] [varchar](50) NULL,
	[Descripcion] [varchar](200) NULL,
 CONSTRAINT [PK_Parametros] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Parametros] ON
INSERT [dbo].[Parametros] ([Id], [NombreParametro], [ValorParametro], [Descripcion]) VALUES (1, N'PuntoVenta', N'1', N'Sirve para cargar el campo Punto Venta en la pantalla Movimientos')
SET IDENTITY_INSERT [dbo].[Parametros] OFF
/****** Object:  Table [dbo].[Pais]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CondicionPago]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CondicionPago](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_CondicionPago] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CondicionPago] ON
INSERT [dbo].[CondicionPago] ([Id], [Nombre]) VALUES (1, N'Contado')
INSERT [dbo].[CondicionPago] ([Id], [Nombre]) VALUES (2, N'Cuenta Corriente')
INSERT [dbo].[CondicionPago] ([Id], [Nombre]) VALUES (3, N'Cheque')
INSERT [dbo].[CondicionPago] ([Id], [Nombre]) VALUES (4, N'Tarjeta')
INSERT [dbo].[CondicionPago] ([Id], [Nombre]) VALUES (5, N'Contado')
INSERT [dbo].[CondicionPago] ([Id], [Nombre]) VALUES (6, N'Cuenta Corriente')
INSERT [dbo].[CondicionPago] ([Id], [Nombre]) VALUES (7, N'Cheque')
INSERT [dbo].[CondicionPago] ([Id], [Nombre]) VALUES (8, N'Tarjeta')
SET IDENTITY_INSERT [dbo].[CondicionPago] OFF
/****** Object:  Table [dbo].[CategoriaAFIP]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriaAFIP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoriaAFIP] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_TipoCategoriaAFIP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_CategoriaAFIP] UNIQUE NONCLUSTERED 
(
	[IdCategoriaAFIP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CategoriaAFIP] ON
INSERT [dbo].[CategoriaAFIP] ([Id], [IdCategoriaAFIP], [Nombre]) VALUES (1, 1, N'RESPONSABLE INSCRIPTO')
INSERT [dbo].[CategoriaAFIP] ([Id], [IdCategoriaAFIP], [Nombre]) VALUES (2, 2, N'RESPONSABLE NO INSCRIPTO')
INSERT [dbo].[CategoriaAFIP] ([Id], [IdCategoriaAFIP], [Nombre]) VALUES (3, 3, N'MONOTRIBUTISTA')
INSERT [dbo].[CategoriaAFIP] ([Id], [IdCategoriaAFIP], [Nombre]) VALUES (4, 4, N'EXENTO')
INSERT [dbo].[CategoriaAFIP] ([Id], [IdCategoriaAFIP], [Nombre]) VALUES (6, 5, N'SIN SITUACION ANTE EL IVA')
SET IDENTITY_INSERT [dbo].[CategoriaAFIP] OFF
/****** Object:  Table [dbo].[Categoria]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (1, N'Mouse')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (2, N'Impresoras')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (3, N'Parlantes')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (5, N'1212')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (6, N'Cartuchos Alternativos')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (7, N'asdasdasdasd')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (8, N'Cartucho Originiales')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (9, N'Cartuchos Alternativos')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (10, N'Teclados y Mouses')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (11, N'Auriculares')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (12, N'Parlantes')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (13, N'Cables y Adaptadores')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (14, N'Herramientas')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (15, N'Memorias USB')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (16, N'Pilas ')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (17, N'Cargadores')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (18, N'Varios')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (19, N'Conectividad')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (20, N'Papeleria')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (21, N'Toner y Ribbons')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
/****** Object:  UserDefinedFunction [dbo].[fATabla]    Script Date: 12/28/2015 19:47:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fATabla](@Parametro varchar(8000))

RETURNS @Temp1 TABLE  (Valor Int)
AS
BEGIN 

	declare @StrValor Varchar(1000)
	declare @TA TABLE  (Valor Int)
	declare @X int
	declare @Y int
	declare @Z int
	declare @T int

	set @StrValor = @Parametro
 
	--print  @StrValor 

	set @X=0
	set @Y=0
	set @Z=0

	--drop table Temp1

	--CREATE TABLE Temp1 (Valor Int)

	while @X <=len(@StrValor) 
	begin
		set @X=@X+1
		if (Right(left(@StrValor,@X),1) =',')
		begin
			set 	@Y=@X
			insert into  @TA Values (CONVERT(INT ,Right(left(@StrValor,@Y-1),(@Y-@Z))))
			--print Right(left(@StrValor,@Y-1),(@Y-@Z))
			set 	@Z=@Y+1
		end
	end
	--print Right(left(@StrValor,@X),(@X-@Z))
	insert into  @TA Values (CONVERT(INT ,Right(left(@StrValor,@X),(@X-@Z))))

	INSERT @Temp1
	SELECT Valor
	FROM @TA
	return
END
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[NombreFantasia] [varchar](200) NULL,
	[CUIT] [varchar](13) NULL,
	[IngresosBrutos] [varchar](14) NULL,
	[InicioActividad] [date] NULL,
	[IdCategoriaAFIP] [int] NOT NULL,
	[Logo] [image] NULL,
 CONSTRAINT [PK_Empresas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Empresas] ON
INSERT [dbo].[Empresas] ([Id], [Nombre], [NombreFantasia], [CUIT], [IngresosBrutos], [InicioActividad], [IdCategoriaAFIP], [Logo]) VALUES (25, N'david', N'david', N'56-45115241-2', N'78566757', CAST(0xB03A0B00 AS Date), 1, NULL)
INSERT [dbo].[Empresas] ([Id], [Nombre], [NombreFantasia], [CUIT], [IngresosBrutos], [InicioActividad], [IdCategoriaAFIP], [Logo]) VALUES (26, N'david', N'david2', N'56-45115241-2', N'78566757', CAST(0xB03A0B00 AS Date), 1, NULL)
SET IDENTITY_INSERT [dbo].[Empresas] OFF
/****** Object:  StoredProcedure [dbo].[SPListarCondicionPago]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPListarCondicionPago]
AS
SELECT Id, Nombre FROM CondicionPago
GO
/****** Object:  StoredProcedure [dbo].[SPListarCategorias]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPListarCategorias]
AS

SELECT Id, Nombre 
FROM Categoria
GO
/****** Object:  StoredProcedure [dbo].[SPListarCategoriaAFIP]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPListarCategoriaAFIP]
AS 
SELECT Id, IdCategoriaAFIP, Nombre FROM CategoriaAFIP
GO
/****** Object:  StoredProcedure [dbo].[SPListarTipoDocumentoAFIP]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPListarTipoDocumentoAFIP]
AS
SELECT Id, IdTipoDocumento, Nombre FROM TipoDocumento
GO
/****** Object:  StoredProcedure [dbo].[SPListarTipoComprobantes]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPListarTipoComprobantes]

AS

SELECt Id, Nombre, Letra, Descripcion, Copias FROM TipoComprobante
GO
/****** Object:  StoredProcedure [dbo].[SPModificarCategoriaAFIP]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPModificarCategoriaAFIP] @Id INT, @IdCategoriaAFIP INT, @Nombre VARCHAR(50)
AS
UPDATE CategoriaAFIP SET Nombre = @Nombre, IdCategoriaAFIP = @IdCategoriaAFIP WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPModificarCategoria]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPModificarCategoria] @Id INT, @Nombre VARCHAR(50)
AS
UPDATE Categoria SET Nombre = @Nombre WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPModificarTipoDocumentoAFIP]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPModificarTipoDocumentoAFIP] @Id INT, @IdTipoDocumento INT, @Nombre VARCHAR(50)
AS
UPDATE TipoDocumento 
SET IdTipoDocumento = @IdTipoDocumento,
	Nombre = @Nombre 
WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPModificarTipoComprobante]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPModificarTipoComprobante] @Id INT, @Nombre VARCHAR(100), @Letra CHAR(1), @Descripcion VARCHAR(50),
												   @Copias SMALLINT	
AS

UPDATE TipoComprobante 
SET Nombre = @Nombre,
	Letra = @Letra,
	Descripcion = @Descripcion,
	Copias = @Copias
WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPModificarPais]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPModificarPais] @Id INT, @Nombre VARCHAR(50)
AS

UPDATE Pais 
SET Nombre = @Nombre
WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarTipoDocumentoAFIP]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarTipoDocumentoAFIP] @IdTipoDocumento INT, @Nombre VARCHAR(50)
AS
INSERT INTO TipoDocumento (IdTipoDocumento, Nombre) VALUES (@IdTipoDocumento ,@Nombre)

SELECT MAX(Id) AS Id FROM TipoDocumento
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarTipoComprobante]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarTipoComprobante] @Id INT, @Nombre VARCHAR(100), 
										   @Letra CHAR(1), @Descripcion VARCHAR(50),
										   @Copias SMALLINT
AS

INSERT INTO TipoComprobante (Id, Nombre, Letra, Descripcion, Copias) 
VALUES (@Id, @Nombre, @Letra, @Descripcion, @Copias)

SELECT MAX(Id) AS Id FROM TipoComprobante
GO
/****** Object:  StoredProcedure [dbo].[SPInsetarPais]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsetarPais] @Nombre VARCHAR(50)
AS
INSERT INTO Pais (Nombre)
VALUES (@Nombre)


SELECT MAX(Id) As Id FROM Pais
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarCategoriaAFIP]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarCategoriaAFIP] @Nombre VARCHAR(50), @IdCategoriaAFIP INT
AS
INSERT INTO CategoriaAFIP (Nombre, IdCategoriaAFIP) VALUES (@Nombre, @IdCategoriaAFIP)

SELECT MAX(Id) AS Id FROM CategoriaAFIP
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarCategoria]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarCategoria] @Nombre VARCHAR(50)
AS
INSERT INTO Categoria (Nombre) VALUES (@Nombre)


SELECT MAX(Id) AS Id FROM Categoria
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarTipoDocumentoAFIP]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEliminarTipoDocumentoAFIP] @Id INT
AS
DELETE TipoDocumento WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarTipoComprobante]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEliminarTipoComprobante] @Id INT

AS

DELETE TipoComprobante WHERE Id = @Id
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provincia](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IdPais] [int] NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (1, N'Buenos Aires', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (2, N'Buenos Aires-GBA', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (3, N'Capital Federal', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (4, N'Catamarca', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (5, N'Chaco', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (6, N'Chubut', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (7, N'Córdoba', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (8, N'Corrientes', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (9, N'Entre Ríos', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (10, N'Formosa', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (11, N'Jujuy', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (12, N'La Pampa', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (13, N'La Rioja', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (14, N'Mendoza', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (15, N'Misiones', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (16, N'Neuquén', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (17, N'Río Negro', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (18, N'Salta', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (19, N'San Juan', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (20, N'San Luis', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (21, N'Santa Cruz', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (22, N'Santa Fe', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (23, N'Santiago del Estero', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (24, N'Tierra del Fuego', NULL)
INSERT [dbo].[Provincia] ([Id], [Nombre], [IdPais]) VALUES (25, N'Tucumán', NULL)
/****** Object:  StoredProcedure [dbo].[SPEliminarCategoriaAFIP]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEliminarCategoriaAFIP] @Id INT
AS
DELETE CategoriaAFIP WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarCategoria]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEliminarCategoria] @Id INT
AS
DELETE Categoria WHERE Id = @Id
GO
/****** Object:  Table [dbo].[Impresoras]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Impresoras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Estacion] [varchar](50) NULL,
	[IdTipoComprobante] [int] NULL,
	[Impresora] [varchar](150) NULL,
 CONSTRAINT [PK_Impresoras] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Impresoras] ON
INSERT [dbo].[Impresoras] ([Id], [Estacion], [IdTipoComprobante], [Impresora]) VALUES (3, N'ATROX-PC', 1, N'Factura')
INSERT [dbo].[Impresoras] ([Id], [Estacion], [IdTipoComprobante], [Impresora]) VALUES (4, N'DAVID-PC', 1, N'Microsoft XPS Document Writer')
INSERT [dbo].[Impresoras] ([Id], [Estacion], [IdTipoComprobante], [Impresora]) VALUES (5, N'ATROX-PC', 6, N'Factura')
SET IDENTITY_INSERT [dbo].[Impresoras] OFF
/****** Object:  Table [dbo].[TipoMovimiento]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoMovimiento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoComprobante] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Signo] [char](1) NOT NULL,
	[Numeracion] [char](1) NULL,
	[MueveStock] [bit] NULL,
 CONSTRAINT [PK_TipoMov] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoMovimiento] ON
INSERT [dbo].[TipoMovimiento] ([Id], [IdTipoComprobante], [Nombre], [Signo], [Numeracion], [MueveStock]) VALUES (1, 1, N'Factura A', N'D', N'A', 1)
INSERT [dbo].[TipoMovimiento] ([Id], [IdTipoComprobante], [Nombre], [Signo], [Numeracion], [MueveStock]) VALUES (2, 1000, N'Remito Venta', N'H', N'A', 1)
INSERT [dbo].[TipoMovimiento] ([Id], [IdTipoComprobante], [Nombre], [Signo], [Numeracion], [MueveStock]) VALUES (7, 1, N'Factura Proveedot A', N'D', N'M', 1)
INSERT [dbo].[TipoMovimiento] ([Id], [IdTipoComprobante], [Nombre], [Signo], [Numeracion], [MueveStock]) VALUES (8, 1, N'dfhdhdgdgdg', N'D', N'A', 1)
INSERT [dbo].[TipoMovimiento] ([Id], [IdTipoComprobante], [Nombre], [Signo], [Numeracion], [MueveStock]) VALUES (9, 6, N'FACTURA B', N'A', N'A', 1)
INSERT [dbo].[TipoMovimiento] ([Id], [IdTipoComprobante], [Nombre], [Signo], [Numeracion], [MueveStock]) VALUES (10, 1, N'FACTURA A', N'A', N'M', 1)
SET IDENTITY_INSERT [dbo].[TipoMovimiento] OFF
/****** Object:  StoredProcedure [dbo].[SPObtenerCategoriaAFIP]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerCategoriaAFIP] @Id INT
AS
SELECT Id, Nombre FROM CategoriaAFIP WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerCategoria]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerCategoria] @Id INT
AS
SELECT Id, Nombre FROM Categoria WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoDocumentoAFIP]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerTipoDocumentoAFIP] @Id INT
AS
SELECT Id, IdTipoDocumento, Nombre FROM TipoDocumento WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoComprobante]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerTipoComprobante] @ID INT = 0
AS

DECLARE @Where VARCHAR(100) = ''

BEGIN
	SELECT Id, Nombre, Letra, Descripcion, Copias
	FROM TipoComprobante
	WHERE Id = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerParametro]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerParametro] @NombreParametro VARCHAR(50)
AS

SELECT Id, NombreParametro, ValorParametro, Descripcion 
FROM Parametros WHERE NombreParametro = @NombreParametro
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerPais]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerPais] @Id INT
AS
SELECT Id, Nombre 
FROM Pais
WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerTipoMovimiento]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerTipoMovimiento] @Id INT
AS
SELECT Id, IdTipoComprobante, Nombre, Signo, Numeracion , MueveStock
FROM TipoMovimiento
WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPModificarTipoMovimiento]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPModificarTipoMovimiento] @Id INT, @IdTipoComprobante INT, @Nombre VARCHAR(100), 
													@Signo CHAR(1), @Numeracion CHAR(1), @MueveStock BIT
AS
UPDATE TipoMovimiento 
SET IdTipoComprobante = @IdTipoComprobante,
	Nombre = @Nombre,
	Signo = @Signo,
	Numeracion = @Numeracion,
	MueveStock = @MueveStock
WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPListarTipoMovimiento]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPListarTipoMovimiento]
AS
SELECT Id, IdTipoComprobante, Nombre, Signo, Numeracion, MueveStock 
FROM TipoMovimiento
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerImpresoras]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPObtenerImpresoras] 
    @Estacion VARCHAR(50),
    @IdTipoComprobante int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Id], [Estacion], [IdTipoComprobante], [Impresora] 
	FROM   [dbo].[Impresoras] 
	WHERE  [Estacion] = @Estacion AND [IdTipoComprobante] = @IdTipoComprobante 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerEmpresa]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerEmpresa] @ID INT

AS

IF @ID = 0
	BEGIN
		SELECT TOP 1 Id, Nombre, NombreFantasia, CUIT, IngresosBrutos, InicioActividad, IdCategoriaAFIP
		FROM Empresas
	END
ELSE
	BEGIN
		SELECT TOP 1 Id, Nombre, NombreFantasia, CUIT, IngresosBrutos, InicioActividad, IdCategoriaAFIP
		FROM Empresas
		WHERE Id = @ID
	END
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Localidad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProvincia] [int] NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Localidad] ON
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1, 1, N'25 de Mayo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2, 1, N'3 de febrero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (3, 1, N'A. Alsina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (4, 1, N'A. Gonzßles Chßves')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (5, 1, N'Aguas Verdes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (6, 1, N'Alberti')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (7, 1, N'Arrecifes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (8, 1, N'Ayacucho')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (9, 1, N'Azul')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (10, 1, N'BahÝa Blanca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (11, 1, N'Balcarce')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (12, 1, N'Baradero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (13, 1, N'Benito Jußrez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (14, 1, N'Berisso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (15, 1, N'BolÝvar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (16, 1, N'Bragado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (17, 1, N'Brandsen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (18, 1, N'Campana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (19, 1, N'Ca±uelas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (20, 1, N'Capilla del Se±or')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (21, 1, N'Capitßn Sarmiento')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (22, 1, N'Carapachay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (23, 1, N'Carhue')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (24, 1, N'Caril¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (25, 1, N'Carlos Casares')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (26, 1, N'Carlos Tejedor')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (27, 1, N'Carmen de Areco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (28, 1, N'Carmen de Patagones')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (29, 1, N'Castelli')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (30, 1, N'Chacabuco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (31, 1, N'Chascom·s')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (32, 1, N'Chivilcoy')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (33, 1, N'Col¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (34, 1, N'Coronel Dorrego')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (35, 1, N'Coronel Pringles')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (36, 1, N'Coronel Rosales')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (37, 1, N'Coronel Suarez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (38, 1, N'Costa Azul')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (39, 1, N'Costa Chica')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (40, 1, N'Costa del Este')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (41, 1, N'Costa Esmeralda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (42, 1, N'Daireaux')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (43, 1, N'Darregueira')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (44, 1, N'Del Viso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (45, 1, N'Dolores')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (46, 1, N'Don Torcuato')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (47, 1, N'Ensenada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (48, 1, N'Escobar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (49, 1, N'Exaltaci¾n de la Cruz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (50, 1, N'Florentino Ameghino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (51, 1, N'GarÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (52, 1, N'Gral. Alvarado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (53, 1, N'Gral. Alvear')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (54, 1, N'Gral. Arenales')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (55, 1, N'Gral. Belgrano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (56, 1, N'Gral. Guido')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (57, 1, N'Gral. Lamadrid')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (58, 1, N'Gral. Las Heras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (59, 1, N'Gral. Lavalle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (60, 1, N'Gral. Madariaga')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (61, 1, N'Gral. Pacheco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (62, 1, N'Gral. Paz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (63, 1, N'Gral. Pinto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (64, 1, N'Gral. Pueyrred¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (65, 1, N'Gral. RodrÝguez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (66, 1, N'Gral. Viamonte')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (67, 1, N'Gral. Villegas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (68, 1, N'GuaminÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (69, 1, N'Guernica')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (70, 1, N'Hip¾lito Yrigoyen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (71, 1, N'Ing. Maschwitz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (72, 1, N'JunÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (73, 1, N'La Plata')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (74, 1, N'Laprida')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (75, 1, N'Las Flores')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (76, 1, N'Las Toninas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (77, 1, N'Leandro N. Alem')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (78, 1, N'Lincoln')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (79, 1, N'Loberia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (80, 1, N'Lobos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (81, 1, N'Los Cardales')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (82, 1, N'Los Toldos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (83, 1, N'Lucila del Mar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (84, 1, N'Lujßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (85, 1, N'Magdalena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (86, 1, N'Maip·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (87, 1, N'Mar Chiquita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (88, 1, N'Mar de Aj¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (89, 1, N'Mar de las Pampas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (90, 1, N'Mar del Plata')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (91, 1, N'Mar del Tuy·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (92, 1, N'Marcos Paz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (93, 1, N'Mercedes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (94, 1, N'Miramar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (95, 1, N'Monte')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (96, 1, N'Monte Hermoso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (97, 1, N'Munro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (98, 1, N'Navarro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (99, 1, N'Necochea')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (100, 1, N'OlavarrÝa')
GO
print 'Processed 100 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (101, 1, N'Partido de la Costa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (102, 1, N'Pehuaj¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (103, 1, N'Pellegrini')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (104, 1, N'Pergamino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (105, 1, N'Pig³Ú')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (106, 1, N'Pila')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (107, 1, N'Pilar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (108, 1, N'Pinamar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (109, 1, N'Pinar del Sol')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (110, 1, N'Polvorines')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (111, 1, N'Pte. Per¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (112, 1, N'Pußn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (113, 1, N'Punta Indio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (114, 1, N'Ramallo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (115, 1, N'Rauch')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (116, 1, N'Rivadavia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (117, 1, N'Rojas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (118, 1, N'Roque PÚrez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (119, 1, N'Saavedra')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (120, 1, N'Saladillo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (121, 1, N'Salliquel¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (122, 1, N'Salto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (123, 1, N'San AndrÚs de Giles')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (124, 1, N'San Antonio de Areco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (125, 1, N'San Antonio de Padua')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (126, 1, N'San Bernardo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (127, 1, N'San Cayetano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (128, 1, N'San Clemente del Tuy·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (129, 1, N'San Nicolßs')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (130, 1, N'San Pedro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (131, 1, N'San Vicente')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (132, 1, N'Santa Teresita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (133, 1, N'Suipacha')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (134, 1, N'Tandil')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (135, 1, N'TapalquÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (136, 1, N'Tordillo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (137, 1, N'Tornquist')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (138, 1, N'Trenque Lauquen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (139, 1, N'Tres Lomas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (140, 1, N'Villa Gesell')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (141, 1, N'Villarino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (142, 1, N'Zßrate')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (143, 2, N'11 de Septiembre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (144, 2, N'20 de Junio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (145, 2, N'25 de Mayo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (146, 2, N'Acassuso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (147, 2, N'AdroguÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (148, 2, N'Aldo Bonzi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (149, 2, N'-rea Reserva Cintur¾n Ecol¾gico')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (150, 2, N'Avellaneda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (151, 2, N'Banfield')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (152, 2, N'Barrio Parque')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (153, 2, N'Barrio Santa Teresita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (154, 2, N'Beccar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (155, 2, N'Bella Vista')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (156, 2, N'Berazategui')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (157, 2, N'Bernal Este')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (158, 2, N'Bernal Oeste')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (159, 2, N'Billinghurst')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (160, 2, N'Boulogne')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (161, 2, N'Burzaco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (162, 2, N'Carapachay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (163, 2, N'Caseros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (164, 2, N'Castelar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (165, 2, N'Churruca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (166, 2, N'Ciudad Evita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (167, 2, N'Ciudad Madero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (168, 2, N'Ciudadela')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (169, 2, N'Claypole')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (170, 2, N'Crucecita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (171, 2, N'Dock Sud')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (172, 2, N'Don Bosco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (173, 2, N'Don Orione')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (174, 2, N'El Jag³el')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (175, 2, N'El Libertador')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (176, 2, N'El Palomar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (177, 2, N'El Tala')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (178, 2, N'El TrÚbol')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (179, 2, N'Ezeiza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (180, 2, N'Ezpeleta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (181, 2, N'Florencio Varela')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (182, 2, N'Florida')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (183, 2, N'Francisco -lvarez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (184, 2, N'Gerli')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (185, 2, N'Glew')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (186, 2, N'Gonzßlez Catßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (187, 2, N'Gral. Lamadrid')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (188, 2, N'Grand Bourg')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (189, 2, N'Gregorio de Laferrere')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (190, 2, N'Guillermo Enrique Hudson')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (191, 2, N'Haedo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (192, 2, N'Hurlingham')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (193, 2, N'Ing. Sourdeaux')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (194, 2, N'Isidro Casanova')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (195, 2, N'Ituzaing¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (196, 2, N'JosÚ C. Paz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (197, 2, N'JosÚ Ingenieros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (198, 2, N'JosÚ Marmol')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (199, 2, N'La Lucila')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (200, 2, N'La Reja')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (201, 2, N'La Tablada')
GO
print 'Processed 200 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (202, 2, N'Lan·s')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (203, 2, N'Llavallol')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (204, 2, N'Loma Hermosa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (205, 2, N'Lomas de Zamora')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (206, 2, N'Lomas del Mill¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (207, 2, N'Lomas del Mirador')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (208, 2, N'Longchamps')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (209, 2, N'Los Polvorines')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (210, 2, N'Luis Guill¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (211, 2, N'Malvinas Argentinas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (212, 2, N'MartÝn Coronado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (213, 2, N'MartÝnez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (214, 2, N'Merlo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (215, 2, N'Ministro Rivadavia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (216, 2, N'Monte Chingolo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (217, 2, N'Monte Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (218, 2, N'Moreno')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (219, 2, N'Mor¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (220, 2, N'Mu±iz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (221, 2, N'Olivos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (222, 2, N'Pablo NoguÚs')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (223, 2, N'Pablo Podestß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (224, 2, N'Paso del Rey')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (225, 2, N'Pereyra')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (226, 2, N'Pi±eiro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (227, 2, N'Plßtanos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (228, 2, N'Pontevedra')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (229, 2, N'Quilmes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (230, 2, N'Rafael Calzada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (231, 2, N'Rafael Castillo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (232, 2, N'Ramos MejÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (233, 2, N'Ranelagh')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (234, 2, N'Remedios de Escalada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (235, 2, N'Sßenz Pe±a')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (236, 2, N'San Antonio de Padua')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (237, 2, N'San Fernando')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (238, 2, N'San Francisco Solano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (239, 2, N'San Isidro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (240, 2, N'San JosÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (241, 2, N'San Justo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (242, 2, N'San MartÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (243, 2, N'San Miguel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (244, 2, N'Santos Lugares')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (245, 2, N'SarandÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (246, 2, N'Sourigues')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (247, 2, N'Tapiales')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (248, 2, N'Temperley')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (249, 2, N'Tigre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (250, 2, N'Tortuguitas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (251, 2, N'Tristßn Sußrez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (252, 2, N'Trujui')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (253, 2, N'Turdera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (254, 2, N'ValentÝn Alsina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (255, 2, N'Vicente L¾pez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (256, 2, N'Villa Adelina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (257, 2, N'Villa Ballester')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (258, 2, N'Villa Bosch')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (259, 2, N'Villa Caraza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (260, 2, N'Villa Celina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (261, 2, N'Villa Centenario')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (262, 2, N'Villa de Mayo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (263, 2, N'Villa Diamante')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (264, 2, N'Villa DomÝnico')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (265, 2, N'Villa Espa±a')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (266, 2, N'Villa Fiorito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (267, 2, N'Villa Guillermina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (268, 2, N'Villa Insuperable')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (269, 2, N'Villa JosÚ Le¾n Sußrez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (270, 2, N'Villa La Florida')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (271, 2, N'Villa Luzuriaga')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (272, 2, N'Villa Martelli')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (273, 2, N'Villa Obrera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (274, 2, N'Villa Progreso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (275, 2, N'Villa Raffo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (276, 2, N'Villa Sarmiento')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (277, 2, N'Villa Tesei')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (278, 2, N'Villa Udaondo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (279, 2, N'Virrey del Pino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (280, 2, N'Wilde')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (281, 2, N'William Morris')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (282, 3, N'AgronomÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (283, 3, N'Almagro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (284, 3, N'Balvanera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (285, 3, N'Barracas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (286, 3, N'Belgrano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (287, 3, N'Boca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (288, 3, N'Boedo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (289, 3, N'Caballito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (290, 3, N'Chacarita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (291, 3, N'Coghlan')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (292, 3, N'Colegiales')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (293, 3, N'Constituci¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (294, 3, N'Flores')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (295, 3, N'Floresta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (296, 3, N'La Paternal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (297, 3, N'Liniers')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (298, 3, N'Mataderos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (299, 3, N'Monserrat')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (300, 3, N'Monte Castro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (301, 3, N'Nueva Pompeya')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (302, 3, N'N·±ez')
GO
print 'Processed 300 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (303, 3, N'Palermo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (304, 3, N'Parque Avellaneda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (305, 3, N'Parque Chacabuco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (306, 3, N'Parque Chas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (307, 3, N'Parque Patricios')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (308, 3, N'Puerto Madero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (309, 3, N'Recoleta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (310, 3, N'Retiro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (311, 3, N'Saavedra')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (312, 3, N'San Crist¾bal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (313, 3, N'San Nicolßs')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (314, 3, N'San Telmo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (315, 3, N'VÚlez Sßrsfield')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (316, 3, N'Versalles')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (317, 3, N'Villa Crespo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (318, 3, N'Villa del Parque')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (319, 3, N'Villa Devoto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (320, 3, N'Villa Gral. Mitre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (321, 3, N'Villa Lugano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (322, 3, N'Villa Luro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (323, 3, N'Villa Ort·zar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (324, 3, N'Villa Pueyrred¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (325, 3, N'Villa Real')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (326, 3, N'Villa Riachuelo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (327, 3, N'Villa Santa Rita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (328, 3, N'Villa Soldati')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (329, 3, N'Villa Urquiza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (330, 4, N'Aconquija')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (331, 4, N'Ancasti')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (332, 4, N'Andalgalß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (333, 4, N'Antofagasta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (334, 4, N'BelÚn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (335, 4, N'Capayßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (336, 4, N'Capital')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (337, 4, N'4')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (338, 4, N'Corral Quemado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (339, 4, N'El Alto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (340, 4, N'El Rodeo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (341, 4, N'F.Mamerto Esqui·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (342, 4, N'Fiambalß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (343, 4, N'HualfÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (344, 4, N'Huillapima')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (345, 4, N'Ica±o')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (346, 4, N'La Puerta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (347, 4, N'Las Juntas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (348, 4, N'Londres')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (349, 4, N'Los Altos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (350, 4, N'Los Varela')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (351, 4, N'MutquÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (352, 4, N'PaclÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (353, 4, N'Poman')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (354, 4, N'Pozo de La Piedra')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (355, 4, N'Puerta de Corral')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (356, 4, N'Puerta San JosÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (357, 4, N'Recreo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (358, 4, N'S.F.V de 4')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (359, 4, N'San Fernando')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (360, 4, N'San Fernando del Valle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (361, 4, N'San JosÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (362, 4, N'Santa MarÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (363, 4, N'Santa Rosa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (364, 4, N'Saujil')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (365, 4, N'Tapso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (366, 4, N'Tinogasta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (367, 4, N'Valle Viejo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (368, 4, N'Villa Vil')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (369, 5, N'Aviß TeraÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (370, 5, N'Barranqueras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (371, 5, N'Basail')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (372, 5, N'Campo Largo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (373, 5, N'Capital')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (374, 5, N'Capitßn Solari')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (375, 5, N'Charadai')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (376, 5, N'Charata')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (377, 5, N'Chorotis')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (378, 5, N'Ciervo Petiso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (379, 5, N'Cnel. Du Graty')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (380, 5, N'Col. BenÝtez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (381, 5, N'Col. Elisa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (382, 5, N'Col. Popular')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (383, 5, N'Colonias Unidas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (384, 5, N'Concepci¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (385, 5, N'Corzuela')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (386, 5, N'Cote Lai')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (387, 5, N'El Sauzalito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (388, 5, N'Enrique Urien')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (389, 5, N'Fontana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (390, 5, N'Fte. Esperanza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (391, 5, N'Gancedo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (392, 5, N'Gral. Capdevila')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (393, 5, N'Gral. Pinero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (394, 5, N'Gral. San MartÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (395, 5, N'Gral. Vedia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (396, 5, N'Hermoso Campo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (397, 5, N'I. del Cerrito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (398, 5, N'J.J. Castelli')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (399, 5, N'La Clotilde')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (400, 5, N'La Eduvigis')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (401, 5, N'La Escondida')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (402, 5, N'La Leonesa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (403, 5, N'La Tigra')
GO
print 'Processed 400 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (404, 5, N'La Verde')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (405, 5, N'Laguna Blanca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (406, 5, N'Laguna Limpia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (407, 5, N'Lapachito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (408, 5, N'Las Bre±as')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (409, 5, N'Las Garcitas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (410, 5, N'Las Palmas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (411, 5, N'Los Frentones')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (412, 5, N'Machagai')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (413, 5, N'MakallÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (414, 5, N'Margarita BelÚn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (415, 5, N'Miraflores')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (416, 5, N'Misi¾n N. Pompeya')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (417, 5, N'Napenay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (418, 5, N'Pampa Almir¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (419, 5, N'Pampa del Indio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (420, 5, N'Pampa del Infierno')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (421, 5, N'Pdcia. de La Plaza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (422, 5, N'Pdcia. Roca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (423, 5, N'Pdcia. Roque Sßenz Pe±a')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (424, 5, N'Pto. Bermejo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (425, 5, N'Pto. Eva Per¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (426, 5, N'Puero Tirol')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (427, 5, N'Puerto Vilelas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (428, 5, N'Quitilipi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (429, 5, N'Resistencia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (430, 5, N'Sßenz Pe±a')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (431, 5, N'Samuh·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (432, 5, N'San Bernardo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (433, 5, N'Santa Sylvina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (434, 5, N'Taco Pozo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (435, 5, N'Tres Isletas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (436, 5, N'Villa -ngela')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (437, 5, N'Villa Berthet')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (438, 5, N'Villa R. Bermejito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (439, 6, N'Aldea Apeleg')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (440, 6, N'Aldea Beleiro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (441, 6, N'Aldea Epulef')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (442, 6, N'Alto RÝo Sengerr')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (443, 6, N'Buen Pasto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (444, 6, N'Camarones')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (445, 6, N'Carrenleuf·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (446, 6, N'Cholila')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (447, 6, N'Co. Centinela')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (448, 6, N'Colan ConhuÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (449, 6, N'Comodoro Rivadavia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (450, 6, N'Corcovado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (451, 6, N'Cushamen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (452, 6, N'Dique F. Ameghino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (453, 6, N'Dolav¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (454, 6, N'Dr. R. Rojas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (455, 6, N'El Hoyo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (456, 6, N'El MaitÚn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (457, 6, N'EpuyÚn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (458, 6, N'Esquel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (459, 6, N'Facundo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (460, 6, N'Gaimßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (461, 6, N'Gan Gan')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (462, 6, N'Gastre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (463, 6, N'Gdor. Costa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (464, 6, N'Gualjaina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (465, 6, N'J. de San MartÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (466, 6, N'Lago Blanco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (467, 6, N'Lago Puelo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (468, 6, N'Lagunita Salada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (469, 6, N'Las Plumas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (470, 6, N'Los Altares')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (471, 6, N'Paso de los Indios')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (472, 6, N'Paso del Sapo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (473, 6, N'Pto. Madryn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (474, 6, N'Pto. Pirßmides')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (475, 6, N'Rada Tilly')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (476, 6, N'Rawson')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (477, 6, N'RÝo Mayo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (478, 6, N'RÝo Pico')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (479, 6, N'Sarmiento')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (480, 6, N'Tecka')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (481, 6, N'Telsen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (482, 6, N'Trelew')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (483, 6, N'Trevelin')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (484, 6, N'Veintiocho de Julio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (485, 7, N'Achiras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (486, 7, N'Adelia Maria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (487, 7, N'Agua de Oro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (488, 7, N'Alcira Gigena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (489, 7, N'Aldea Santa Maria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (490, 7, N'Alejandro Roca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (491, 7, N'Alejo Ledesma')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (492, 7, N'Alicia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (493, 7, N'Almafuerte')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (494, 7, N'Alpa Corral')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (495, 7, N'Alta Gracia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (496, 7, N'Alto Alegre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (497, 7, N'Alto de Los Quebrachos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (498, 7, N'Altos de Chipion')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (499, 7, N'Amboy')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (500, 7, N'Ambul')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (501, 7, N'Ana Zumaran')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (502, 7, N'Anisacate')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (503, 7, N'Arguello')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (504, 7, N'Arias')
GO
print 'Processed 500 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (505, 7, N'Arroyito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (506, 7, N'Arroyo Algodon')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (507, 7, N'Arroyo Cabral')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (508, 7, N'Arroyo Los Patos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (509, 7, N'Assunta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (510, 7, N'Atahona')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (511, 7, N'Ausonia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (512, 7, N'Avellaneda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (513, 7, N'Ballesteros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (514, 7, N'Ballesteros Sud')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (515, 7, N'Balnearia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (516, 7, N'Ba±ado de Soto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (517, 7, N'Bell Ville')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (518, 7, N'Bengolea')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (519, 7, N'Benjamin Gould')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (520, 7, N'Berrotaran')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (521, 7, N'Bialet Masse')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (522, 7, N'Bouwer')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (523, 7, N'Brinkmann')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (524, 7, N'Buchardo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (525, 7, N'Bulnes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (526, 7, N'Cabalango')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (527, 7, N'Calamuchita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (528, 7, N'Calchin')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (529, 7, N'Calchin Oeste')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (530, 7, N'Calmayo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (531, 7, N'Camilo Aldao')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (532, 7, N'Caminiaga')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (533, 7, N'Ca±ada de Luque')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (534, 7, N'Ca±ada de Machado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (535, 7, N'Ca±ada de Rio Pinto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (536, 7, N'Ca±ada del Sauce')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (537, 7, N'Canals')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (538, 7, N'Candelaria Sud')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (539, 7, N'Capilla de Remedios')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (540, 7, N'Capilla de Siton')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (541, 7, N'Capilla del Carmen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (542, 7, N'Capilla del Monte')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (543, 7, N'Capital')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (544, 7, N'Capitan Gral B. O¦Higgins')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (545, 7, N'Carnerillo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (546, 7, N'Carrilobo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (547, 7, N'Casa Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (548, 7, N'Cavanagh')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (549, 7, N'Cerro Colorado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (550, 7, N'Chajßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (551, 7, N'Chalacea')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (552, 7, N'Cha±ar Viejo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (553, 7, N'ChancanÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (554, 7, N'Charbonier')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (555, 7, N'Charras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (556, 7, N'Chaz¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (557, 7, N'Chilibroste')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (558, 7, N'Chucul')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (559, 7, N'Chu±a')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (560, 7, N'Chu±a Huasi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (561, 7, N'Churqui Ca±ada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (562, 7, N'Cienaga Del Coro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (563, 7, N'Cintra')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (564, 7, N'Col. Almada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (565, 7, N'Col. Anita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (566, 7, N'Col. Barge')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (567, 7, N'Col. Bismark')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (568, 7, N'Col. Bremen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (569, 7, N'Col. Caroya')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (570, 7, N'Col. Italiana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (571, 7, N'Col. Iturraspe')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (572, 7, N'Col. Las Cuatro Esquinas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (573, 7, N'Col. Las Pichanas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (574, 7, N'Col. Marina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (575, 7, N'Col. Prosperidad')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (576, 7, N'Col. San Bartolome')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (577, 7, N'Col. San Pedro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (578, 7, N'Col. Tirolesa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (579, 7, N'Col. Vicente Aguero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (580, 7, N'Col. Videla')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (581, 7, N'Col. Vignaud')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (582, 7, N'Col. Waltelina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (583, 7, N'Colazo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (584, 7, N'Comechingones')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (585, 7, N'Conlara')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (586, 7, N'Copacabana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (587, 7, N'7')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (588, 7, N'Coronel Baigorria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (589, 7, N'Coronel Moldes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (590, 7, N'Corral de Bustos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (591, 7, N'Corralito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (592, 7, N'CosquÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (593, 7, N'Costa Sacate')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (594, 7, N'Cruz Alta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (595, 7, N'Cruz de Ca±a')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (596, 7, N'Cruz del Eje')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (597, 7, N'Cuesta Blanca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (598, 7, N'Dean Funes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (599, 7, N'Del Campillo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (600, 7, N'Despe±aderos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (601, 7, N'Devoto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (602, 7, N'Diego de Rojas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (603, 7, N'Dique Chico')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (604, 7, N'El Ara±ado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (605, 7, N'El Brete')
GO
print 'Processed 600 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (606, 7, N'El Chacho')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (607, 7, N'El CrispÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (608, 7, N'El FortÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (609, 7, N'El Manzano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (610, 7, N'El Rastreador')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (611, 7, N'El Rodeo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (612, 7, N'El TÝo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (613, 7, N'Elena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (614, 7, N'Embalse')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (615, 7, N'Esquina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (616, 7, N'Estaci¾n Gral. Paz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (617, 7, N'Estaci¾n Jußrez Celman')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (618, 7, N'Estancia de Guadalupe')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (619, 7, N'Estancia Vieja')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (620, 7, N'Etruria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (621, 7, N'Eufrasio Loza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (622, 7, N'Falda del Carmen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (623, 7, N'Freyre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (624, 7, N'Gral. Baldissera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (625, 7, N'Gral. Cabrera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (626, 7, N'Gral. Deheza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (627, 7, N'Gral. Fotheringham')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (628, 7, N'Gral. Levalle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (629, 7, N'Gral. Roca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (630, 7, N'Guanaco Muerto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (631, 7, N'Guasapampa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (632, 7, N'Guatimozin')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (633, 7, N'Gutenberg')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (634, 7, N'Hernando')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (635, 7, N'Huanchillas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (636, 7, N'Huerta Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (637, 7, N'Huinca Renanco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (638, 7, N'Idiazabal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (639, 7, N'Impira')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (640, 7, N'Inriville')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (641, 7, N'Isla Verde')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (642, 7, N'Ital¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (643, 7, N'James Craik')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (644, 7, N'Jes·s MarÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (645, 7, N'Jovita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (646, 7, N'Justiniano Posse')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (647, 7, N'Km 658')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (648, 7, N'L. V. Mansilla')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (649, 7, N'La Batea')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (650, 7, N'La Calera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (651, 7, N'La Carlota')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (652, 7, N'La Carolina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (653, 7, N'La Cautiva')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (654, 7, N'La Cesira')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (655, 7, N'La Cruz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (656, 7, N'La Cumbre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (657, 7, N'La Cumbrecita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (658, 7, N'La Falda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (659, 7, N'La Francia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (660, 7, N'La Granja')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (661, 7, N'La Higuera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (662, 7, N'La Laguna')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (663, 7, N'La Paisanita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (664, 7, N'La Palestina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (665, 7, N'12')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (666, 7, N'La Paquita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (667, 7, N'La Para')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (668, 7, N'La Paz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (669, 7, N'La Playa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (670, 7, N'La Playosa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (671, 7, N'La Poblaci¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (672, 7, N'La Posta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (673, 7, N'La Puerta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (674, 7, N'La Quinta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (675, 7, N'La Rancherita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (676, 7, N'La Rinconada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (677, 7, N'La Serranita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (678, 7, N'La Tordilla')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (679, 7, N'Laborde')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (680, 7, N'Laboulaye')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (681, 7, N'Laguna Larga')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (682, 7, N'Las Acequias')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (683, 7, N'Las Albahacas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (684, 7, N'Las Arrias')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (685, 7, N'Las Bajadas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (686, 7, N'Las Caleras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (687, 7, N'Las Calles')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (688, 7, N'Las Ca±adas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (689, 7, N'Las Gramillas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (690, 7, N'Las Higueras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (691, 7, N'Las Isletillas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (692, 7, N'Las Junturas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (693, 7, N'Las Palmas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (694, 7, N'Las Pe±as')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (695, 7, N'Las Pe±as Sud')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (696, 7, N'Las Perdices')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (697, 7, N'Las Playas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (698, 7, N'Las Rabonas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (699, 7, N'Las Saladas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (700, 7, N'Las Tapias')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (701, 7, N'Las Varas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (702, 7, N'Las Varillas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (703, 7, N'Las Vertientes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (704, 7, N'Leguizam¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (705, 7, N'Leones')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (706, 7, N'Los Cedros')
GO
print 'Processed 700 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (707, 7, N'Los Cerrillos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (708, 7, N'Los Cha±aritos (C.E)')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (709, 7, N'Los Chanaritos (R.S)')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (710, 7, N'Los Cisnes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (711, 7, N'Los Cocos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (712, 7, N'Los C¾ndores')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (713, 7, N'Los Hornillos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (714, 7, N'Los Hoyos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (715, 7, N'Los Mistoles')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (716, 7, N'Los Molinos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (717, 7, N'Los Pozos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (718, 7, N'Los Reartes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (719, 7, N'Los Surgentes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (720, 7, N'Los Talares')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (721, 7, N'Los Zorros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (722, 7, N'Lozada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (723, 7, N'Luca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (724, 7, N'Luque')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (725, 7, N'Luyaba')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (726, 7, N'Malague±o')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (727, 7, N'Malena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (728, 7, N'Malvinas Argentinas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (729, 7, N'Manfredi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (730, 7, N'Maquinista Gallini')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (731, 7, N'Marcos Jußrez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (732, 7, N'Marull')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (733, 7, N'Matorrales')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (734, 7, N'Mattaldi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (735, 7, N'Mayu Sumaj')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (736, 7, N'Media Naranja')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (737, 7, N'Melo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (738, 7, N'Mendiolaza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (739, 7, N'Mi Granja')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (740, 7, N'Mina Clavero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (741, 7, N'Miramar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (742, 7, N'Morrison')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (743, 7, N'Morteros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (744, 7, N'Mte. Buey')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (745, 7, N'Mte. Cristo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (746, 7, N'Mte. De Los Gauchos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (747, 7, N'Mte. Le±a')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (748, 7, N'Mte. MaÝz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (749, 7, N'Mte. Ralo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (750, 7, N'Nicolßs Bruzone')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (751, 7, N'Noetinger')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (752, 7, N'Nono')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (753, 7, N'Nueva 7')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (754, 7, N'Obispo Trejo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (755, 7, N'Olaeta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (756, 7, N'Oliva')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (757, 7, N'Olivares San Nicolßs')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (758, 7, N'Onagolty')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (759, 7, N'Oncativo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (760, 7, N'Ordo±ez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (761, 7, N'Pacheco De Melo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (762, 7, N'Pampayasta N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (763, 7, N'Pampayasta S.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (764, 7, N'Panaholma')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (765, 7, N'Pascanas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (766, 7, N'Pasco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (767, 7, N'Paso del Durazno')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (768, 7, N'Paso Viejo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (769, 7, N'Pilar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (770, 7, N'PincÚn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (771, 7, N'PiquillÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (772, 7, N'Plaza de Mercedes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (773, 7, N'Plaza Luxardo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (774, 7, N'Porte±a')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (775, 7, N'Potrero de Garay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (776, 7, N'Pozo del Molle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (777, 7, N'Pozo Nuevo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (778, 7, N'Pueblo Italiano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (779, 7, N'Puesto de Castro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (780, 7, N'Punta del Agua')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (781, 7, N'Quebracho Herrado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (782, 7, N'Quilino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (783, 7, N'Rafael GarcÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (784, 7, N'Ranqueles')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (785, 7, N'Rayo Cortado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (786, 7, N'Reducci¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (787, 7, N'Rinc¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (788, 7, N'RÝo Bamba')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (789, 7, N'RÝo Ceballos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (790, 7, N'RÝo Cuarto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (791, 7, N'RÝo de Los Sauces')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (792, 7, N'RÝo Primero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (793, 7, N'RÝo Segundo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (794, 7, N'RÝo Tercero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (795, 7, N'Rosales')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (796, 7, N'Rosario del Saladillo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (797, 7, N'Sacanta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (798, 7, N'Sagrada Familia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (799, 7, N'Saira')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (800, 7, N'Saladillo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (801, 7, N'Saldßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (802, 7, N'Salsacate')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (803, 7, N'Salsipuedes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (804, 7, N'Sampacho')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (805, 7, N'San AgustÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (806, 7, N'San Antonio de Arredondo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (807, 7, N'San Antonio de LitÝn')
GO
print 'Processed 800 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (808, 7, N'San Basilio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (809, 7, N'San Carlos Minas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (810, 7, N'San Clemente')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (811, 7, N'San Esteban')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (812, 7, N'San Francisco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (813, 7, N'San Ignacio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (814, 7, N'San Javier')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (815, 7, N'San Jer¾nimo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (816, 7, N'San JoaquÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (817, 7, N'San JosÚ de La Dormida')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (818, 7, N'San JosÚ de Las Salinas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (819, 7, N'San Lorenzo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (820, 7, N'San Marcos Sierras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (821, 7, N'San Marcos Sud')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (822, 7, N'San Pedro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (823, 7, N'San Pedro N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (824, 7, N'San Roque')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (825, 7, N'San Vicente')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (826, 7, N'Santa Catalina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (827, 7, N'Santa Elena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (828, 7, N'Santa Eufemia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (829, 7, N'Santa Maria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (830, 7, N'Sarmiento')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (831, 7, N'Saturnino M.Laspiur')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (832, 7, N'Sauce Arriba')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (833, 7, N'Sebastißn Elcano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (834, 7, N'Seeber')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (835, 7, N'Segunda Usina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (836, 7, N'Serrano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (837, 7, N'Serrezuela')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (838, 7, N'Sgo. Temple')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (839, 7, N'Silvio Pellico')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (840, 7, N'Simbolar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (841, 7, N'Sinsacate')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (842, 7, N'Sta. Rosa de Calamuchita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (843, 7, N'Sta. Rosa de RÝo Primero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (844, 7, N'Suco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (845, 7, N'Tala Ca±ada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (846, 7, N'Tala Huasi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (847, 7, N'Talaini')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (848, 7, N'Tancacha')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (849, 7, N'Tanti')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (850, 7, N'Ticino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (851, 7, N'Tinoco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (852, 7, N'TÝo Pujio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (853, 7, N'Toledo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (854, 7, N'Toro Pujio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (855, 7, N'Tosno')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (856, 7, N'Tosquita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (857, 7, N'Trßnsito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (858, 7, N'Tuclame')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (859, 7, N'Tutti')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (860, 7, N'Ucacha')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (861, 7, N'Unquillo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (862, 7, N'Valle de Anisacate')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (863, 7, N'Valle Hermoso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (864, 7, N'VÚlez Sarfield')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (865, 7, N'Viamonte')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (866, 7, N'Vicu±a Mackenna')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (867, 7, N'Villa Allende')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (868, 7, N'Villa Amancay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (869, 7, N'Villa Ascasubi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (870, 7, N'Villa Candelaria N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (871, 7, N'Villa Carlos Paz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (872, 7, N'Villa Cerro Azul')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (873, 7, N'Villa Ciudad de AmÚrica')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (874, 7, N'Villa Ciudad Pque Los Reartes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (875, 7, N'Villa Concepci¾n del TÝo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (876, 7, N'Villa Cura Brochero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (877, 7, N'Villa de Las Rosas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (878, 7, N'Villa de MarÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (879, 7, N'Villa de Pocho')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (880, 7, N'Villa de Soto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (881, 7, N'Villa del Dique')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (882, 7, N'Villa del Prado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (883, 7, N'Villa del Rosario')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (884, 7, N'Villa del Totoral')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (885, 7, N'Villa Dolores')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (886, 7, N'Villa El Chancay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (887, 7, N'Villa Elisa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (888, 7, N'Villa Flor Serrana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (889, 7, N'Villa Fontana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (890, 7, N'Villa Giardino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (891, 7, N'Villa Gral. Belgrano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (892, 7, N'Villa Gutierrez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (893, 7, N'Villa Huidobro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (894, 7, N'Villa La Bolsa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (895, 7, N'Villa Los Aromos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (896, 7, N'Villa Los Patos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (897, 7, N'Villa MarÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (898, 7, N'Villa Nueva')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (899, 7, N'Villa Pque. Santa Ana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (900, 7, N'Villa Pque. Siquiman')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (901, 7, N'Villa Quillinzo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (902, 7, N'Villa Rossi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (903, 7, N'Villa Rumipal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (904, 7, N'Villa San Esteban')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (905, 7, N'Villa San Isidro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (906, 7, N'Villa 21')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (907, 7, N'Villa Sarmiento (G.R)')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (908, 7, N'Villa Sarmiento (S.A)')
GO
print 'Processed 900 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (909, 7, N'Villa Tulumba')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (910, 7, N'Villa Valeria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (911, 7, N'Villa Yacanto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (912, 7, N'Washington')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (913, 7, N'Wenceslao Escalante')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (914, 7, N'Ycho Cruz Sierras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (915, 8, N'Alvear')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (916, 8, N'Bella Vista')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (917, 8, N'Ber¾n de Astrada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (918, 8, N'Bonpland')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (919, 8, N'Caß Cati')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (920, 8, N'Capital')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (921, 8, N'ChavarrÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (922, 8, N'Col. C. Pellegrini')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (923, 8, N'Col. Libertad')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (924, 8, N'Col. Liebig')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (925, 8, N'Col. Sta Rosa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (926, 8, N'Concepci¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (927, 8, N'Cruz de Los Milagros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (928, 8, N'Curuz·-Cuatiß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (929, 8, N'Empedrado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (930, 8, N'Esquina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (931, 8, N'Estaci¾n Torrent')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (932, 8, N'Felipe YofrÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (933, 8, N'Garruchos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (934, 8, N'Gdor. Agr¾nomo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (935, 8, N'Gdor. MartÝnez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (936, 8, N'Goya')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (937, 8, N'Guaviravi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (938, 8, N'Herlitzka')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (939, 8, N'Ita-Ibate')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (940, 8, N'ItatÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (941, 8, N'Ituzaing¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (942, 8, N'JosÚ Rafael G¾mez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (943, 8, N'Juan Pujol')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (944, 8, N'La Cruz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (945, 8, N'Lavalle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (946, 8, N'Lomas de Vallejos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (947, 8, N'Loreto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (948, 8, N'Mariano I. Loza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (949, 8, N'Mburucuyß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (950, 8, N'Mercedes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (951, 8, N'Mocoretß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (952, 8, N'Mte. Caseros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (953, 8, N'Nueve de Julio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (954, 8, N'Palmar Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (955, 8, N'Parada Pucheta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (956, 8, N'Paso de La Patria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (957, 8, N'Paso de Los Libres')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (958, 8, N'Pedro R. Fernandez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (959, 8, N'PerugorrÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (960, 8, N'Pueblo Libertador')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (961, 8, N'Ramada Paso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (962, 8, N'Riachuelo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (963, 8, N'Saladas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (964, 8, N'San Antonio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (965, 8, N'San Carlos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (966, 8, N'San Cosme')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (967, 8, N'San Lorenzo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (968, 8, N'20 del Palmar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (969, 8, N'San Miguel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (970, 8, N'San Roque')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (971, 8, N'Santa Ana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (972, 8, N'Santa LucÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (973, 8, N'Santo TomÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (974, 8, N'Sauce')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (975, 8, N'Tabay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (976, 8, N'Tapebicuß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (977, 8, N'Tatacua')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (978, 8, N'Virasoro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (979, 8, N'Yapey·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (980, 8, N'YataitÝ Calle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (981, 9, N'Alarc¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (982, 9, N'Alcaraz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (983, 9, N'Alcaraz N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (984, 9, N'Alcaraz S.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (985, 9, N'Aldea Asunci¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (986, 9, N'Aldea Brasilera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (987, 9, N'Aldea Elgenfeld')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (988, 9, N'Aldea Grapschental')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (989, 9, N'Aldea Ma. Luisa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (990, 9, N'Aldea Protestante')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (991, 9, N'Aldea Salto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (992, 9, N'Aldea San Antonio (G)')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (993, 9, N'Aldea San Antonio (P)')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (994, 9, N'Aldea 19')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (995, 9, N'Aldea San Miguel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (996, 9, N'Aldea San Rafael')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (997, 9, N'Aldea Spatzenkutter')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (998, 9, N'Aldea Sta. MarÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (999, 9, N'Aldea Sta. Rosa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1000, 9, N'Aldea Valle MarÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1001, 9, N'Altamirano Sur')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1002, 9, N'Antelo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1003, 9, N'Antonio Tomßs')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1004, 9, N'Aranguren')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1005, 9, N'Arroyo Bar·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1006, 9, N'Arroyo Burgos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1007, 9, N'Arroyo ClÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1008, 9, N'Arroyo Corralito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1009, 9, N'Arroyo del Medio')
GO
print 'Processed 1000 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1010, 9, N'Arroyo Maturrango')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1011, 9, N'Arroyo Palo Seco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1012, 9, N'Banderas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1013, 9, N'Basavilbaso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1014, 9, N'Betbeder')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1015, 9, N'Bovril')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1016, 9, N'Caseros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1017, 9, N'Ceibas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1018, 9, N'Cerrito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1019, 9, N'ChajarÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1020, 9, N'Chilcas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1021, 9, N'Clodomiro Ledesma')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1022, 9, N'Col. Alemana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1023, 9, N'Col. Avellaneda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1024, 9, N'Col. Avigdor')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1025, 9, N'Col. AyuÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1026, 9, N'Col. Baylina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1027, 9, N'Col. Carrasco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1028, 9, N'Col. Celina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1029, 9, N'Col. Cerrito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1030, 9, N'Col. Crespo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1031, 9, N'Col. Elia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1032, 9, N'Col. Ensayo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1033, 9, N'Col. Gral. Roca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1034, 9, N'Col. La Argentina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1035, 9, N'Col. Merou')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1036, 9, N'Col. Oficial N¬3')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1037, 9, N'Col. Oficial N¦13')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1038, 9, N'Col. Oficial N¦14')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1039, 9, N'Col. Oficial N¦5')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1040, 9, N'Col. Reffino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1041, 9, N'Col. Tunas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1042, 9, N'Col. Virar¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1043, 9, N'Col¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1044, 9, N'Concepci¾n del Uruguay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1045, 9, N'Concordia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1046, 9, N'Conscripto Bernardi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1047, 9, N'Costa Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1048, 9, N'Costa San Antonio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1049, 9, N'Costa Uruguay N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1050, 9, N'Costa Uruguay S.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1051, 9, N'Crespo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1052, 9, N'Crucecitas 3¬')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1053, 9, N'Crucecitas 7¬')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1054, 9, N'Crucecitas 8¬')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1055, 9, N'Cuchilla Redonda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1056, 9, N'Curtiembre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1057, 9, N'Diamante')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1058, 9, N'Distrito 6¦')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1059, 9, N'Distrito Cha±ar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1060, 9, N'Distrito Chiqueros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1061, 9, N'Distrito Cuarto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1062, 9, N'Distrito Diego L¾pez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1063, 9, N'Distrito Pajonal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1064, 9, N'Distrito Sauce')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1065, 9, N'Distrito Tala')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1066, 9, N'Distrito Talitas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1067, 9, N'Don Crist¾bal 1¬ Secci¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1068, 9, N'Don Crist¾bal 2¬ Secci¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1069, 9, N'Durazno')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1070, 9, N'El Cimarr¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1071, 9, N'El Gramillal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1072, 9, N'El Palenque')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1073, 9, N'El Pingo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1074, 9, N'El Quebracho')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1075, 9, N'El Redom¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1076, 9, N'El Solar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1077, 9, N'Enrique Carbo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1078, 9, N'9')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1079, 9, N'Espinillo N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1080, 9, N'Estaci¾n Campos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1081, 9, N'Estaci¾n Escri±a')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1082, 9, N'Estaci¾n Lazo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1083, 9, N'Estaci¾n RaÝces')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1084, 9, N'Estaci¾n Yer·a')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1085, 9, N'Estancia Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1086, 9, N'Estancia LÝbaros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1087, 9, N'Estancia Racedo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1088, 9, N'Estancia Solß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1089, 9, N'Estancia YuquerÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1090, 9, N'Estaquitas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1091, 9, N'Faustino M. Parera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1092, 9, N'Febre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1093, 9, N'Federaci¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1094, 9, N'Federal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1095, 9, N'Gdor. Echag³e')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1096, 9, N'Gdor. Mansilla')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1097, 9, N'Gilbert')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1098, 9, N'Gonzßlez Calder¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1099, 9, N'Gral. Almada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1100, 9, N'Gral. Alvear')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1101, 9, N'Gral. Campos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1102, 9, N'Gral. Galarza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1103, 9, N'Gral. RamÝrez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1104, 9, N'Gualeguay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1105, 9, N'Gualeguaych·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1106, 9, N'Gualeguaycito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1107, 9, N'Guardamonte')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1108, 9, N'Hambis')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1109, 9, N'Hasenkamp')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1110, 9, N'Hernandarias')
GO
print 'Processed 1100 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1111, 9, N'Hernßndez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1112, 9, N'Herrera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1113, 9, N'Hinojal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1114, 9, N'Hocker')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1115, 9, N'Ing. Sajaroff')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1116, 9, N'Irazusta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1117, 9, N'Isletas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1118, 9, N'J.J De Urquiza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1119, 9, N'Jubileo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1120, 9, N'La Clarita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1121, 9, N'La Criolla')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1122, 9, N'La Esmeralda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1123, 9, N'La Florida')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1124, 9, N'La Fraternidad')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1125, 9, N'La Hierra')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1126, 9, N'La Ollita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1127, 9, N'La Paz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1128, 9, N'La Picada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1129, 9, N'La Providencia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1130, 9, N'La Verbena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1131, 9, N'Laguna BenÝtez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1132, 9, N'Larroque')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1133, 9, N'Las Cuevas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1134, 9, N'Las Garzas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1135, 9, N'Las Guachas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1136, 9, N'Las Mercedes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1137, 9, N'Las Moscas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1138, 9, N'Las Mulitas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1139, 9, N'Las Toscas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1140, 9, N'Laurencena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1141, 9, N'Libertador San MartÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1142, 9, N'Loma Limpia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1143, 9, N'Los Ceibos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1144, 9, N'Los Charruas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1145, 9, N'Los Conquistadores')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1146, 9, N'Lucas Gonzßlez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1147, 9, N'Lucas N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1148, 9, N'Lucas S. 1¬')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1149, 9, N'Lucas S. 2¬')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1150, 9, N'Maciß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1151, 9, N'MarÝa Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1152, 9, N'MarÝa Grande 2¬')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1153, 9, N'MÚdanos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1154, 9, N'Mojones N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1155, 9, N'Mojones S.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1156, 9, N'Molino Doll')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1157, 9, N'Monte Redondo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1158, 9, N'Montoya')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1159, 9, N'Mulas Grandes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1160, 9, N'Ðancay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1161, 9, N'Nogoyß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1162, 9, N'Nueva Escocia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1163, 9, N'Nueva Vizcaya')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1164, 9, N'Omb·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1165, 9, N'Oro Verde')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1166, 9, N'Paranß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1167, 9, N'Pasaje Guayaquil')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1168, 9, N'Pasaje Las Tunas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1169, 9, N'Paso de La Arena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1170, 9, N'Paso de La Laguna')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1171, 9, N'Paso de Las Piedras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1172, 9, N'Paso Duarte')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1173, 9, N'Pastor Britos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1174, 9, N'Pedernal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1175, 9, N'Perdices')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1176, 9, N'Picada Ber¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1177, 9, N'Piedras Blancas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1178, 9, N'Primer Distrito Cuchilla')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1179, 9, N'Primero de Mayo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1180, 9, N'Pronunciamiento')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1181, 9, N'Pto. Algarrobo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1182, 9, N'Pto. Ibicuy')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1183, 9, N'Pueblo Brugo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1184, 9, N'Pueblo Cazes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1185, 9, N'Pueblo Gral. Belgrano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1186, 9, N'Pueblo Liebig')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1187, 9, N'Puerto Yeruß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1188, 9, N'Punta del Monte')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1189, 9, N'Quebracho')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1190, 9, N'Quinto Distrito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1191, 9, N'Raices Oeste')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1192, 9, N'Rinc¾n de Nogoyß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1193, 9, N'Rinc¾n del Cinto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1194, 9, N'Rinc¾n del Doll')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1195, 9, N'Rinc¾n del Gato')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1196, 9, N'Rocamora')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1197, 9, N'Rosario del Tala')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1198, 9, N'San Benito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1199, 9, N'San Cipriano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1200, 9, N'San Ernesto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1201, 9, N'San Gustavo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1202, 9, N'San Jaime')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1203, 9, N'San JosÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1204, 9, N'San JosÚ de Feliciano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1205, 9, N'San Justo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1206, 9, N'San Marcial')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1207, 9, N'San Pedro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1208, 9, N'San RamÝrez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1209, 9, N'San Ram¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1210, 9, N'San Roque')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1211, 9, N'San Salvador')
GO
print 'Processed 1200 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1212, 9, N'San VÝctor')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1213, 9, N'Santa Ana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1214, 9, N'Santa Anita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1215, 9, N'Santa Elena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1216, 9, N'Santa LucÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1217, 9, N'Santa Luisa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1218, 9, N'Sauce de Luna')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1219, 9, N'Sauce Montrull')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1220, 9, N'Sauce Pinto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1221, 9, N'Sauce Sur')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1222, 9, N'SeguÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1223, 9, N'Sir Leonard')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1224, 9, N'Sosa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1225, 9, N'Tabossi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1226, 9, N'Tezanos Pinto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1227, 9, N'Ubajay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1228, 9, N'Urdinarrain')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1229, 9, N'Veinte de Septiembre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1230, 9, N'Viale')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1231, 9, N'Victoria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1232, 9, N'Villa Clara')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1233, 9, N'Villa del Rosario')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1234, 9, N'Villa DomÝnguez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1235, 9, N'Villa Elisa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1236, 9, N'Villa Fontana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1237, 9, N'Villa Gdor. Etchevehere')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1238, 9, N'Villa Mantero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1239, 9, N'Villa Paranacito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1240, 9, N'Villa Urquiza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1241, 9, N'Villaguay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1242, 9, N'Walter Moss')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1243, 9, N'YacarÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1244, 9, N'Yeso Oeste')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1245, 10, N'Buena Vista')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1246, 10, N'Clorinda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1247, 10, N'Col. Pastoril')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1248, 10, N'Cte. Fontana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1249, 10, N'El Colorado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1250, 10, N'El Espinillo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1251, 10, N'Estanislao Del Campo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1252, 10, N'10')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1253, 10, N'FortÝn Lugones')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1254, 10, N'Gral. Lucio V. Mansilla')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1255, 10, N'Gral. Manuel Belgrano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1256, 10, N'Gral. Mosconi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1257, 10, N'Gran Guardia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1258, 10, N'Herradura')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1259, 10, N'Ibarreta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1260, 10, N'Ing. Jußrez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1261, 10, N'Laguna Blanca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1262, 10, N'Laguna Naick Neck')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1263, 10, N'Laguna Yema')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1264, 10, N'Las Lomitas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1265, 10, N'Los Chiriguanos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1266, 10, N'Mayor V. Villafa±e')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1267, 10, N'Misi¾n San Fco.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1268, 10, N'Palo Santo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1269, 10, N'PiranÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1270, 10, N'Pozo del Maza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1271, 10, N'Riacho He-He')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1272, 10, N'San Hilario')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1273, 10, N'San MartÝn II')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1274, 10, N'Siete Palmas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1275, 10, N'Subteniente PerÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1276, 10, N'Tres Lagunas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1277, 10, N'Villa Dos Trece')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1278, 10, N'Villa Escolar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1279, 10, N'Villa Gral. G³emes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1280, 11, N'Abdon Castro Tolay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1281, 11, N'Abra Pampa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1282, 11, N'Abralaite')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1283, 11, N'Aguas Calientes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1284, 11, N'Arrayanal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1285, 11, N'Barrios')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1286, 11, N'Caimancito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1287, 11, N'Calilegua')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1288, 11, N'Cangrejillos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1289, 11, N'Caspala')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1290, 11, N'Catuß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1291, 11, N'Cieneguillas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1292, 11, N'Coranzulli')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1293, 11, N'Cusi-Cusi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1294, 11, N'El Aguilar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1295, 11, N'El Carmen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1296, 11, N'El C¾ndor')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1297, 11, N'El Fuerte')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1298, 11, N'El Piquete')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1299, 11, N'El Talar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1300, 11, N'Fraile Pintado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1301, 11, N'Hip¾lito Yrigoyen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1302, 11, N'Huacalera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1303, 11, N'Humahuaca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1304, 11, N'La Esperanza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1305, 11, N'La Mendieta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1306, 11, N'La Quiaca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1307, 11, N'Ledesma')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1308, 11, N'Libertador Gral. San Martin')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1309, 11, N'Maimara')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1310, 11, N'Mina Pirquitas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1311, 11, N'Monterrico')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1312, 11, N'Palma Sola')
GO
print 'Processed 1300 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1313, 11, N'Palpalß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1314, 11, N'Pampa Blanca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1315, 11, N'Pampichuela')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1316, 11, N'Perico')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1317, 11, N'Puesto del MarquÚs')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1318, 11, N'Puesto Viejo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1319, 11, N'Pumahuasi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1320, 11, N'Purmamarca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1321, 11, N'Rinconada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1322, 11, N'Rodeitos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1323, 11, N'Rosario de RÝo Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1324, 11, N'San Antonio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1325, 11, N'San Francisco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1326, 11, N'San Pedro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1327, 11, N'San Rafael')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1328, 11, N'San Salvador')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1329, 11, N'Santa Ana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1330, 11, N'Santa Catalina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1331, 11, N'Santa Clara')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1332, 11, N'Susques')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1333, 11, N'Tilcara')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1334, 11, N'Tres Cruces')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1335, 11, N'Tumbaya')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1336, 11, N'Valle Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1337, 11, N'Vinalito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1338, 11, N'Volcßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1339, 11, N'Yala')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1340, 11, N'YavÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1341, 11, N'Yuto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1342, 12, N'Abramo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1343, 12, N'Adolfo Van Praet')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1344, 12, N'Agustoni')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1345, 12, N'Algarrobo del Aguila')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1346, 12, N'Alpachiri')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1347, 12, N'Alta Italia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1348, 12, N'Anguil')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1349, 12, N'Arata')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1350, 12, N'Ataliva Roca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1351, 12, N'Bernardo Larroude')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1352, 12, N'Bernasconi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1353, 12, N'Caleuf·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1354, 12, N'Carro Quemado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1355, 12, N'Catril¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1356, 12, N'Ceballos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1357, 12, N'Chacharramendi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1358, 12, N'Col. Bar¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1359, 12, N'Col. Santa MarÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1360, 12, N'Conhelo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1361, 12, N'Coronel Hilario Lagos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1362, 12, N'Cuchillo-C¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1363, 12, N'Doblas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1364, 12, N'Dorila')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1365, 12, N'Eduardo Castex')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1366, 12, N'Embajador Martini')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1367, 12, N'Falucho')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1368, 12, N'Gral. Acha')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1369, 12, N'Gral. Manuel Campos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1370, 12, N'Gral. Pico')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1371, 12, N'GuatrachÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1372, 12, N'Ing. Luiggi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1373, 12, N'Intendente Alvear')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1374, 12, N'Jacinto Arauz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1375, 12, N'La Adela')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1376, 12, N'La Humada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1377, 12, N'La Maruja')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1378, 12, N'12')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1379, 12, N'La Reforma')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1380, 12, N'Limay Mahuida')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1381, 12, N'Lonquimay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1382, 12, N'Loventuel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1383, 12, N'Luan Toro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1384, 12, N'MacachÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1385, 12, N'Maisonnave')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1386, 12, N'Mauricio Mayer')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1387, 12, N'Metileo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1388, 12, N'Miguel CanÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1389, 12, N'Miguel Riglos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1390, 12, N'Monte Nievas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1391, 12, N'Parera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1392, 12, N'Per·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1393, 12, N'Pichi-Huinca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1394, 12, N'Puelches')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1395, 12, N'PuelÚn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1396, 12, N'Quehue')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1397, 12, N'Quem· Quem·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1398, 12, N'QuetrequÚn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1399, 12, N'Rancul')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1400, 12, N'Realic¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1401, 12, N'Relmo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1402, 12, N'Rol¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1403, 12, N'Rucanelo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1404, 12, N'Sarah')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1405, 12, N'Speluzzi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1406, 12, N'Sta. Isabel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1407, 12, N'Sta. Rosa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1408, 12, N'Sta. Teresa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1409, 12, N'TelÚn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1410, 12, N'Toay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1411, 12, N'Tomas M. de Anchorena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1412, 12, N'Trenel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1413, 12, N'Unanue')
GO
print 'Processed 1400 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1414, 12, N'Uriburu')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1415, 12, N'Veinticinco de Mayo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1416, 12, N'Vertiz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1417, 12, N'Victorica')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1418, 12, N'Villa Mirasol')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1419, 12, N'Winifreda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1420, 13, N'Arauco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1421, 13, N'Capital')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1422, 13, N'Castro Barros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1423, 13, N'Chamical')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1424, 13, N'Chilecito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1425, 13, N'Coronel F. Varela')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1426, 13, N'Famatina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1427, 13, N'Gral. A.V.Pe±aloza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1428, 13, N'Gral. Belgrano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1429, 13, N'Gral. J.F. Quiroga')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1430, 13, N'Gral. Lamadrid')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1431, 13, N'Gral. Ocampo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1432, 13, N'Gral. San MartÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1433, 13, N'Independencia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1434, 13, N'Rosario Penaloza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1435, 13, N'San Blas de Los Sauces')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1436, 13, N'Sanagasta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1437, 13, N'Vinchina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1438, 14, N'Capital')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1439, 14, N'Chacras de Coria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1440, 14, N'Dorrego')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1441, 14, N'Gllen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1442, 14, N'Godoy Cruz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1443, 14, N'Gral. Alvear')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1444, 14, N'GuaymallÚn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1445, 14, N'JunÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1446, 14, N'La Paz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1447, 14, N'Las Heras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1448, 14, N'Lavalle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1449, 14, N'Lujßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1450, 14, N'Lujßn De Cuyo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1451, 14, N'Maip·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1452, 14, N'Malarg³e')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1453, 14, N'Rivadavia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1454, 14, N'San Carlos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1455, 14, N'San MartÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1456, 14, N'San Rafael')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1457, 14, N'Sta. Rosa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1458, 14, N'Tunuyßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1459, 14, N'Tupungato')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1460, 14, N'Villa Nueva')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1461, 15, N'Alba Posse')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1462, 15, N'Almafuerte')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1463, 15, N'Ap¾stoles')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1464, 15, N'Arist¾bulo Del Valle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1465, 15, N'Arroyo Del Medio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1466, 15, N'Azara')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1467, 15, N'Bdo. De Irigoyen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1468, 15, N'Bonpland')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1469, 15, N'Caß Yari')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1470, 15, N'Campo Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1471, 15, N'Campo Ram¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1472, 15, N'Campo Viera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1473, 15, N'Candelaria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1474, 15, N'CapiovÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1475, 15, N'Caraguatay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1476, 15, N'Cdte. GuacurarÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1477, 15, N'Cerro Azul')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1478, 15, N'Cerro Corß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1479, 15, N'Col. Alberdi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1480, 15, N'Col. Aurora')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1481, 15, N'Col. Delicia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1482, 15, N'Col. Polana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1483, 15, N'Col. Victoria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1484, 15, N'Col. Wanda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1485, 15, N'Concepci¾n De La Sierra')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1486, 15, N'Corpus')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1487, 15, N'Dos Arroyos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1488, 15, N'Dos de Mayo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1489, 15, N'El Alcßzar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1490, 15, N'El Dorado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1491, 15, N'El Soberbio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1492, 15, N'Esperanza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1493, 15, N'F. Ameghino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1494, 15, N'Fachinal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1495, 15, N'GaruhapÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1496, 15, N'Garupß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1497, 15, N'Gdor. L¾pez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1498, 15, N'Gdor. Roca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1499, 15, N'Gral. Alvear')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1500, 15, N'Gral. Urquiza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1501, 15, N'GuaranÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1502, 15, N'H. Yrigoyen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1503, 15, N'Iguaz·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1504, 15, N'ItacaruarÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1505, 15, N'JardÝn AmÚrica')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1506, 15, N'Leandro N. Alem')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1507, 15, N'Libertad')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1508, 15, N'Loreto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1509, 15, N'Los Helechos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1510, 15, N'Mßrtires')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1511, 15, N'15')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1512, 15, N'Moj¾n Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1513, 15, N'Montecarlo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1514, 15, N'Nueve de Julio')
GO
print 'Processed 1500 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1515, 15, N'Oberß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1516, 15, N'Olegario V. Andrade')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1517, 15, N'PanambÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1518, 15, N'Posadas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1519, 15, N'Profundidad')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1520, 15, N'Pto. Iguaz·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1521, 15, N'Pto. Leoni')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1522, 15, N'Pto. Piray')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1523, 15, N'Pto. Rico')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1524, 15, N'Ruiz de Montoya')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1525, 15, N'San Antonio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1526, 15, N'San Ignacio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1527, 15, N'San Javier')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1528, 15, N'San JosÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1529, 15, N'San MartÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1530, 15, N'San Pedro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1531, 15, N'San Vicente')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1532, 15, N'Santiago De Liniers')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1533, 15, N'Santo Pipo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1534, 15, N'Sta. Ana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1535, 15, N'Sta. MarÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1536, 15, N'Tres Capones')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1537, 15, N'Veinticinco de Mayo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1538, 15, N'Wanda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1539, 16, N'Aguada San Roque')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1540, 16, N'AluminÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1541, 16, N'Andacollo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1542, 16, N'A±elo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1543, 16, N'Bajada del Agrio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1544, 16, N'Barrancas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1545, 16, N'Buta Ranquil')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1546, 16, N'Capital')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1547, 16, N'CaviahuÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1548, 16, N'Centenario')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1549, 16, N'Chorriaca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1550, 16, N'Chos Malal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1551, 16, N'Cipolletti')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1552, 16, N'Covunco Abajo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1553, 16, N'Coyuco Cochico')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1554, 16, N'Cutral C¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1555, 16, N'El Cholar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1556, 16, N'El Huec·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1557, 16, N'El Sauce')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1558, 16, N'Gua±acos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1559, 16, N'Huinganco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1560, 16, N'Las Coloradas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1561, 16, N'Las Lajas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1562, 16, N'Las Ovejas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1563, 16, N'LoncopuÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1564, 16, N'Los Catutos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1565, 16, N'Los Chihuidos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1566, 16, N'Los Miches')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1567, 16, N'Manzano Amargo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1568, 16, N'16')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1569, 16, N'Octavio Pico')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1570, 16, N'Paso Aguerre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1571, 16, N'Pic·n Leuf·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1572, 16, N'Piedra del Aguila')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1573, 16, N'Pilo Lil')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1574, 16, N'Plaza Huincul')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1575, 16, N'Plottier')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1576, 16, N'Quili Malal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1577, 16, N'Ram¾n Castro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1578, 16, N'Rinc¾n de Los Sauces')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1579, 16, N'San MartÝn de Los Andes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1580, 16, N'San Patricio del Cha±ar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1581, 16, N'Santo Tomßs')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1582, 16, N'Sauzal Bonito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1583, 16, N'Senillosa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1584, 16, N'Taquimilßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1585, 16, N'Tricao Malal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1586, 16, N'Varvarco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1587, 16, N'Villa CurÝ Leuvu')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1588, 16, N'Villa del Nahueve')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1589, 16, N'Villa del Puente Pic·n Leuv·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1590, 16, N'Villa El Choc¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1591, 16, N'Villa La Angostura')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1592, 16, N'Villa Pehuenia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1593, 16, N'Villa Traful')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1594, 16, N'Vista Alegre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1595, 16, N'Zapala')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1596, 17, N'Aguada Cecilio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1597, 17, N'Aguada de Guerra')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1598, 17, N'AllÚn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1599, 17, N'Arroyo de La Ventana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1600, 17, N'Arroyo Los Berros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1601, 17, N'Bariloche')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1602, 17, N'Calte. Cordero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1603, 17, N'Campo Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1604, 17, N'Catriel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1605, 17, N'Cerro PolicÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1606, 17, N'Cervantes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1607, 17, N'Chelforo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1608, 17, N'Chimpay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1609, 17, N'Chinchinales')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1610, 17, N'Chipauquil')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1611, 17, N'Choele Choel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1612, 17, N'Cinco Saltos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1613, 17, N'Cipolletti')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1614, 17, N'Clemente Onelli')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1615, 17, N'Colßn Conhue')
GO
print 'Processed 1600 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1616, 17, N'Comallo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1617, 17, N'Comic¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1618, 17, N'Cona Niyeu')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1619, 17, N'Coronel Belisle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1620, 17, N'Cubanea')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1621, 17, N'Darwin')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1622, 17, N'Dina Huapi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1623, 17, N'El Bols¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1624, 17, N'El CaÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1625, 17, N'El Manso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1626, 17, N'Gral. Conesa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1627, 17, N'Gral. Enrique Godoy')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1628, 17, N'Gral. Fernandez Oro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1629, 17, N'Gral. Roca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1630, 17, N'Guardia Mitre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1631, 17, N'Ing. Huergo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1632, 17, N'Ing. Jacobacci')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1633, 17, N'Laguna Blanca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1634, 17, N'Lamarque')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1635, 17, N'Las Grutas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1636, 17, N'Los Menucos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1637, 17, N'Luis Beltrßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1638, 17, N'MainquÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1639, 17, N'Mamuel Choique')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1640, 17, N'Maquinchao')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1641, 17, N'MencuÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1642, 17, N'Mtro. Ramos Mexia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1643, 17, N'Nahuel Niyeu')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1644, 17, N'Naupa Huen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1645, 17, N'Ðorquinco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1646, 17, N'Ojos de Agua')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1647, 17, N'Paso de Agua')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1648, 17, N'Paso Flores')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1649, 17, N'Pe±as Blancas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1650, 17, N'Pichi Mahuida')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1651, 17, N'Pilcaniyeu')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1652, 17, N'Pomona')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1653, 17, N'Prahuaniyeu')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1654, 17, N'Rinc¾n Treneta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1655, 17, N'RÝo Chico')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1656, 17, N'RÝo Colorado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1657, 17, N'Roca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1658, 17, N'San Antonio Oeste')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1659, 17, N'San Javier')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1660, 17, N'Sierra Colorada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1661, 17, N'Sierra Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1662, 17, N'Sierra Pailemßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1663, 17, N'Valcheta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1664, 17, N'Valle Azul')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1665, 17, N'Viedma')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1666, 17, N'Villa LlanquÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1667, 17, N'Villa Mascardi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1668, 17, N'Villa Regina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1669, 17, N'YaminuÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1670, 18, N'A. Saravia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1671, 18, N'Aguaray')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1672, 18, N'Angastaco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1673, 18, N'Animanß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1674, 18, N'Cachi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1675, 18, N'Cafayate')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1676, 18, N'Campo Quijano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1677, 18, N'Campo Santo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1678, 18, N'Capital')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1679, 18, N'Cerrillos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1680, 18, N'Chicoana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1681, 18, N'Col. Sta. Rosa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1682, 18, N'Coronel Moldes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1683, 18, N'El Bordo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1684, 18, N'El Carril')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1685, 18, N'El Galp¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1686, 18, N'El JardÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1687, 18, N'El Potrero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1688, 18, N'El Quebrachal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1689, 18, N'El Tala')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1690, 18, N'Embarcaci¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1691, 18, N'Gral. Ballivian')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1692, 18, N'Gral. G³emes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1693, 18, N'Gral. Mosconi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1694, 18, N'Gral. Pizarro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1695, 18, N'Guachipas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1696, 18, N'Hip¾lito Yrigoyen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1697, 18, N'Iruyß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1698, 18, N'Isla De Ca±as')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1699, 18, N'J. V. Gonzalez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1700, 18, N'La Caldera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1701, 18, N'La Candelaria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1702, 18, N'La Merced')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1703, 18, N'La Poma')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1704, 18, N'La Vi±a')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1705, 18, N'Las Lajitas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1706, 18, N'Los Toldos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1707, 18, N'Metßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1708, 18, N'Molinos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1709, 18, N'Nazareno')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1710, 18, N'Orßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1711, 18, N'Payogasta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1712, 18, N'Pichanal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1713, 18, N'Prof. S. Mazza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1714, 18, N'RÝo Piedras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1715, 18, N'Rivadavia Banda Norte')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1716, 18, N'Rivadavia Banda Sur')
GO
print 'Processed 1700 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1717, 18, N'Rosario de La Frontera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1718, 18, N'Rosario de Lerma')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1719, 18, N'Saclantßs')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1720, 18, N'18')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1721, 18, N'San Antonio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1722, 18, N'San Carlos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1723, 18, N'San JosÚ De Metßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1724, 18, N'San Ram¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1725, 18, N'Santa Victoria E.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1726, 18, N'Santa Victoria O.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1727, 18, N'Tartagal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1728, 18, N'Tolar Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1729, 18, N'Urundel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1730, 18, N'Vaqueros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1731, 18, N'Villa San Lorenzo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1732, 19, N'Albard¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1733, 19, N'Angaco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1734, 19, N'Calingasta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1735, 19, N'Capital')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1736, 19, N'Caucete')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1737, 19, N'Chimbas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1738, 19, N'Iglesia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1739, 19, N'Jachal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1740, 19, N'Nueve de Julio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1741, 19, N'Pocito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1742, 19, N'Rawson')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1743, 19, N'Rivadavia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1744, 19, N'19')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1745, 19, N'San MartÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1746, 19, N'Santa LucÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1747, 19, N'Sarmiento')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1748, 19, N'Ullum')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1749, 19, N'Valle FÚrtil')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1750, 19, N'Veinticinco de Mayo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1751, 19, N'Zonda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1752, 20, N'Alto Pelado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1753, 20, N'Alto Pencoso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1754, 20, N'Anchorena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1755, 20, N'Arizona')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1756, 20, N'Bagual')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1757, 20, N'Balde')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1758, 20, N'Batavia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1759, 20, N'Beazley')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1760, 20, N'Buena Esperanza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1761, 20, N'Candelaria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1762, 20, N'Capital')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1763, 20, N'Carolina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1764, 20, N'CarpinterÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1765, 20, N'Concarßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1766, 20, N'Cortaderas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1767, 20, N'El Morro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1768, 20, N'El Trapiche')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1769, 20, N'El Volcßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1770, 20, N'FortÝn El Patria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1771, 20, N'Fortuna')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1772, 20, N'Fraga')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1773, 20, N'Juan Jorba')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1774, 20, N'Juan Llerena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1775, 20, N'Juana Koslay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1776, 20, N'Justo Daract')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1777, 20, N'La Calera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1778, 20, N'La Florida')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1779, 20, N'La Punilla')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1780, 20, N'La Toma')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1781, 20, N'Lafinur')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1782, 20, N'Las Aguadas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1783, 20, N'Las Chacras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1784, 20, N'Las Lagunas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1785, 20, N'Las Vertientes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1786, 20, N'Lavaisse')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1787, 20, N'Leandro N. Alem')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1788, 20, N'Los Molles')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1789, 20, N'Lujßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1790, 20, N'Mercedes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1791, 20, N'Merlo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1792, 20, N'Naschel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1793, 20, N'Navia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1794, 20, N'NogolÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1795, 20, N'Nueva Galia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1796, 20, N'Papagayos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1797, 20, N'Paso Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1798, 20, N'Potrero de Los Funes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1799, 20, N'Quines')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1800, 20, N'Renca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1801, 20, N'Saladillo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1802, 20, N'San Francisco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1803, 20, N'San Ger¾nimo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1804, 20, N'San MartÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1805, 20, N'San Pablo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1806, 20, N'Santa Rosa de Conlara')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1807, 20, N'Talita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1808, 20, N'Tilisarao')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1809, 20, N'Uni¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1810, 20, N'Villa de La Quebrada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1811, 20, N'Villa de Praga')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1812, 20, N'Villa del Carmen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1813, 20, N'Villa Gral. Roca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1814, 20, N'Villa Larca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1815, 20, N'Villa Mercedes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1816, 20, N'Zanjitas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1817, 21, N'Calafate')
GO
print 'Processed 1800 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1818, 21, N'Caleta Olivia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1819, 21, N'Ca±ad¾n Seco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1820, 21, N'Comandante Piedrabuena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1821, 21, N'El Calafate')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1822, 21, N'El ChaltÚn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1823, 21, N'Gdor. Gregores')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1824, 21, N'Hip¾lito Yrigoyen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1825, 21, N'Jaramillo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1826, 21, N'Koluel Kaike')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1827, 21, N'Las Heras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1828, 21, N'Los Antiguos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1829, 21, N'Perito Moreno')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1830, 21, N'Pico Truncado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1831, 21, N'Pto. Deseado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1832, 21, N'Pto. San Julißn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1833, 21, N'Pto. 21')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1834, 21, N'RÝo Cuarto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1835, 21, N'RÝo Gallegos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1836, 21, N'RÝo Turbio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1837, 21, N'Tres Lagos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1838, 21, N'Veintiocho De Noviembre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1839, 22, N'Aar¾n Castellanos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1840, 22, N'Acebal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1841, 22, N'Aguarß Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1842, 22, N'Albarellos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1843, 22, N'Alcorta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1844, 22, N'Aldao')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1845, 22, N'Alejandra')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1846, 22, N'-lvarez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1847, 22, N'Ambrosetti')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1848, 22, N'Amenßbar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1849, 22, N'AngÚlica')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1850, 22, N'Angeloni')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1851, 22, N'Arequito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1852, 22, N'Arminda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1853, 22, N'Armstrong')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1854, 22, N'Arocena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1855, 22, N'Arroyo Aguiar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1856, 22, N'Arroyo Ceibal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1857, 22, N'Arroyo Leyes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1858, 22, N'Arroyo Seco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1859, 22, N'Arruf¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1860, 22, N'Arteaga')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1861, 22, N'Ataliva')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1862, 22, N'Aurelia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1863, 22, N'Avellaneda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1864, 22, N'Barrancas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1865, 22, N'Bauer Y Sigel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1866, 22, N'Bella Italia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1867, 22, N'Berabev·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1868, 22, N'Berna')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1869, 22, N'Bernardo de Irigoyen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1870, 22, N'Bigand')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1871, 22, N'Bombal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1872, 22, N'Bouquet')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1873, 22, N'Bustinza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1874, 22, N'Cabal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1875, 22, N'Cacique Ariacaiquin')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1876, 22, N'Cafferata')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1877, 22, N'CalchaquÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1878, 22, N'Campo Andino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1879, 22, N'Campo Piaggio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1880, 22, N'Ca±ada de G¾mez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1881, 22, N'Ca±ada del Ucle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1882, 22, N'Ca±ada Rica')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1883, 22, N'Ca±ada RosquÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1884, 22, N'Candioti')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1885, 22, N'Capital')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1886, 22, N'Capitßn Berm·dez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1887, 22, N'Capivara')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1888, 22, N'Carcara±ß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1889, 22, N'Carlos Pellegrini')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1890, 22, N'Carmen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1891, 22, N'Carmen Del Sauce')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1892, 22, N'Carreras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1893, 22, N'Carrizales')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1894, 22, N'Casalegno')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1895, 22, N'Casas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1896, 22, N'Casilda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1897, 22, N'Castelar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1898, 22, N'Castellanos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1899, 22, N'Cayastß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1900, 22, N'Cayastacito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1901, 22, N'Centeno')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1902, 22, N'Cepeda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1903, 22, N'Ceres')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1904, 22, N'Chabßs')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1905, 22, N'Cha±ar Ladeado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1906, 22, N'Chapuy')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1907, 22, N'Chovet')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1908, 22, N'Christophersen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1909, 22, N'Classon')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1910, 22, N'Cnel. Arnold')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1911, 22, N'Cnel. Bogado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1912, 22, N'Cnel. Dominguez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1913, 22, N'Cnel. Fraga')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1914, 22, N'Col. Aldao')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1915, 22, N'Col. Ana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1916, 22, N'Col. Belgrano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1917, 22, N'Col. Bicha')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1918, 22, N'Col. Bigand')
GO
print 'Processed 1900 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1919, 22, N'Col. Bossi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1920, 22, N'Col. Cavour')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1921, 22, N'Col. Cello')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1922, 22, N'Col. Dolores')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1923, 22, N'Col. Dos Rosas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1924, 22, N'Col. Durßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1925, 22, N'Col. Iturraspe')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1926, 22, N'Col. Margarita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1927, 22, N'Col. Mascias')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1928, 22, N'Col. Raquel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1929, 22, N'Col. Rosa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1930, 22, N'Col. San JosÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1931, 22, N'Constanza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1932, 22, N'Coronda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1933, 22, N'Correa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1934, 22, N'Crispi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1935, 22, N'Culul·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1936, 22, N'Curupayti')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1937, 22, N'Desvio Arij¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1938, 22, N'Diaz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1939, 22, N'Diego de Alvear')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1940, 22, N'Egusquiza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1941, 22, N'El Arazß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1942, 22, N'El Rab¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1943, 22, N'El Sombrerito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1944, 22, N'El TrÚbol')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1945, 22, N'Elisa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1946, 22, N'Elortondo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1947, 22, N'Emilia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1948, 22, N'Empalme San Carlos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1949, 22, N'Empalme Villa Constitucion')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1950, 22, N'Esmeralda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1951, 22, N'Esperanza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1952, 22, N'Estaci¾n Alvear')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1953, 22, N'Estacion Clucellas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1954, 22, N'Esteban Rams')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1955, 22, N'Esther')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1956, 22, N'Esustolia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1957, 22, N'Eusebia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1958, 22, N'Felicia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1959, 22, N'Fidela')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1960, 22, N'Fighiera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1961, 22, N'Firmat')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1962, 22, N'Florencia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1963, 22, N'FortÝn Olmos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1964, 22, N'Franck')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1965, 22, N'Fray Luis Beltrßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1966, 22, N'Frontera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1967, 22, N'Fuentes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1968, 22, N'Funes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1969, 22, N'Gaboto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1970, 22, N'Galisteo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1971, 22, N'Gßlvez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1972, 22, N'Garabalto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1973, 22, N'Garibaldi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1974, 22, N'Gato Colorado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1975, 22, N'Gdor. Crespo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1976, 22, N'Gessler')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1977, 22, N'Godoy')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1978, 22, N'Golondrina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1979, 22, N'Gral. Gelly')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1980, 22, N'Gral. Lagos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1981, 22, N'Granadero Baigorria')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1982, 22, N'Gregoria Perez De Denis')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1983, 22, N'Grutly')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1984, 22, N'Guadalupe N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1985, 22, N'G÷deken')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1986, 22, N'Helvecia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1987, 22, N'Hersilia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1988, 22, N'HipatÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1989, 22, N'Huanqueros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1990, 22, N'Hugentobler')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1991, 22, N'Hughes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1992, 22, N'Humberto 1¦')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1993, 22, N'Humboldt')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1994, 22, N'Ibarlucea')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1995, 22, N'Ing. Chanourdie')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1996, 22, N'Intiyaco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1997, 22, N'Ituzaing¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1998, 22, N'Jacinto L. Arßuz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (1999, 22, N'Josefina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2000, 22, N'Juan B. Molina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2001, 22, N'Juan de Garay')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2002, 22, N'Juncal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2003, 22, N'La Brava')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2004, 22, N'La Cabral')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2005, 22, N'La Camila')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2006, 22, N'La Chispa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2007, 22, N'La Clara')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2008, 22, N'La Criolla')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2009, 22, N'La Gallareta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2010, 22, N'La Lucila')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2011, 22, N'La Pelada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2012, 22, N'La Penca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2013, 22, N'La Rubia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2014, 22, N'La Sarita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2015, 22, N'La Vanguardia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2016, 22, N'Labordeboy')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2017, 22, N'Laguna Paiva')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2018, 22, N'Landeta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2019, 22, N'Lanteri')
GO
print 'Processed 2000 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2020, 22, N'Larrechea')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2021, 22, N'Las Avispas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2022, 22, N'Las Bandurrias')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2023, 22, N'Las Garzas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2024, 22, N'Las Palmeras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2025, 22, N'Las Parejas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2026, 22, N'Las Petacas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2027, 22, N'Las Rosas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2028, 22, N'Las Toscas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2029, 22, N'Las Tunas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2030, 22, N'Lazzarino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2031, 22, N'Lehmann')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2032, 22, N'Llambi Campbell')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2033, 22, N'Logro±o')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2034, 22, N'Loma Alta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2035, 22, N'L¾pez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2036, 22, N'Los Amores')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2037, 22, N'Los Cardos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2038, 22, N'Los Laureles')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2039, 22, N'Los Molinos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2040, 22, N'Los Quirquinchos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2041, 22, N'Lucio V. Lopez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2042, 22, N'Luis Palacios')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2043, 22, N'Ma. Juana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2044, 22, N'Ma. Luisa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2045, 22, N'Ma. Susana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2046, 22, N'Ma. Teresa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2047, 22, N'Maciel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2048, 22, N'Maggiolo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2049, 22, N'Malabrigo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2050, 22, N'Marcelino Escalada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2051, 22, N'Margarita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2052, 22, N'Matilde')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2053, 22, N'Mauß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2054, 22, N'Mßximo Paz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2055, 22, N'MelincuÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2056, 22, N'Miguel Torres')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2057, 22, N'MoisÚs Ville')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2058, 22, N'Monigotes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2059, 22, N'Monje')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2060, 22, N'Monte Obscuridad')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2061, 22, N'Monte Vera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2062, 22, N'Montefiore')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2063, 22, N'Montes de Oca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2064, 22, N'Murphy')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2065, 22, N'Ðanducita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2066, 22, N'NarÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2067, 22, N'Nelson')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2068, 22, N'Nicanor E. Molinas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2069, 22, N'Nuevo Torino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2070, 22, N'Oliveros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2071, 22, N'Palacios')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2072, 22, N'Pav¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2073, 22, N'Pav¾n Arriba')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2074, 22, N'Pedro G¾mez Cello')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2075, 22, N'PÚrez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2076, 22, N'Peyrano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2077, 22, N'Piamonte')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2078, 22, N'Pilar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2079, 22, N'Pi±ero')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2080, 22, N'Plaza Clucellas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2081, 22, N'Portugalete')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2082, 22, N'Pozo Borrado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2083, 22, N'Progreso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2084, 22, N'Providencia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2085, 22, N'Pte. Roca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2086, 22, N'Pueblo Andino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2087, 22, N'Pueblo Esther')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2088, 22, N'Pueblo Gral. San MartÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2089, 22, N'Pueblo Irigoyen')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2090, 22, N'Pueblo Marini')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2091, 22, N'Pueblo Mu±oz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2092, 22, N'Pueblo Uranga')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2093, 22, N'Pujato')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2094, 22, N'Pujato N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2095, 22, N'Rafaela')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2096, 22, N'Ramay¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2097, 22, N'Ramona')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2098, 22, N'Reconquista')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2099, 22, N'Recreo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2100, 22, N'Ricardone')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2101, 22, N'Rivadavia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2102, 22, N'Roldßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2103, 22, N'Romang')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2104, 22, N'Rosario')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2105, 22, N'Rueda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2106, 22, N'Rufino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2107, 22, N'Sa Pereira')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2108, 22, N'Saguier')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2109, 22, N'Saladero M. Cabal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2110, 22, N'Salto Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2111, 22, N'San AgustÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2112, 22, N'San Antonio de Obligado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2113, 22, N'San Bernardo (N.J.)')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2114, 22, N'San Bernardo (S.J.)')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2115, 22, N'San Carlos Centro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2116, 22, N'San Carlos N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2117, 22, N'San Carlos S.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2118, 22, N'San Crist¾bal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2119, 22, N'San Eduardo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2120, 22, N'San Eugenio')
GO
print 'Processed 2100 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2121, 22, N'San Fabißn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2122, 22, N'San Fco. de Santa FÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2123, 22, N'San Genaro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2124, 22, N'San Genaro N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2125, 22, N'San Gregorio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2126, 22, N'San Guillermo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2127, 22, N'San Javier')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2128, 22, N'San Jer¾nimo del Sauce')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2129, 22, N'San Jer¾nimo N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2130, 22, N'San Jer¾nimo S.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2131, 22, N'San Jorge')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2132, 22, N'San JosÚ de La Esquina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2133, 22, N'San JosÚ del Rinc¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2134, 22, N'San Justo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2135, 22, N'San Lorenzo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2136, 22, N'San Mariano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2137, 22, N'San MartÝn de Las Escobas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2138, 22, N'San MartÝn N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2139, 22, N'San Vicente')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2140, 22, N'Sancti Spititu')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2141, 22, N'Sanford')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2142, 22, N'Santo Domingo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2143, 22, N'Santo TomÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2144, 22, N'Santurce')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2145, 22, N'Sargento Cabral')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2146, 22, N'Sarmiento')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2147, 22, N'Sastre')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2148, 22, N'Sauce Viejo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2149, 22, N'Serodino')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2150, 22, N'Silva')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2151, 22, N'Soldini')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2152, 22, N'Soledad')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2153, 22, N'Soutomayor')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2154, 22, N'Sta. Clara de Buena Vista')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2155, 22, N'Sta. Clara de Saguier')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2156, 22, N'Sta. Isabel')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2157, 22, N'Sta. Margarita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2158, 22, N'Sta. Maria Centro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2159, 22, N'Sta. MarÝa N.')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2160, 22, N'Sta. Rosa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2161, 22, N'Sta. Teresa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2162, 22, N'Suardi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2163, 22, N'Sunchales')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2164, 22, N'Susana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2165, 22, N'TacuarendÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2166, 22, N'Tacural')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2167, 22, N'Tartagal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2168, 22, N'Teodelina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2169, 22, N'Theobald')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2170, 22, N'Timb·es')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2171, 22, N'Toba')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2172, 22, N'Tortugas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2173, 22, N'Tostado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2174, 22, N'Totoras')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2175, 22, N'Traill')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2176, 22, N'Venado Tuerto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2177, 22, N'Vera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2178, 22, N'Vera y Pintado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2179, 22, N'Videla')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2180, 22, N'Vila')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2181, 22, N'Villa Amelia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2182, 22, N'Villa Ana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2183, 22, N'Villa Ca±as')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2184, 22, N'Villa Constituci¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2185, 22, N'Villa EloÝsa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2186, 22, N'Villa Gdor. Gßlvez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2187, 22, N'Villa Guillermina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2188, 22, N'Villa Minetti')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2189, 22, N'Villa Mugueta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2190, 22, N'Villa Ocampo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2191, 22, N'Villa San JosÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2192, 22, N'Villa Saralegui')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2193, 22, N'Villa Trinidad')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2194, 22, N'Villada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2195, 22, N'Virginia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2196, 22, N'Wheelwright')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2197, 22, N'Zavalla')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2198, 22, N'Zen¾n Pereira')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2199, 23, N'A±atuya')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2200, 23, N'-rraga')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2201, 23, N'Bandera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2202, 23, N'Bandera Bajada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2203, 23, N'Beltrßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2204, 23, N'Brea Pozo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2205, 23, N'Campo Gallo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2206, 23, N'Capital')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2207, 23, N'Chilca Juliana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2208, 23, N'Choya')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2209, 23, N'Clodomira')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2210, 23, N'Col. Alpina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2211, 23, N'Col. Dora')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2212, 23, N'Col. El Simbolar Robles')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2213, 23, N'El Bobadal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2214, 23, N'El Charco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2215, 23, N'El Moj¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2216, 23, N'Estaci¾n Atamisqui')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2217, 23, N'Estaci¾n Simbolar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2218, 23, N'Fernßndez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2219, 23, N'FortÝn Inca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2220, 23, N'FrÝas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2221, 23, N'Garza')
GO
print 'Processed 2200 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2222, 23, N'Gramilla')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2223, 23, N'Guardia Escolta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2224, 23, N'Herrera')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2225, 23, N'Ica±o')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2226, 23, N'Ing. Forres')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2227, 23, N'La Banda')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2228, 23, N'La Ca±ada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2229, 23, N'Laprida')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2230, 23, N'Lavalle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2231, 23, N'Loreto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2232, 23, N'Los JurÝes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2233, 23, N'Los N·±ez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2234, 23, N'Los Pirpintos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2235, 23, N'Los Quiroga')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2236, 23, N'Los Telares')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2237, 23, N'Lugones')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2238, 23, N'Malbrßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2239, 23, N'Matara')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2240, 23, N'MedellÝn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2241, 23, N'Monte Quemado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2242, 23, N'Nueva Esperanza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2243, 23, N'Nueva Francia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2244, 23, N'Palo Negro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2245, 23, N'Pampa de Los Guanacos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2246, 23, N'Pinto')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2247, 23, N'Pozo Hondo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2248, 23, N'QuimilÝ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2249, 23, N'Real Sayana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2250, 23, N'Sachayoj')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2251, 23, N'San Pedro de Guasayßn')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2252, 23, N'Selva')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2253, 23, N'Sol de Julio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2254, 23, N'Sumampa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2255, 23, N'Suncho Corral')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2256, 23, N'Taboada')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2257, 23, N'Tapso')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2258, 23, N'Termas de Rio Hondo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2259, 23, N'Tintina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2260, 23, N'Tomas Young')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2261, 23, N'Vilelas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2262, 23, N'Villa Atamisqui')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2263, 23, N'Villa La Punta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2264, 23, N'Villa Ojo de Agua')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2265, 23, N'Villa RÝo Hondo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2266, 23, N'Villa Salavina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2267, 23, N'Villa Uni¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2268, 23, N'Vilmer')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2269, 23, N'Weisburd')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2270, 24, N'RÝo Grande')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2271, 24, N'Tolhuin')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2272, 24, N'Ushuaia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2273, 25, N'Acheral')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2274, 25, N'Agua Dulce')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2275, 25, N'Aguilares')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2276, 25, N'Alderetes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2277, 25, N'Alpachiri')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2278, 25, N'Alto Verde')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2279, 25, N'Amaicha del Valle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2280, 25, N'Amberes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2281, 25, N'Ancajuli')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2282, 25, N'Arcadia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2283, 25, N'Atahona')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2284, 25, N'Banda del RÝo Sali')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2285, 25, N'Bella Vista')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2286, 25, N'Buena Vista')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2287, 25, N'Burruyac·')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2288, 25, N'Capitßn Cßceres')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2289, 25, N'Cevil Redondo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2290, 25, N'Choromoro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2291, 25, N'Ciudacita')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2292, 25, N'Colalao del Valle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2293, 25, N'Colombres')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2294, 25, N'Concepci¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2295, 25, N'DelfÝn Gallo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2296, 25, N'El Bracho')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2297, 25, N'El Cadillal')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2298, 25, N'El Cercado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2299, 25, N'El Cha±ar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2300, 25, N'El Manantial')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2301, 25, N'El Moj¾n')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2302, 25, N'El Mollar')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2303, 25, N'El Naranjito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2304, 25, N'El Naranjo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2305, 25, N'El Polear')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2306, 25, N'El Puestito')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2307, 25, N'El Sacrificio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2308, 25, N'El Timb¾')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2309, 25, N'Escaba')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2310, 25, N'Esquina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2311, 25, N'Estaci¾n Arßoz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2312, 25, N'Famaillß')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2313, 25, N'Gastone')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2314, 25, N'Gdor. Garmendia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2315, 25, N'Gdor. Piedrabuena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2316, 25, N'Graneros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2317, 25, N'Huasa Pampa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2318, 25, N'J. B. Alberdi')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2319, 25, N'La Cocha')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2320, 25, N'La Esperanza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2321, 25, N'La Florida')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2322, 25, N'La Ramada')
GO
print 'Processed 2300 total records'
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2323, 25, N'La Trinidad')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2324, 25, N'Lamadrid')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2325, 25, N'Las Cejas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2326, 25, N'Las Talas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2327, 25, N'Las Talitas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2328, 25, N'Los Bulacio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2329, 25, N'Los G¾mez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2330, 25, N'Los Nogales')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2331, 25, N'Los Pereyra')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2332, 25, N'Los PÚrez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2333, 25, N'Los Puestos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2334, 25, N'Los Ralos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2335, 25, N'Los Sarmientos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2336, 25, N'Los Sosa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2337, 25, N'Lules')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2338, 25, N'M. GarcÝa Fernßndez')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2339, 25, N'Manuela Pedraza')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2340, 25, N'Medinas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2341, 25, N'Monte Bello')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2342, 25, N'Monteagudo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2343, 25, N'Monteros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2344, 25, N'Padre Monti')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2345, 25, N'Pampa Mayo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2346, 25, N'Quilmes')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2347, 25, N'Raco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2348, 25, N'Ranchillos')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2349, 25, N'RÝo Chico')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2350, 25, N'RÝo Colorado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2351, 25, N'RÝo Seco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2352, 25, N'Rumi Punco')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2353, 25, N'San AndrÚs')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2354, 25, N'San Felipe')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2355, 25, N'San Ignacio')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2356, 25, N'San Javier')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2357, 25, N'San JosÚ')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2358, 25, N'San Miguel de 25')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2359, 25, N'San Pedro')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2360, 25, N'San Pedro de Colalao')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2361, 25, N'Santa Rosa de Leales')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2362, 25, N'Sgto. Moya')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2363, 25, N'Siete de Abril')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2364, 25, N'Simoca')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2365, 25, N'Soldado Maldonado')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2366, 25, N'Sta. Ana')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2367, 25, N'Sta. Cruz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2368, 25, N'Sta. LucÝa')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2369, 25, N'Taco Ralo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2370, 25, N'TafÝ del Valle')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2371, 25, N'TafÝ Viejo')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2372, 25, N'Tapia')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2373, 25, N'Teniente Berdina')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2374, 25, N'Trancas')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2375, 25, N'Villa Belgrano')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2376, 25, N'Villa BenjamÝn Araoz')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2377, 25, N'Villa Chiligasta')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2378, 25, N'Villa de Leales')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2379, 25, N'Villa Quinteros')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2380, 25, N'Yßnima')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2381, 25, N'Yerba Buena')
INSERT [dbo].[Localidad] ([Id], [IdProvincia], [Nombre]) VALUES (2382, 25, N'Yerba Buena (S)')
SET IDENTITY_INSERT [dbo].[Localidad] OFF
/****** Object:  StoredProcedure [dbo].[SPEliminarImpresoras]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPEliminarImpresoras] 
    @Estacion VARCHAR(50),
    @IdTipoComprobante int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Impresoras]
	WHERE  [Estacion] = @Estacion AND [IdTipoComprobante] = @IdTipoComprobante

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarEmpresa]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEliminarEmpresa] @Id INT

AS

DELETE Empresas WHERE Id =  @Id
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarTipoMovimiento]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarTipoMovimiento] @IdTipoComprobante INT, @Nombre VARCHAR(100), 
												 @Signo CHAR(1), @Numeracion CHAR(1), @MueveStock BIT
AS
INSERT INTO TipoMovimiento (IdTipoComprobante,Nombre,Signo,Numeracion, MueveStock) 
VALUES (@IdTipoComprobante, @Nombre,@Signo,@Numeracion, @MueveStock)

SELECT MAX(Id) AS Id FROM TipoMovimiento
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarImpresoras]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPInsertarImpresoras] 
    @Estacion varchar(50) = NULL,
    @IdTipoComprobante int = NULL,
    @Impresora varchar(150) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Impresoras] ([Estacion], [IdTipoComprobante], [Impresora])
	SELECT @Estacion, @IdTipoComprobante, @Impresora
	
	-- Begin Return Select <- do not remove
	SELECT [Id]
	FROM   [dbo].[Impresoras]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarEmpresa]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarEmpresa] @Nombre VARCHAR(200), @NombreFantasia VARCHAR(200), @CUIT VARCHAR(13),
								   @IngresosBrutos VARCHAR(14), @InicioActividad VARCHAR(10), @IdCategoriaAFIP INT
								   
AS

INSERT INTO Empresas (Nombre, NombreFantasia, CUIT, IngresosBrutos, InicioActividad, IdCategoriaAFIP)
VALUES (@Nombre, @NombreFantasia, @CUIT, @IngresosBrutos, @InicioActividad, @IdCategoriaAFIP)


SELECT MAX(Id) AS Id FROM Empresas
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarTipoMovimiento]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEliminarTipoMovimiento] @Id INT
AS
DELETE TipoMovimiento WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPModificarImpresoras]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPModificarImpresoras] 
    @Estacion varchar(50) = NULL,
    @IdTipoComprobante int = NULL,
    @Impresora varchar(150) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Impresoras]
	SET    [Impresora] = @Impresora
	WHERE  [Estacion] = @Estacion AND [IdTipoComprobante] = @IdTipoComprobante

	
--	SELECT Id FROM Impresoras WHERE  [Estacion] = @Estacion AND [IdTipoComprobante] = @IdTipoComprobante
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[SPModificarEmpresa]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPModificarEmpresa] @Nombre VARCHAR(200), @NombreFantasia VARCHAR(200), @CUIT VARCHAR(13),
								    @IngresosBrutos VARCHAR(14), @InicioActividad VARCHAR(10), @IdCategoriaAFIP INT,
								    @ID INT


AS


UPDATE Empresas
SET Nombre = @Nombre,
	NombreFantasia = @NombreFantasia,
	CUIT = @CUIT,
	IngresosBrutos = @IngresosBrutos,
	InicioActividad = @InicioActividad,
	IdCategoriaAFIP = @IdCategoriaAFIP
WHERE Id = @ID


SELECT @ID AS Id
GO
/****** Object:  Table [dbo].[Cuenta]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cuenta](
	[IdCuenta] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[NombreFantasia] [varchar](200) NULL,
	[IdCategoriaAFIP] [int] NOT NULL,
	[IdTipoDocumento] [int] NOT NULL,
	[NroDocumento] [varchar](13) NULL,
	[NroIngresosBrutos] [varchar](14) NULL,
	[IdLocalidad] [int] NULL,
	[Domicilio] [varchar](200) NULL,
	[NroDomicilio] [int] NULL,
	[Piso] [int] NULL,
	[Departamento] [varchar](5) NULL,
	[Proveedor] [bit] NULL,
	[Mail] [varchar](100) NULL,
	[Telefono] [varchar](20) NULL,
 CONSTRAINT [PK_Cuenta] PRIMARY KEY CLUSTERED 
(
	[IdCuenta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cuenta] ON
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (1, N'TECNOLOGIATUALCANCE S.R.L.', N'TecnoPrices', 3, 80, N'30-12345678-9', N'30123456789', 1, N'Rivadavia', 1376, 0, N'0', 1, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (2, N'Municipalidad de Arroyo Cabral', N'', 2, 80, N'30-99906276-4', N'', 1, N'Jose Maria Parola', 378, 0, N'0', 0, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (3, N'Soppeno Marcelo Jose', N'', 5, 96, N'20078266', N'', 1, N'', 0, 0, N'0', 0, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (4, N'Isaia Romina Valeria', N'', 5, 96, N'27898084', N'', 1, N'', 0, 0, N'0', 0, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (5, N'Brignone Marilyn de Lourdes', N'', 2, 96, N'35671154', N'', 1, N'', 0, 0, N'0', 0, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (6, N'fafifa', N'sadsa', 1, 99, N'654', N'654654645', 1, N'asdad', 654, 4, N'1', 0, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (7, N'fafifa', N'sadsa', 1, 99, N'654', N'654654645', 1, N'asdad', 654, 4, N'1', 0, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (8, N'fafifa', N'sadsa', 1, 99, N'654', N'654654645', 1, N'asdad', 654, 4, N'1', 0, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (9, N'fafifa', N'sadsa', 1, 99, N'654', N'654654645', 1, N'asdad', 654, 4, N'1', 0, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (13, N'plo', N'ploooo', 3, 80, N'546654', N'564654', 1, N'asdas', 2, 1, N'1', 1, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (16, N'plo', N'ploooo', 3, 80, N'546654', N'564654', 1, N'asdas', 2, 1, N'1', 1, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (17, N'plo', N'ploooo', 3, 80, N'546654', N'564654', 1, N'asdas', 2, 1, N'1', 1, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (18, N'sadasdsda', N'sdasadsda', 4, 96, N'324423432', N'sadsdasda', 1, N'dsasdadsa', 11, 11, N'1', 0, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (20, N'asdasd', N'', 3, 86, N'545644554', N'561115615', 1, N'sfsdfsd', 455, 0, N'0', 0, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (22, N'pepito', N'fumate una pepa', 5, 86, N'1154111', N'115111', 1, N'asassa', 454, 1, N'22', 0, N'oaoaoao', N'561654654')
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (23, N'meme', N'memelandia', 2, 99, N'6546545', N'654654', 1, N'ddfd', 444, 4, N'4', 0, N'ddd', N'')
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (24, N'asdsadasd', N'sadsadsad', 3, 86, N'234324342', N'23423424', 507, N'asd', 234, 2, N'2', 1, N'123231213', N'213213213231')
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (25, N'asdasdasd', NULL, 5, 86, N'322323', NULL, 1, N'asdasd', 12, 1, N'', 0, N'', N'')
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (26, N'Claudio Operti', NULL, 5, 96, N'32939666', NULL, 1856, N'd', 1, 1, N'', 0, N'', N'')
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (27, N'asdasdd', NULL, 5, 96, N'231323', NULL, 1, N'', 1, 1, N'', 0, N'', N'')
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (28, N'fgdfgd', N'gfdfgd', 5, 80, NULL, N'786786', 5, N'jkhkjhkj', 777, 1, N'1', 0, N'asjkhjkashjkad', N'1237862378623')
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (29, N'kasdjhasjkdh', N'jkasdhkjasdh', 5, 80, N'78678687', N'87897', 5, N'jkhjkh', 55685, 554, N'54', 1, N'kasjdhjk', N'5645')
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (33, N'pedro', NULL, 1, 80, N'1', N'1', 1, NULL, 1, 1, N'1', 0, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (37, N'sadasd', NULL, 5, 86, N'1', N'1', 1, NULL, 1, 1, N'1', 0, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (38, N'HOLA HOLA', NULL, 5, 80, N'675675675', NULL, 1, NULL, 1, 1, N'1', 0, NULL, NULL)
INSERT [dbo].[Cuenta] ([IdCuenta], [Nombre], [NombreFantasia], [IdCategoriaAFIP], [IdTipoDocumento], [NroDocumento], [NroIngresosBrutos], [IdLocalidad], [Domicilio], [NroDomicilio], [Piso], [Departamento], [Proveedor], [Mail], [Telefono]) VALUES (39, N'aseddasdasdasdasd', N'', 5, 96, N'', N'', NULL, N'', NULL, NULL, N'', 0, N'', N'')
SET IDENTITY_INSERT [dbo].[Cuenta] OFF
/****** Object:  StoredProcedure [dbo].[SPListarLocalidad]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPListarLocalidad]
AS

SELECT L.Id, L.Nombre, L.IdProvincia, P.Nombre AS NombreProvincia
FROM Localidad L LEFT JOIN Provincia P ON L.IdProvincia = P.Id
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerLocalidad]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerLocalidad] @Id INT
AS

SELECT  TOP 5 L.Id, L.Nombre AS NombreLocalidad, P.Nombre AS NombreProvincia
FROM Localidad L LEFT JOIN Provincia P ON L.IdProvincia = P.Id
WHERE L.Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerCuenta]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerCuenta] @Id INT
AS
SELECT IdCuenta, Nombre, NombreFantasia, IdCategoriaAFIP, IdTipoDocumento, NroDocumento, 
	   NroIngresosBrutos, ISNULL(IdLocalidad,507) AS IdLocalidad, Domicilio, ISNULL(NroDomicilio,0) AS NroDomicilio
	   , ISNULL(Piso,0) AS Piso, Departamento, Proveedor,
	   Mail, Telefono
FROM Cuenta
WHERE IdCuenta = @Id
GO
/****** Object:  StoredProcedure [Reportes].[SPReporteCuentas]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Reportes].[SPReporteCuentas] @CuentaDesde INT, @CuentaHasta INT, @TipoCuenta BIT = NULL
AS

SELECT IdCuenta, Nombre, NombreFantasia, IdCategoriaAFIP, IdTipoDocumento, 
	   NroDocumento, NroIngresosBrutos, IdLocalidad, Domicilio, 
	   NroDomicilio, Piso, Departamento, Proveedor, Mail, Telefono
FROM Cuenta
WHERE IdCuenta >= @CuentaDesde AND IdCuenta <= @CuentaHasta AND (Proveedor = @TipoCuenta OR @TipoCuenta IS NULL)
GO
/****** Object:  StoredProcedure [dbo].[SPModificarCuenta]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPModificarCuenta] @IdCuenta INT , @Nombre VARCHAR(200), @NombreFantasia VARCHAR(200), 
								   @IdCategoriaAFIP INT, @IdTipoDocumento INT, @NroDocumento VARCHAR(13), 
								   @NroIngresosBrutos VARCHAR(14), @IdLocalidad INT, @Domicilio VARCHAR(200), 
								   @NroDomicilio INT, @Piso INT, @Departamento VARCHAR(5), @Proveedor BIT,
								   @Mail VARCHAR(100), @Telefono VARCHAR(20)
AS
UPDATE Cuenta
SET Nombre = @Nombre, 
	NombreFantasia = @NombreFantasia, 
	IdCategoriaAFIP = @IdCategoriaAFIP, 
	IdTipoDocumento = @IdTipoDocumento, 
	NroDocumento = @NroDocumento, 
	NroIngresosBrutos = @NroIngresosBrutos,
	IdLocalidad = IdLocalidad, 
	Domicilio = @Domicilio, 
	NroDomicilio = @NroDomicilio, 
	Piso = @Piso, 
	Departamento = @Departamento,
	Proveedor = @Proveedor,
	Mail = @Mail,
	Telefono = @Telefono
WHERE IdCuenta = @IdCuenta
GO
/****** Object:  StoredProcedure [dbo].[SPListarCuentaXTipoCuenta]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPListarCuentaXTipoCuenta] @TipoCuenta BIT

AS

SELECT IdCuenta, Nombre, NombreFantasia, IdCategoriaAFIP, IdTipoDocumento, 
	   NroDocumento, NroIngresosBrutos, ISNULL(IdLocalidad,507), Domicilio, ISNULL(NroDomicilio,0), 
	   ISNULL(Piso,0), Departamento, Proveedor, Mail, Telefono
FROM Cuenta
WHERE Proveedor = @TipoCuenta
GO
/****** Object:  StoredProcedure [dbo].[SPListarCuentas]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPListarCuentas] 
AS


SELECT IdCuenta, Nombre, NombreFantasia, IdCategoriaAFIP, IdTipoDocumento, NroDocumento, 
	   NroIngresosBrutos, ISNULL(IdLocalidad,507) AS IdLocalidad, Domicilio, 
	   ISNULL(NroDomicilio,0) AS NroDomicilio, ISNULL(Piso,0) AS Piso, Departamento, Proveedor,
	   Mail, Telefono
FROM Cuenta
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarCuenta]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarCuenta] @Nombre VARCHAR(200), @NombreFantasia VARCHAR(200) = NULL, @IdCategoriaAFIP INT,
								  @IdTipoDocumento INT, @NroDocumento VARCHAR(13) = null, @NroIngresosBrutos VARCHAR(14) = NULL,
								  @IdLocalidad INT, @Domicilio VARCHAR(200) = NULL, @NroDomicilio INT = NULL, @Piso INT = NULL,
								  @Departamento VARCHAR(5) = NULL, @Proveedor BIT = NULL, @Mail VARCHAR(100) = NULL,
								  @Telefono VARCHAR(20) = NULL
AS
INSERT INTO Cuenta (Nombre, NombreFantasia, IdCategoriaAFIP, IdTipoDocumento, NroDocumento, NroIngresosBrutos,
					IdLocalidad, Domicilio, NroDomicilio, Piso, Departamento, Proveedor, Mail, Telefono)
VALUES
(@Nombre, @NombreFantasia, @IdCategoriaAFIP, @IdTipoDocumento, @NroDocumento, @NroIngresosBrutos, @IdLocalidad,
@Domicilio, @NroDomicilio, @Piso, @Departamento, @Proveedor, @Mail, @Telefono)

SELECT MAX(IdCuenta) AS IdCuenta FROM Cuenta
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarCuenta]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEliminarCuenta] @IdCuenta INT
AS
DELETE Cuenta WHERE IdCuenta = @IdCuenta
GO
/****** Object:  Table [dbo].[MovimientoCV]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovimientoCV](
	[claveMov] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoMov] [int] NOT NULL,
	[PuntoVenta] [int] NOT NULL,
	[NroMov] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[ImporteNeto] [decimal](12, 4) NOT NULL,
	[ImporteIVA] [decimal](12, 4) NOT NULL,
	[IdCuenta] [int] NOT NULL,
	[Observacion] [varchar](300) NOT NULL,
	[CAE] [varchar](14) NULL,
	[VencimientoCAE] [date] NULL,
	[FechaContabilizacion] [date] NULL,
	[IdCondicionPago] [int] NULL,
 CONSTRAINT [PK_MovimientoCV] PRIMARY KEY CLUSTERED 
(
	[claveMov] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MovimientoCV] ON
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (16, 1, 2, 1, CAST(0xBE3A0B00 AS Date), CAST(104.1322 AS Decimal(12, 4)), CAST(21.8678 AS Decimal(12, 4)), 3, N'', N'nulaso', CAST(0xBE3A0B00 AS Date), CAST(0xBE3A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (17, 1, 1, 1, CAST(0xBF3A0B00 AS Date), CAST(1973.1029 AS Decimal(12, 4)), CAST(399.1062 AS Decimal(12, 4)), 3, N'asdasdasd', N'nulaso', CAST(0xBF3A0B00 AS Date), CAST(0xBF3A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (18, 1, 1, 2, CAST(0xBF3A0B00 AS Date), CAST(1973.1029 AS Decimal(12, 4)), CAST(399.1062 AS Decimal(12, 4)), 2, N'', N'nulaso', CAST(0xBF3A0B00 AS Date), CAST(0xBF3A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (19, 1, 2, 2, CAST(0xBF3A0B00 AS Date), CAST(128.9256 AS Decimal(12, 4)), CAST(27.0744 AS Decimal(12, 4)), 3, N'', N'nulaso', CAST(0xBF3A0B00 AS Date), CAST(0xBF3A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (20, 1, 0, 1, CAST(0xBF3A0B00 AS Date), CAST(290.3891 AS Decimal(12, 4)), CAST(30.4909 AS Decimal(12, 4)), 4, N'', N'nulaso', CAST(0xBF3A0B00 AS Date), CAST(0xBF3A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (21, 1, 1, 3, CAST(0xBF3A0B00 AS Date), CAST(1973.1029 AS Decimal(12, 4)), CAST(399.1062 AS Decimal(12, 4)), 3, N'', N'nulaso', CAST(0xBF3A0B00 AS Date), CAST(0xBF3A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (22, 1, 1, 4, CAST(0xBF3A0B00 AS Date), CAST(206.6115 AS Decimal(12, 4)), CAST(43.3884 AS Decimal(12, 4)), 3, N'', N'nulaso', CAST(0xBF3A0B00 AS Date), CAST(0xBF3A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (23, 1, 1, 5, CAST(0xBF3A0B00 AS Date), CAST(104.1322 AS Decimal(12, 4)), CAST(21.8678 AS Decimal(12, 4)), 1, N'', N'nulaso', CAST(0xBF3A0B00 AS Date), CAST(0xBF3A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (24, 7, 1, 1, CAST(0xBF3A0B00 AS Date), CAST(3.4628 AS Decimal(12, 4)), CAST(0.5372 AS Decimal(12, 4)), 4, N'', N'nulaso', CAST(0xBF3A0B00 AS Date), CAST(0xBF3A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (25, 1, 100, 1, CAST(0xBF3A0B00 AS Date), CAST(1827.9083 AS Decimal(12, 4)), CAST(383.8608 AS Decimal(12, 4)), 3, N'', N'nulaso', CAST(0xBF3A0B00 AS Date), CAST(0xBF3A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (26, 1, 101, 1, CAST(0xC43A0B00 AS Date), CAST(182.2915 AS Decimal(12, 4)), CAST(30.0745 AS Decimal(12, 4)), 3, N'', N'nulaso', CAST(0xC43A0B00 AS Date), CAST(0xC43A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (27, 1, 888, 1, CAST(0xC43A0B00 AS Date), CAST(388.3384 AS Decimal(12, 4)), CAST(40.7755 AS Decimal(12, 4)), 3, N'', N'nulaso', CAST(0xC43A0B00 AS Date), CAST(0xC43A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (28, 1, 888, 2, CAST(0xC43A0B00 AS Date), CAST(43.0876 AS Decimal(12, 4)), CAST(9.0484 AS Decimal(12, 4)), 3, N'', N'nulaso', CAST(0xC43A0B00 AS Date), CAST(0xC43A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (29, 1, 2, 3, CAST(0xC53A0B00 AS Date), CAST(1910.5500 AS Decimal(12, 4)), CAST(401.2200 AS Decimal(12, 4)), 1, N'', N'nulaso', CAST(0xC53A0B00 AS Date), CAST(0xC53A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (30, 9, 1, 1, CAST(0xCB3A0B00 AS Date), CAST(82.6400 AS Decimal(12, 4)), CAST(17.3600 AS Decimal(12, 4)), 5, N'asdasdasd', N'nulaso', CAST(0xCB3A0B00 AS Date), CAST(0xCB3A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (31, 2, 1, 1, CAST(0xD73A0B00 AS Date), CAST(4132.2300 AS Decimal(12, 4)), CAST(867.7700 AS Decimal(12, 4)), 3, N'', N'nulaso', CAST(0xD73A0B00 AS Date), CAST(0xD73A0B00 AS Date), 1)
INSERT [dbo].[MovimientoCV] ([claveMov], [IdTipoMov], [PuntoVenta], [NroMov], [Fecha], [ImporteNeto], [ImporteIVA], [IdCuenta], [Observacion], [CAE], [VencimientoCAE], [FechaContabilizacion], [IdCondicionPago]) VALUES (32, 2, 1, 2, CAST(0xD73A0B00 AS Date), CAST(4132.2300 AS Decimal(12, 4)), CAST(867.7700 AS Decimal(12, 4)), 3, N'', N'nulaso', CAST(0xD73A0B00 AS Date), CAST(0xD73A0B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[MovimientoCV] OFF
/****** Object:  StoredProcedure [dbo].[SPBuscarCuenta]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPBuscarCuenta] @Texto VARCHAR(200), @Columna BIT 

AS

DECLARE @strNombre VARCHAR(200) = ''
DECLARE @strNombreFantasia VARCHAR(200) = ''

IF @Columna = 0
	BEGIN
		SET @strNombre = @Texto
	END
ELSE
	BEGIN
		SET @strNombreFantasia = @Texto
	END

SELECT * 
FROM Cuenta
WHERE Nombre LIKE '%' + @strNombre + '%' AND NombreFantasia LIKE '%' + @strNombreFantasia + '%'
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Articulos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[IVA] [decimal](4, 2) NOT NULL,
	[PrecioCompra] [decimal](12, 4) NOT NULL,
	[Porcentaje] [decimal](5, 2) NULL,
	[CodigoBarra] [varchar](20) NULL,
	[PrecioSugerido] [decimal](12, 4) NULL,
	[IdCuenta] [int] NULL,
	[LlevaStock] [bit] NULL,
	[Cantidad] [int] NULL,
	[BloquearPrecio] [bit] NULL,
	[IdCategoria] [int] NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Articulos] ON
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1, N'Mouse Genius NetScroll 120', CAST(21.00 AS Decimal(4, 2)), CAST(100.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(5, 2)), N'', CAST(100.0000 AS Decimal(12, 4)), 24, 1, 6, 1, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2, N'MF HP 2545 ADVANTAGE 20PPM WIFI A9U23A', CAST(21.00 AS Decimal(4, 2)), CAST(1489.8351 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'A9U23A', CAST(2085.7691 AS Decimal(12, 4)), 1, 1, 14, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (3, N'Parlantes Genius 5W', CAST(21.00 AS Decimal(4, 2)), CAST(90.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'231312321', CAST(126.0000 AS Decimal(12, 4)), 1, 1, 2, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (952, N'Soldador Full Energy', CAST(10.50 AS Decimal(4, 2)), CAST(114.6000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.4400 AS Decimal(12, 4)), 2, 1, 3, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (953, N'Soldador Full Energy Pistola''hola', CAST(10.50 AS Decimal(4, 2)), CAST(124.0100 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(173.6140 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (954, N'Mouse Noga Inalambrico', CAST(10.50 AS Decimal(4, 2)), CAST(121.6400 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'NGM-428', CAST(170.2960 AS Decimal(12, 4)), 5, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (955, N'Mouse GTC Inalambrico', CAST(10.50 AS Decimal(4, 2)), CAST(125.8700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'MIG-786', CAST(176.2180 AS Decimal(12, 4)), 5, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (956, N'Buscapolo Full Energy', CAST(21.00 AS Decimal(4, 2)), CAST(33.1900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(46.4660 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (957, N'Mouse Genius NetScroll 120''hihihihi', CAST(10.50 AS Decimal(4, 2)), CAST(61.6900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'564', CAST(86.3660 AS Decimal(12, 4)), 2, 1, 1, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (958, N'Teclado Numerico Satelite', CAST(10.50 AS Decimal(4, 2)), CAST(191.8600 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'4464', CAST(268.6040 AS Decimal(12, 4)), 2, 1, 2, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (959, N'Pendrive 4GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (960, N'Pendrive 8 GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 13, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (961, N'Pendrive 16 GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (962, N'Memorias Micro SD 8GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 6, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (963, N'Memorias Micro SD 16GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (964, N'Pendrive 32 GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 4, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (965, N'Bateria 9 V Enerizer', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N' 4140', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 4, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (966, N'Pilas AA Philips', CAST(21.00 AS Decimal(4, 2)), CAST(5.1100 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1815', CAST(7.1540 AS Decimal(12, 4)), 2, 1, 17, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (967, N'Pilas AAA Philips', CAST(21.00 AS Decimal(4, 2)), CAST(4.0500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1816', CAST(5.6700 AS Decimal(12, 4)), 2, 1, 21, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (968, N'Cargadores Samsung ', CAST(21.00 AS Decimal(4, 2)), CAST(27.2900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'8160', CAST(38.2060 AS Decimal(12, 4)), 2, 1, 5, 0, 10)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (969, N'Pilas AA Recargables Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (970, N'Pilas AA Recargables Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (971, N'Cargador de Pilas', CAST(21.00 AS Decimal(4, 2)), CAST(38.1500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'217', CAST(53.4100 AS Decimal(12, 4)), 2, 1, 1, 0, 10)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (972, N'Soldador Full Energy', CAST(10.50 AS Decimal(4, 2)), CAST(114.6000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.4400 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (973, N'Soldador Full Energy Pistola', CAST(10.50 AS Decimal(4, 2)), CAST(124.0100 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(173.6140 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (974, N'Mouse Noga Inalambrico', CAST(10.50 AS Decimal(4, 2)), CAST(121.6400 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'NGM-428', CAST(170.2960 AS Decimal(12, 4)), 5, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (975, N'Mouse GTC Inalambrico', CAST(10.50 AS Decimal(4, 2)), CAST(125.8700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'MIG-786', CAST(176.2180 AS Decimal(12, 4)), 5, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (976, N'Buscapolo Full Energy', CAST(21.00 AS Decimal(4, 2)), CAST(33.1900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(46.4660 AS Decimal(12, 4)), 2, 1, 0, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (977, N'Mouse Genius NetScroll 120', CAST(10.50 AS Decimal(4, 2)), CAST(61.6900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'564', CAST(86.3660 AS Decimal(12, 4)), 2, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (978, N'Teclado Numerico Satelite', CAST(10.50 AS Decimal(4, 2)), CAST(191.8600 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'4464', CAST(268.6040 AS Decimal(12, 4)), 2, 1, 1, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (979, N'Pendrive 4GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (980, N'Pendrive 8 GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 11, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (981, N'Pendrive 16 GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (982, N'Memorias Micro SD 8GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 6, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (983, N'Memorias Micro SD 16GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (984, N'Pendrive 32 GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 4, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (985, N'Bateria 9 V Enerizer', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N' 4140', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (986, N'Pilas AA Philips', CAST(21.00 AS Decimal(4, 2)), CAST(5.1100 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1815', CAST(7.1540 AS Decimal(12, 4)), 2, 1, 12, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (987, N'Pilas AAA Philips', CAST(21.00 AS Decimal(4, 2)), CAST(4.0500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1816', CAST(5.6700 AS Decimal(12, 4)), 2, 1, 20, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (988, N'Cargadores Samsung ', CAST(21.00 AS Decimal(4, 2)), CAST(27.2900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'8160', CAST(38.2060 AS Decimal(12, 4)), 2, 1, 4, 0, 10)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (989, N'Pilas AA Recargables Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (990, N'Pilas AA Recargables Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (991, N'Cargador de Pilas', CAST(21.00 AS Decimal(4, 2)), CAST(38.1500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'217', CAST(53.4100 AS Decimal(12, 4)), 2, 1, 1, 0, 10)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (992, N'Linterna PRO1', CAST(21.00 AS Decimal(4, 2)), CAST(28.6900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'7122', CAST(40.1660 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (993, N'Kit Linternas + Pilas', CAST(21.00 AS Decimal(4, 2)), CAST(35.0900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'7143', CAST(49.1260 AS Decimal(12, 4)), 2, 1, 2, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (994, N'Pinza 6" NISUTA', CAST(21.00 AS Decimal(4, 2)), CAST(87.2000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'5677', CAST(122.0800 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (995, N'Pinza de Punta Nisuta', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (996, N'Adaptador Micro USB a HDMI', CAST(21.00 AS Decimal(4, 2)), CAST(115.1900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'8397', CAST(161.2660 AS Decimal(12, 4)), 2, 1, 2, 0, 6)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (997, N'HUB USB', CAST(21.00 AS Decimal(4, 2)), CAST(54.0600 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'7794', CAST(75.6840 AS Decimal(12, 4)), 2, 1, 3, 0, 6)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (998, N'Cartucho HP 670 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 5, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (999, N'Cartucho HP 670 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1000, N'Cartucho HP 670 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 3, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1001, N'Cartucho HP 21 XL Negro', CAST(10.50 AS Decimal(4, 2)), CAST(107.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(149.8000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1002, N'Cartucho HP 22 XL Color', CAST(10.50 AS Decimal(4, 2)), CAST(163.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(229.1100 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1003, N'Cartucho HP 641(60) Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1004, N'Cartucho HP 644 (60) Color', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1005, N'Cartucho HP 563 (121) Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1006, N'Cartucho HP 564 (122) Color', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1007, N'Cartucho HP 901 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1008, N'Cartucho HP 901 Color', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1009, N'Cartucho HP 662 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 11, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1010, N'Cartucho HP 662 Color', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 10, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1011, N'Cartucho HP 9362 (93) Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1012, N'Cartucho HP 9361 (93) Color', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1013, N'Cartucho 133 Amarillo', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1014, N'Cartucho 133 Magenta', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1015, N'Cartucho 133 Cyan ', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1016, N'Cartucho 133 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 0, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1017, N'Cartucho 135 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 0, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1018, N'Cartucho 195 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 0, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1019, N'Cartucho 196 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1020, N'Cartucho 196 Magenta', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1021, N'Cartucho 196 Cyan', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1022, N'Cartucho 196 Amarillo', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1023, N'Cartucho 39 Color', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1024, N'Cartucho 38 negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 0, 2, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1025, N'Cartucho 73 Epson Magenta', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1026, N'Cartucho 73 Epson Amarillo', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1027, N'Cartucho 73 Epson Cyan', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 0, 0, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1028, N'Cartucho 73 Epson Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 3, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1029, N'Cartucho 117 Epson Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1030, N'Cartucho 90 Epson Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 8, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1031, N'Cartucho 117 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 14, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1032, N'Cartucho 90 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 5, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1033, N'Cartucho 1051 (73) Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 18, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1034, N'Cartucho 1052 (73) Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 6, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1035, N'Cartucho 1053 (73) Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1036, N'Cartucho 1331 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 18, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1037, N'Cartucho 1332 Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 11, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1038, N'Cartucho 1333 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 13, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1039, N'Cartucho 1334 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 13, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1040, N'Cartucho 1351 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1041, N'Cartucho 46 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1042, N'Cartucho 47 Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1043, N'Cartucho 47 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1044, N'Cartucho 47 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1045, N'Cartucho 196 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1046, N'Cartucho 196 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 11, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1047, N'Cartucho 196 Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 11, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1048, N'Cartucho 196 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 2)
GO
print 'Processed 100 total records'
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1049, N'Cartucho 63 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 7, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1050, N'Cartucho 63 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 7, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1051, N'Cartucho 63 Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 7, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1052, N'Cartucho 63 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 4, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1053, N'Tinta Epson 664 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(253.3700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(354.7180 AS Decimal(12, 4)), 2, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1054, N'Tinta Epson 664 Magenta', CAST(21.00 AS Decimal(4, 2)), CAST(253.3700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(354.7180 AS Decimal(12, 4)), 2, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1055, N'Tinta Epson 664 Amarilla', CAST(21.00 AS Decimal(4, 2)), CAST(253.3700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(354.7180 AS Decimal(12, 4)), 2, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1056, N'Tinta Epson 664 Cyan', CAST(21.00 AS Decimal(4, 2)), CAST(253.3700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'5446 ', CAST(354.7180 AS Decimal(12, 4)), 2, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1057, N'Pilas 2032', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 48, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1058, N'Camara WEB Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1059, N'Control Remoto Universal', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1791', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 4, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1060, N'Portatablet c/Teclado', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'5926', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1061, N'Kit Volante PS3/PC', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1062, N'Cargador Pilas AAy AAA', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1063, N'Control Remoto Universal', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1791', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1064, N'Router TP-Link 720N', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 12)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1065, N'Transmisores FM', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1066, N'Mouse Genius Inalambrico', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1067, N'Powerbank Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 10)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1068, N'Funda Tablet', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'8165', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1069, N'Mini USB a WIFI', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 12)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1070, N'Kit Herramientas 16 Elementos', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'9166', CAST(0.0000 AS Decimal(12, 4)), 2, 0, 2, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1071, N'PAD Mouse', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1604, N'Soldador Full Energy', CAST(10.50 AS Decimal(4, 2)), CAST(114.6000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.4400 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1605, N'Soldador Full Energy Pistola', CAST(10.50 AS Decimal(4, 2)), CAST(124.0100 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(173.6140 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1606, N'Mouse Noga Inalambrico', CAST(10.50 AS Decimal(4, 2)), CAST(121.6400 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'NGM-428', CAST(170.2960 AS Decimal(12, 4)), 5, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1607, N'Mouse GTC Inalambrico', CAST(10.50 AS Decimal(4, 2)), CAST(125.8700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'MIG-786', CAST(176.2180 AS Decimal(12, 4)), 5, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1608, N'Buscapolo Full Energy', CAST(21.00 AS Decimal(4, 2)), CAST(33.1900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(46.4660 AS Decimal(12, 4)), 2, 1, 0, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1609, N'Mouse Genius NetScroll 120', CAST(10.50 AS Decimal(4, 2)), CAST(61.6900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'564', CAST(86.3660 AS Decimal(12, 4)), 2, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1610, N'Teclado Numerico Satelite', CAST(10.50 AS Decimal(4, 2)), CAST(191.8600 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'4464', CAST(268.6040 AS Decimal(12, 4)), 2, 1, 1, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1611, N'Pendrive 4GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1612, N'Pendrive 8 GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 11, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1613, N'Pendrive 16 GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1614, N'Memorias Micro SD 8GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 6, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1615, N'Memorias Micro SD 16GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1616, N'Pendrive 32 GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 4, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1617, N'Bateria 9 V Enerizer', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N' 4140', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1618, N'Pilas AA Philips', CAST(21.00 AS Decimal(4, 2)), CAST(5.1100 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1815', CAST(7.1540 AS Decimal(12, 4)), 2, 1, 12, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1619, N'Pilas AAA Philips', CAST(21.00 AS Decimal(4, 2)), CAST(4.0500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1816', CAST(5.6700 AS Decimal(12, 4)), 2, 1, 20, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1620, N'Cargadores Samsung ', CAST(21.00 AS Decimal(4, 2)), CAST(27.2900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'8160', CAST(38.2060 AS Decimal(12, 4)), 2, 1, 4, 0, 10)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1621, N'Pilas AA Recargables Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1622, N'Pilas AA Recargables Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1623, N'Cargador de Pilas', CAST(21.00 AS Decimal(4, 2)), CAST(38.1500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'217', CAST(53.4100 AS Decimal(12, 4)), 2, 1, 1, 0, 10)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1624, N'Linterna PRO1', CAST(21.00 AS Decimal(4, 2)), CAST(28.6900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'7122', CAST(40.1660 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1625, N'Kit Linternas + Pilas', CAST(21.00 AS Decimal(4, 2)), CAST(35.0900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'7143', CAST(49.1260 AS Decimal(12, 4)), 2, 1, 2, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1626, N'Pinza 6" NISUTA', CAST(21.00 AS Decimal(4, 2)), CAST(87.2000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'5677', CAST(122.0800 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1627, N'Pinza de Punta Nisuta', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1628, N'Adaptador Micro USB a HDMI', CAST(21.00 AS Decimal(4, 2)), CAST(115.1900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'8397', CAST(161.2660 AS Decimal(12, 4)), 2, 1, 2, 0, 6)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1629, N'HUB USB', CAST(21.00 AS Decimal(4, 2)), CAST(54.0600 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'7794', CAST(75.6840 AS Decimal(12, 4)), 2, 1, 3, 0, 6)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1630, N'Cartucho HP 670 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 5, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1631, N'Cartucho HP 670 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1632, N'Cartucho HP 670 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1633, N'Cartucho HP 21 XL Negro', CAST(10.50 AS Decimal(4, 2)), CAST(107.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(149.8000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1634, N'Cartucho HP 22 XL Color', CAST(10.50 AS Decimal(4, 2)), CAST(163.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(229.1100 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1635, N'Cartucho HP 641(60) Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1636, N'Cartucho HP 644 (60) Color', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1637, N'Cartucho HP 563 (121) Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1638, N'Cartucho HP 564 (122) Color', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1639, N'Cartucho HP 901 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1640, N'Cartucho HP 901 Color', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1641, N'Cartucho HP 662 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 10, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1642, N'Cartucho HP 662 Color', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 10, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1643, N'Cartucho HP 9362 (93) Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1644, N'Cartucho HP 9361 (93) Color', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1645, N'Cartucho 133 Amarillo', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1646, N'Cartucho 133 Magenta', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1647, N'Cartucho 133 Cyan ', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1648, N'Cartucho 133 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 0, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1649, N'Cartucho 135 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 0, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1650, N'Cartucho 195 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 0, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1651, N'Cartucho 196 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1652, N'Cartucho 196 Magenta', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1653, N'Cartucho 196 Cyan', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1654, N'Cartucho 196 Amarillo', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1655, N'Cartucho 39 Color', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1656, N'Cartucho 38 negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 0, 2, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1657, N'Cartucho 73 Epson Magenta', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1658, N'Cartucho 73 Epson Amarillo', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1659, N'Cartucho 73 Epson Cyan', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 0, 0, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1660, N'Cartucho 73 Epson Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 3, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1661, N'Cartucho 117 Epson Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1662, N'Cartucho 90 Epson Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 8, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1663, N'Cartucho 117 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 14, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1664, N'Cartucho 90 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 5, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1665, N'Cartucho 1051 (73) Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 18, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1666, N'Cartucho 1052 (73) Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 6, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1667, N'Cartucho 1053 (73) Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1668, N'Cartucho 1331 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 18, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1669, N'Cartucho 1332 Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 11, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1670, N'Cartucho 1333 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 13, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1671, N'Cartucho 1334 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 13, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1672, N'Cartucho 1351 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1673, N'Cartucho 46 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1674, N'Cartucho 47 Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1675, N'Cartucho 47 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1676, N'Cartucho 47 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1677, N'Cartucho 196 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1678, N'Cartucho 196 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 11, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1679, N'Cartucho 196 Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 11, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1680, N'Cartucho 196 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1681, N'Cartucho 63 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 7, 0, 2)
GO
print 'Processed 200 total records'
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1682, N'Cartucho 63 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 7, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1683, N'Cartucho 63 Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 7, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1684, N'Cartucho 63 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 4, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1685, N'Tinta Epson 664 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(253.3700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(354.7180 AS Decimal(12, 4)), 2, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1686, N'Tinta Epson 664 Magenta', CAST(21.00 AS Decimal(4, 2)), CAST(253.3700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(354.7180 AS Decimal(12, 4)), 2, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1687, N'Tinta Epson 664 Amarilla', CAST(21.00 AS Decimal(4, 2)), CAST(253.3700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(354.7180 AS Decimal(12, 4)), 2, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1688, N'Tinta Epson 664 Cyan', CAST(21.00 AS Decimal(4, 2)), CAST(253.3700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'5446 ', CAST(354.7180 AS Decimal(12, 4)), 2, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1689, N'Pilas 2032', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 48, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1690, N'Camara WEB Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1691, N'Control Remoto Universal', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1791', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 4, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1692, N'Portatablet c/Teclado', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'5926', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1693, N'Kit Volante PS3/PC', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1694, N'Cargador Pilas AAy AAA', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1695, N'Control Remoto Universal', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1791', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1696, N'Router TP-Link 720N', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 12)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1697, N'Transmisores FM', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1698, N'Mouse Genius Inalambrico', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1699, N'Powerbank Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 10)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1700, N'Funda Tablet', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'8165', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1701, N'Mini USB a WIFI', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 12)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1702, N'Kit Herramientas 16 Elementos', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'9166', CAST(0.0000 AS Decimal(12, 4)), 2, 0, 2, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1703, N'PAD Mouse', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1704, N'Protector Film 10"', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1705, N'Protector Film 8"', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1706, N'Protector Film 7"', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1707, N'Palo Selfie S/Bluetooth', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1708, N'Palo Selfie C/Bluetooth', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'8368', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1709, N'MP 3', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1710, N'Resma A4 Autor 75 Grs', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 6, 0, 13)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1711, N'Resma Oficio Autor 75 grs', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 15, 0, 13)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1712, N'Parlantes Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 5, 0, 5)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (1713, N'Papel Alta Resolucion 220 Grs', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 13)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2162, N'Soldador Full Energy', CAST(10.50 AS Decimal(4, 2)), CAST(114.6000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.4400 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2163, N'Soldador Full Energy Pistola', CAST(10.50 AS Decimal(4, 2)), CAST(124.0100 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(173.6140 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2164, N'Mouse Noga Inalambrico', CAST(10.50 AS Decimal(4, 2)), CAST(121.6400 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'NGM-428', CAST(170.2960 AS Decimal(12, 4)), 5, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2165, N'Mouse GTC Inalambrico', CAST(10.50 AS Decimal(4, 2)), CAST(125.8700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'MIG-786', CAST(176.2180 AS Decimal(12, 4)), 5, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2166, N'Buscapolo Full Energy', CAST(21.00 AS Decimal(4, 2)), CAST(33.1900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(46.4660 AS Decimal(12, 4)), 2, 1, 0, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2167, N'Mouse Genius NetScroll 120', CAST(10.50 AS Decimal(4, 2)), CAST(61.6900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'564', CAST(86.3660 AS Decimal(12, 4)), 2, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2168, N'Teclado Numerico Satelite', CAST(10.50 AS Decimal(4, 2)), CAST(191.8600 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'4464', CAST(268.6040 AS Decimal(12, 4)), 2, 1, 1, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2169, N'Pendrive 4GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2170, N'Pendrive 8 GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 11, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2171, N'Pendrive 16 GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2172, N'Memorias Micro SD 8GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 6, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2173, N'Memorias Micro SD 16GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2174, N'Pendrive 32 GB', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 4, 0, 8)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2175, N'Bateria 9 V Enerizer', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N' 4140', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2176, N'Pilas AA Philips', CAST(21.00 AS Decimal(4, 2)), CAST(5.1100 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1815', CAST(7.1540 AS Decimal(12, 4)), 2, 1, 12, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2177, N'Pilas AAA Philips', CAST(21.00 AS Decimal(4, 2)), CAST(4.0500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1816', CAST(5.6700 AS Decimal(12, 4)), 2, 1, 20, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2178, N'Cargadores Samsung ', CAST(21.00 AS Decimal(4, 2)), CAST(27.2900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'8160', CAST(38.2060 AS Decimal(12, 4)), 2, 1, 4, 0, 10)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2179, N'Pilas AA Recargables Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2180, N'Pilas AA Recargables Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2181, N'Cargador de Pilas', CAST(21.00 AS Decimal(4, 2)), CAST(38.1500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'217', CAST(53.4100 AS Decimal(12, 4)), 2, 1, 1, 0, 10)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2182, N'Linterna PRO1', CAST(21.00 AS Decimal(4, 2)), CAST(28.6900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'7122', CAST(40.1660 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2183, N'Kit Linternas + Pilas', CAST(21.00 AS Decimal(4, 2)), CAST(35.0900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'7143', CAST(49.1260 AS Decimal(12, 4)), 2, 1, 2, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2184, N'Pinza 6" NISUTA', CAST(21.00 AS Decimal(4, 2)), CAST(87.2000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'5677', CAST(122.0800 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2185, N'Pinza de Punta Nisuta', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2186, N'Adaptador Micro USB a HDMI', CAST(21.00 AS Decimal(4, 2)), CAST(115.1900 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'8397', CAST(161.2660 AS Decimal(12, 4)), 2, 1, 2, 0, 6)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2187, N'HUB USB', CAST(21.00 AS Decimal(4, 2)), CAST(54.0600 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'7794', CAST(75.6840 AS Decimal(12, 4)), 2, 1, 3, 0, 6)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2188, N'Cartucho HP 670 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 5, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2189, N'Cartucho HP 670 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2190, N'Cartucho HP 670 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2191, N'Cartucho HP 21 XL Negro', CAST(10.50 AS Decimal(4, 2)), CAST(107.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(149.8000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2192, N'Cartucho HP 22 XL Color', CAST(10.50 AS Decimal(4, 2)), CAST(163.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(229.1100 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2193, N'Cartucho HP 641(60) Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2194, N'Cartucho HP 644 (60) Color', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2195, N'Cartucho HP 563 (121) Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2196, N'Cartucho HP 564 (122) Color', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2197, N'Cartucho HP 901 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2198, N'Cartucho HP 901 Color', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2199, N'Cartucho HP 662 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 10, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2200, N'Cartucho HP 662 Color', CAST(10.50 AS Decimal(4, 2)), CAST(114.6500 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(160.5100 AS Decimal(12, 4)), 5, 1, 10, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2201, N'Cartucho HP 9362 (93) Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2202, N'Cartucho HP 9361 (93) Color', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2203, N'Cartucho 133 Amarillo', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2204, N'Cartucho 133 Magenta', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2205, N'Cartucho 133 Cyan ', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2206, N'Cartucho 133 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 0, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2207, N'Cartucho 135 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 3, 1, 0, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2208, N'Cartucho 195 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 0, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2209, N'Cartucho 196 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2210, N'Cartucho 196 Magenta', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2211, N'Cartucho 196 Cyan', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2212, N'Cartucho 196 Amarillo', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 2, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2213, N'Cartucho 39 Color', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2214, N'Cartucho 38 negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 0, 2, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2215, N'Cartucho 73 Epson Magenta', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2216, N'Cartucho 73 Epson Amarillo', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2217, N'Cartucho 73 Epson Cyan', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 0, 0, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2218, N'Cartucho 73 Epson Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 3, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2219, N'Cartucho 117 Epson Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2220, N'Cartucho 90 Epson Negro', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 4, 1, 8, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2221, N'Cartucho 117 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 14, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2222, N'Cartucho 90 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 5, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2223, N'Cartucho 1051 (73) Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 18, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2224, N'Cartucho 1052 (73) Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 6, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2225, N'Cartucho 1053 (73) Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2226, N'Cartucho 1331 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 18, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2227, N'Cartucho 1332 Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 11, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2228, N'Cartucho 1333 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 13, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2229, N'Cartucho 1334 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 13, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2230, N'Cartucho 1351 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 2)
GO
print 'Processed 300 total records'
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2231, N'Cartucho 46 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2232, N'Cartucho 47 Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2233, N'Cartucho 47 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2234, N'Cartucho 47 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2235, N'Cartucho 196 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 9, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2236, N'Cartucho 196 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 11, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2237, N'Cartucho 196 Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 11, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2238, N'Cartucho 196 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2239, N'Cartucho 63 Amarillo', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 7, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2240, N'Cartucho 63 Magenta', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 7, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2241, N'Cartucho 63 Cyan', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 7, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2242, N'Cartucho 63 Negro', CAST(10.50 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 4, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2243, N'Tinta Epson 664 Negro', CAST(21.00 AS Decimal(4, 2)), CAST(253.3700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(354.7180 AS Decimal(12, 4)), 2, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2244, N'Tinta Epson 664 Magenta', CAST(21.00 AS Decimal(4, 2)), CAST(253.3700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(354.7180 AS Decimal(12, 4)), 2, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2245, N'Tinta Epson 664 Amarilla', CAST(21.00 AS Decimal(4, 2)), CAST(253.3700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(354.7180 AS Decimal(12, 4)), 2, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2246, N'Tinta Epson 664 Cyan', CAST(21.00 AS Decimal(4, 2)), CAST(253.3700 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'5446 ', CAST(354.7180 AS Decimal(12, 4)), 2, 1, 1, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2247, N'Pilas 2032', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 48, 0, 9)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2248, N'Camara WEB Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2249, N'Control Remoto Universal', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1791', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 4, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2250, N'Portatablet c/Teclado', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'5926', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2251, N'Kit Volante PS3/PC', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2252, N'Cargador Pilas AAy AAA', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2253, N'Control Remoto Universal', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'1791', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2254, N'Router TP-Link 720N', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 12)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2255, N'Transmisores FM', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2256, N'Mouse Genius Inalambrico', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 0, 0, 3)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2257, N'Powerbank Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 3, 0, 10)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2258, N'Funda Tablet', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'8165', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2259, N'Mini USB a WIFI', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 12)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2260, N'Kit Herramientas 16 Elementos', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'9166', CAST(0.0000 AS Decimal(12, 4)), 2, 0, 2, 0, 7)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2261, N'PAD Mouse', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 8, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2262, N'Protector Film 10"', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2263, N'Protector Film 8"', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2264, N'Protector Film 7"', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2265, N'Palo Selfie S/Bluetooth', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2266, N'Palo Selfie C/Bluetooth', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'8368', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 2, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2267, N'MP 3', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 1, 0, 11)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2268, N'Resma A4 Autor 75 Grs', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 6, 0, 13)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2269, N'Resma Oficio Autor 75 grs', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 2, 1, 15, 0, 13)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2270, N'Parlantes Netmak', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 5, 0, 5)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2271, N'Papel Alta Resolucion 220 Grs', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 13)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2272, N'Papel p/foto 210 Grs', CAST(21.00 AS Decimal(4, 2)), CAST(0.0000 AS Decimal(12, 4)), CAST(40.00 AS Decimal(5, 2)), N'', CAST(0.0000 AS Decimal(12, 4)), 5, 1, 1, 0, 13)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2273, N'Articulo de prueba', CAST(21.00 AS Decimal(4, 2)), CAST(100.0000 AS Decimal(12, 4)), CAST(50.00 AS Decimal(5, 2)), N'178236', CAST(100.0000 AS Decimal(12, 4)), 1, 1, 1, 0, 2)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2274, N'articulo prueba 2', CAST(21.00 AS Decimal(4, 2)), CAST(100.0000 AS Decimal(12, 4)), CAST(50.00 AS Decimal(5, 2)), N'7867868', CAST(100.0000 AS Decimal(12, 4)), 1, 1, 0, 0, 1)
INSERT [dbo].[Articulos] ([Id], [Nombre], [IVA], [PrecioCompra], [Porcentaje], [CodigoBarra], [PrecioSugerido], [IdCuenta], [LlevaStock], [Cantidad], [BloquearPrecio], [IdCategoria]) VALUES (2275, N'asd', CAST(21.00 AS Decimal(4, 2)), CAST(100.0000 AS Decimal(12, 4)), CAST(50.00 AS Decimal(5, 2)), N'1234234234', CAST(150.0000 AS Decimal(12, 4)), 1, 0, 2, 0, 1)
SET IDENTITY_INSERT [dbo].[Articulos] OFF
/****** Object:  Table [dbo].[DetalleMovimientoCV]    Script Date: 12/28/2015 19:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleMovimientoCV](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[claveMov] [int] NOT NULL,
	[IdArticulo] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [decimal](12, 4) NOT NULL,
	[ImporteSubTotal] [decimal](12, 4) NOT NULL,
 CONSTRAINT [PK_DetalleMovimientoCV] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DetalleMovimientoCV] ON
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (15, 19, 3, 1, CAST(0.0000 AS Decimal(12, 4)), CAST(126.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (16, 19, 965, 3, CAST(0.0000 AS Decimal(12, 4)), CAST(30.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (17, 21, 2, 1, CAST(2085.7691 AS Decimal(12, 4)), CAST(2085.7691 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (18, 21, 3, 1, CAST(126.0000 AS Decimal(12, 4)), CAST(126.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (19, 21, 952, 1, CAST(160.4400 AS Decimal(12, 4)), CAST(160.4400 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (20, 22, 2, 2, CAST(100.0000 AS Decimal(12, 4)), CAST(200.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (21, 22, 966, 5, CAST(10.0000 AS Decimal(12, 4)), CAST(50.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (22, 23, 3, 1, CAST(126.0000 AS Decimal(12, 4)), CAST(126.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (23, 24, 952, 1, CAST(1.0000 AS Decimal(12, 4)), CAST(1.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (24, 24, 968, 1, CAST(1.0000 AS Decimal(12, 4)), CAST(1.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (25, 24, 969, 1, CAST(1.0000 AS Decimal(12, 4)), CAST(1.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (26, 24, 1000, 1, CAST(1.0000 AS Decimal(12, 4)), CAST(1.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (27, 25, 2, 1, CAST(2085.7691 AS Decimal(12, 4)), CAST(2085.7691 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (28, 25, 3, 1, CAST(126.0000 AS Decimal(12, 4)), CAST(126.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (29, 26, 3, 1, CAST(126.0000 AS Decimal(12, 4)), CAST(126.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (30, 26, 957, 1, CAST(86.3660 AS Decimal(12, 4)), CAST(86.3660 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (31, 27, 1009, 1, CAST(160.5100 AS Decimal(12, 4)), CAST(160.5100 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (32, 27, 958, 1, CAST(268.6040 AS Decimal(12, 4)), CAST(268.6040 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (33, 27, 960, 1, CAST(0.0000 AS Decimal(12, 4)), CAST(0.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (34, 28, 967, 1, CAST(5.6700 AS Decimal(12, 4)), CAST(5.6700 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (35, 28, 956, 1, CAST(46.4660 AS Decimal(12, 4)), CAST(46.4660 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (36, 29, 1, 1, CAST(100.0000 AS Decimal(12, 4)), CAST(100.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (37, 29, 2, 1, CAST(2085.7700 AS Decimal(12, 4)), CAST(2085.7700 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (38, 29, 3, 1, CAST(126.0000 AS Decimal(12, 4)), CAST(126.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (39, 29, 960, 1, CAST(0.0000 AS Decimal(12, 4)), CAST(0.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (40, 30, 1, 1, CAST(100.0000 AS Decimal(12, 4)), CAST(100.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (41, 31, 3, 1, CAST(5000.0000 AS Decimal(12, 4)), CAST(5000.0000 AS Decimal(12, 4)))
INSERT [dbo].[DetalleMovimientoCV] ([Id], [claveMov], [IdArticulo], [Cantidad], [PrecioUnitario], [ImporteSubTotal]) VALUES (42, 32, 2274, 1, CAST(5000.0000 AS Decimal(12, 4)), CAST(5000.0000 AS Decimal(12, 4)))
SET IDENTITY_INSERT [dbo].[DetalleMovimientoCV] OFF
/****** Object:  StoredProcedure [dbo].[SPEliminarArticulo]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEliminarArticulo] @Id INT
AS
DELETE Articulos WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPActualizarPrecioPorProveedor]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPActualizarPrecioPorProveedor] @Cuenta INT, @IdCategoria INT, @Porcentaje DECIMAL(5,2)

AS


UPDATE Articulos 
SET Porcentaje = @Porcentaje, 
	PrecioSugerido = PrecioCompra + (PrecioCompra * @Porcentaje / 100)
WHERE (IdCuenta = @Cuenta OR @Cuenta = 0) AND BloquearPrecio = 0 AND (IdCategoria = @IdCategoria OR @IdCategoria = 0)
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarArticulo]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarArticulo]  @Nombre VARCHAR(100), @IVA DECIMAL(4,2), @PrecioCompra DECIMAL(12,4), 
									  @Porcentaje DECIMAL(5,2), @CodigoBarra VARCHAR(20), @PrecioSugerido DECIMAL(12,4),
									  @IdCuenta INT, @LlevaStock BIT, @Cantidad INT, @BloquearPrecio BIT, @IdCategoria INT

AS

INSERT INTO Articulos (Nombre, IVA, PrecioCompra, Porcentaje, CodigoBarra, PrecioSugerido, IdCuenta, LlevaStock, Cantidad, BloquearPrecio, IdCategoria)
VALUES (@Nombre, @IVA, @PrecioCompra, @Porcentaje, @CodigoBarra, @PrecioSugerido, @IdCuenta, @LlevaStock, @Cantidad, @BloquearPrecio, @IdCategoria)

SELECT MAX(Id) AS Id FROM Articulos
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarMovimientoCV]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarMovimientoCV] @IdTipoMov INT, @PuntoVenta INT, @NroMov INT , @Fecha DATE, 
									    @ImporteNeto DECIMAL(12,4), @ImporteIVA DECIMAL(12,8), @IdCuenta INT, 
									    @Observacion VARCHAR(100), @CAE VARCHAR(14), @VencimientoCAE DATE,
									    @FechaContabilizacion DATE, @IdCondicionPago INT
AS

IF @NroMov = 0 
	BEGIN
		SELECT @NroMov = CASE WHEN COUNT(M.NroMov) = 0 THEN 1 ELSE MAX(M.NroMov) + 1 END 
		FROM MovimientoCV M WHERE IdTipoMov = @IdTipoMov AND PuntoVenta = @PuntoVenta
	END

INSERT INTO MovimientoCV (IdTipoMov, PuntoVenta, NroMov, Fecha, ImporteNeto, 
						  ImporteIVA, IdCuenta, Observacion, CAE, VencimientoCAE, FechaContabilizacion,
						  IdCondicionPago)
VALUES (@IdTipoMov, 
@PuntoVenta, 
@NroMov, 
@Fecha, 
@ImporteNeto, 
@ImporteIVA, 
@IdCuenta, 
@Observacion,
@CAE,
@VencimientoCAE,
@FechaContabilizacion,
@IdCondicionPago)

SELECT MAX(claveMov) AS Id FROM MovimientoCV
GO
/****** Object:  StoredProcedure [dbo].[SPListarMovimientos]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPListarMovimientos](@IdTipoMovimiento bigint)
as
begin
select IdTipoMov,PuntoVenta,NroMov,IdCuenta from MovimientoCV where IdTipoMov=@IdTipoMovimiento
end
GO
/****** Object:  StoredProcedure [dbo].[SPListarArticulosPorCuenta]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPListarArticulosPorCuenta](@IdCUenta bigint)
as
begin
select Id from Articulos where IdCuenta=@IdCUenta
end
GO
/****** Object:  StoredProcedure [dbo].[SPListarArticulos]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPListarArticulos]
AS
SELECT A.Id, A.Nombre, A.IVA, A.PrecioCompra, A.Porcentaje, A.CodigoBarra, A.PrecioSugerido, 
	   A.IdCuenta, C.Nombre AS NombreCuenta, A.LlevaStock, A.Cantidad, A.BloquearPrecio, A.IdCategoria
FROM Articulos A LEFT JOIN Cuenta C ON A.IdCuenta = C.IdCuenta
GO
/****** Object:  StoredProcedure [dbo].[SPModificarArticulo]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPModificarArticulo]  @Id INT, @Nombre VARCHAR(100), @IVA DECIMAL(4,2), @PrecioCompra DECIMAL(12,4), 
									  @Porcentaje DECIMAL(5,2), @CodigoBarra VARCHAR(20), @PrecioSugerido DECIMAL(12,4),
									  @IdCuenta INT, @LlevaStock BIT, @Cantidad INT, @BloquearPrecio BIT, @IdCategoria INT

AS
UPDATE Articulos
SET Nombre = @Nombre, 
	IVA = @IVA, 
	PrecioCompra = @PrecioCompra, 
	Porcentaje = @Porcentaje, 
	CodigoBarra = @CodigoBarra, 
	PrecioSugerido = @PrecioSugerido,
	IdCuenta = @IdCuenta,
	LlevaStock = @LlevaStock,
	Cantidad = @Cantidad,
	BloquearPrecio = @BloquearPrecio,
	IdCategoria = @IdCategoria
WHERE
	Id = @Id
GO
/****** Object:  StoredProcedure [Reportes].[SPResumenCuenta]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Reportes].[SPResumenCuenta] @CuentaDesde INT, @CuentaHasta INT,
										  @FechaDesde DATE, @FechaHasta DATE
AS
SELECT M.claveMov, M.Fecha, M.FechaContabilizacion, TM.Nombre AS Movimiento, M.PuntoVenta, 
	   M.NroMov, M.Observacion, 
	   CASE WHEN TM.Signo = 'D' THEN M.ImporteNeto + M.ImporteIVA ELSE 0 END AS Debe,
	   CASE WHEN TM.Signo = 'H' THEN M.ImporteNeto + M.ImporteIVA ELSE 0 END AS Haber,
	   C.IdCuenta, C.Nombre AS NombreCuenta, NroDocumento	
FROM MovimientoCV M 
	 LEFT JOIN TipoMovimiento TM ON M.IdTipoMov = TM.Id
	 LEFT JOIN Cuenta C ON M.IdCuenta = C.IdCuenta
WHERE M.IdCuenta BETWEEN @CuentaDesde AND @CuentaHasta
	  AND M.FechaContabilizacion BETWEEN CONVERT(VARCHAR,@FechaDesde,103) AND CONVERT(VARCHAR,@FechaHasta,103)
GO
/****** Object:  StoredProcedure [Reportes].[SPReporteArticulos]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Reportes].[SPReporteArticulos] @ArticuloDesde INT, @ArticuloHasta INT, 
												@CuentaDesde INT, @CuentaHasta INT,
												@Categoria VARCHAR(500)
AS
SELECT A.Id, A.Nombre, A.IVA, A.PrecioCompra, A.Porcentaje, A.CodigoBarra, 
	   A.PrecioSugerido, A.IdCuenta, C.Nombre NombreCuenta, A.LlevaStock, A.Cantidad,
	   A.IdCategoria, Cat.Nombre AS Nombrecategoria
FROM Articulos A 
	LEFT JOIN Cuenta C ON A.IdCuenta = C.IdCuenta
	LEFT JOIN Categoria Cat ON A.IdCategoria = Cat.Id
WHERE (A.Id BETWEEN @ArticuloDesde AND @ArticuloHasta) 
	AND (A.IdCuenta BETWEEN @CuentaDesde AND @CuentaHasta)
	AND A.IdCategoria IN (SELECT Valor FROM fATabla(@Categoria))
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerMovimiento]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerMovimiento] @IdTipoMov INT, @PuntoVenta INT, @NroMov INT, @IdCuenta INT
AS
SELECT claveMov, IdTipoMov, PuntoVenta, NroMov, Fecha, ImporteNeto, 
	   ImporteIVA, IdCuenta, Observacion, CAE, VencimientoCAE, FechaContabilizacion, IdCondicionPago
FROM MovimientoCV
WHERE IdTipoMov = @IdTipoMov AND PuntoVenta = @PuntoVenta AND NroMov = @NroMov AND IdCuenta = @IdCuenta
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerArticulo]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerArticulo] @Id INT
AS
SELECT Id, Nombre, IVA, PrecioCompra, Porcentaje, CodigoBarra, PrecioSugerido, IdCuenta, LlevaStock,
	   Cantidad, BloquearPrecio, IdCategoria
FROM Articulos
WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPVacioDetalleMovimientoCV]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPVacioDetalleMovimientoCV]
AS
SELECT  DMCV.IdArticulo, A.Nombre AS NombreArticulo ,DMCV.Cantidad, DMCV.PrecioUnitario, DMCV.ImporteSubTotal 
FROM DetalleMovimientoCV DMCV LEFT JOIN Articulos A ON DMCV.IdArticulo = A.Id
WHERE 1 = 0


 
 
 
 SELECT SUM(ISNULL(NroMov,1)) + 1 AS NroMov 
 FROM MovimientoCV WHERE IdTipoMov = 1 AND PuntoVenta = 1
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerDetalleMovimiento]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerDetalleMovimiento] @ClaveMov INT
AS
SELECT Id, claveMov, IdArticulo, Cantidad, PrecioUnitario, ImporteSubTotal
FROM DetalleMovimientoCV
WHERE claveMov = @ClaveMov
GO
/****** Object:  StoredProcedure [Reportes].[SPListarMovimientos]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Reportes].[SPListarMovimientos] @CuentaDesde INT, @CuentaHasta INT, 
											@FechaDesde DATETIME, @FechaHasta DATETIME,
											@TipoMov VARCHAR(500)
AS



SELECT M.claveMov, M.IdTipoMov, Tm.Nombre AS TipoMovimiento, M.PuntoVenta, M.NroMov, M.Fecha, M.ImporteNeto, 
	   M.ImporteIVA, M.IdCuenta, C.Nombre AS NombreCuenta, M.Observacion, M.CAE, M.VencimientoCAE,
	   DM.Id, DM.IdArticulo, A.Nombre AS NombreArticulo, DM.Cantidad, 
	   DM.PrecioUnitario, DM.ImporteSubTotal, TM.Signo
FROM MovimientoCV M 
	 LEFT JOIN TipoMovimiento TM ON M.IdTipoMov = Tm.Id
	 LEFT JOIN DetalleMovimientoCV DM ON M.claveMov = DM.claveMov
	 LEFT JOIN Articulos A On DM.IdArticulo = A.Id
	 LEFT JOIN Cuenta C ON M.IdCuenta = C.IdCuenta
WHERE M.IdCuenta >= @CuentaDesde AND M.IdCuenta <= @CuentaHasta
	  AND M.Fecha BETWEEN CONVERT(VARCHAR,@FechaDesde,103) AND CONVERT(VARCHAR,@FechaHasta,103)
	  AND M.IdTipoMov IN (SELECT Valor FROM fATABLA(@TipoMov))
GO
/****** Object:  StoredProcedure [dbo].[SPInsertarDetalleMovimiento]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInsertarDetalleMovimiento] @claveMov INT, @IdTipoMovimiento INT, @IdArticulo INT, 
													  @Cantidad INT, @PrecioUnitario DECIMAL(12,4), 
													  @ImporteSubTotal DECIMAL(12,4)
											   

AS

INSERT INTO DetalleMovimientoCV (claveMov, IdArticulo, Cantidad, PrecioUnitario, ImporteSubTotal)
VALUES (@claveMov, @IdArticulo, @Cantidad, @PrecioUnitario, @ImporteSubTotal)

DECLARE @TM_MueveStock BIT
DECLARE @TM_Signo CHAR(1)
DECLARE @Art_LlevaStock BIT


SELECT @TM_MueveStock = MueveStock, @TM_Signo = Signo FROM TipoMovimiento WHERE Id = @IdTipoMovimiento
IF	@TM_MueveStock = 1
	BEGIN
		SELECT @Art_LlevaStock = LlevaStock FROM Articulos WHERE Id = @IdArticulo
		IF @Art_LlevaStock = 1
			BEGIN
				UPDATE Articulos SET Cantidad = ISNULL(Cantidad,0) + (@Cantidad * CASE WHEN @TM_Signo = 'D' THEN 1 ELSE -1 END) WHERE Id = @IdArticulo
			END
	END

SELECT MAX(Id) FROM DetalleMovimientoCV
GO
/****** Object:  StoredProcedure [dbo].[SPImprimirMovimiento]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPImprimirMovimiento] @Id INT, @CodigoBarra VARCHAR(40)

AS

SELECT DM.Id, M.claveMov, M.IdTipoMov, M.PuntoVenta, M.NroMov,	M.Fecha, M.ImporteNeto, 
	   M.ImporteIVA, M.IdCuenta, M.Observacion,  M.CAE, M.VencimientoCAE,
	   DM.IdArticulo, DM.Cantidad, DM.PrecioUnitario, 
	   DM.ImporteSubTotal, C.Nombre AS NombreCuenta, C.NombreFantasia AS NombreFantasiaCuenta, C.IdTipoDocumento, 
	   C.NroDocumento, C.NroIngresosBrutos, C.IdLocalidad, C.Domicilio, C.NroDomicilio, C.Piso, C.Departamento, 
	   C.Proveedor, A.Nombre AS NombreArticulo, A.IVA, 
	   E.Nombre, E.NombreFantasia NombreFantasiaEmpresa, E.CUIT, E.IngresosBrutos, E.InicioActividad, 
	   E.Logo, CAFIP.Nombre AS CategoriaAFIPEmpresa,
	   CAFIPC.Nombre AS CategoriaAFIPCuenta, TM.IdTipoComprobante, TM.Nombre AS NombreMovimiento,
	   TC.Letra, @CodigoBarra AS CodBar
FROM MovimientoCV M 
	LEFT JOIN TipoMovimiento TM ON M.IdTipoMov = TM.Id
	LEFT JOIN TipoComprobante TC ON TM.IdTipoComprobante = TC.Id
	LEFT JOIN DetalleMovimientoCV DM ON M.claveMov = DM.claveMov
	LEFT JOIN Articulos A ON DM.IdArticulo = A.Id
	LEFT JOIN Cuenta C ON M.IdCuenta = C.IdCuenta
	LEFT JOIN CategoriaAFIP CAFIPC ON C.IdCategoriaAFIP = CAFIPC.IdCategoriaAFIP
	LEFT JOIN Empresas E ON E.Id = 1
	LEFT JOIN CategoriaAFIP CAFIP ON E.IdCategoriaAFIP = CAFIP.IdCategoriaAFIP
WHERE M.claveMov = @Id
GO
/****** Object:  StoredProcedure [Reportes].[SPFacturaFacturero]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Reportes].[SPFacturaFacturero] @Id INT

AS

SELECT DM.Id, M.claveMov, M.IdTipoMov, M.PuntoVenta, M.NroMov,	M.Fecha, M.ImporteNeto, 
	   M.ImporteIVA, M.IdCuenta, M.Observacion,  M.CAE, M.VencimientoCAE,
	   DM.IdArticulo, DM.Cantidad, DM.PrecioUnitario, 
	   DM.ImporteSubTotal, C.Nombre AS NombreCuenta, C.NombreFantasia AS NombreFantasiaCuenta, C.IdTipoDocumento, 
	   C.NroDocumento, C.NroIngresosBrutos, C.IdLocalidad, C.Domicilio, C.NroDomicilio, C.Piso, C.Departamento, 
	   C.Proveedor, A.Nombre AS NombreArticulo, A.IVA, 
	   E.Nombre, E.NombreFantasia NombreFantasiaEmpresa, E.CUIT, E.IngresosBrutos, E.InicioActividad, 
	   E.Logo, CAFIP.Nombre AS CategoriaAFIPEmpresa, CAFIPC.IdCategoriaAFIP AS IdCategoriaAFIPCuenta,
	   CAFIPC.Nombre AS CategoriaAFIPCuenta, TM.IdTipoComprobante, TM.Nombre AS NombreMovimiento,
	   TC.Letra, L.Nombre AS NombreLocalidad, CP.Id AS IdCondicionPago
FROM MovimientoCV M 
	LEFT JOIN TipoMovimiento TM ON M.IdTipoMov = TM.Id
	LEFT JOIN TipoComprobante TC ON TM.IdTipoComprobante = TC.Id
	LEFT JOIN DetalleMovimientoCV DM ON M.claveMov = DM.claveMov
	LEFT JOIN Articulos A ON DM.IdArticulo = A.Id
	LEFT JOIN Cuenta C ON M.IdCuenta = C.IdCuenta
	LEFT JOIN CategoriaAFIP CAFIPC ON C.IdCategoriaAFIP = CAFIPC.IdCategoriaAFIP
	LEFT JOIN Empresas E ON E.Id = 1
	LEFT JOIN CategoriaAFIP CAFIP ON E.IdCategoriaAFIP = CAFIP.IdCategoriaAFIP
	LEFT JOIN Localidad L ON C.IdLocalidad = L.Id
	LEFT JOIN CondicionPago CP ON M.IdCondicionPago = CP.Id
WHERE M.claveMov = @Id
GO
/****** Object:  StoredProcedure [dbo].[SPEliminarDetalleMovimiento]    Script Date: 12/28/2015 19:47:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPEliminarDetalleMovimiento] @ClaveMov INT
AS

SELECT
    RowNum = ROW_NUMBER() OVER(ORDER BY Id)
    ,*
INTO #DetalleMovimientoCV
FROM DetalleMovimientoCV 
WHERE claveMov = @ClaveMov

DECLARE @MaxRownum INT
SET @MaxRownum = (SELECT MAX(RowNum) FROM #DetalleMovimientoCV)

DECLARE @Iter INT
SET @Iter = (SELECT MIN(RowNum) FROM #DetalleMovimientoCV)

WHILE @Iter <= @MaxRownum
BEGIN
	DELETE DetalleMovimientoCV WHERE Id = (SELECT Id
    FROM #DetalleMovimientoCV
    WHERE RowNum = @Iter)
    SET @Iter = @Iter + 1
END


DROP TABLE #DetalleMovimientoCV
GO
/****** Object:  ForeignKey [FK_Articulos_Categoria]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([Id])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Categoria]
GO
/****** Object:  ForeignKey [FK_Articulos_Cuenta]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Cuenta] FOREIGN KEY([IdCuenta])
REFERENCES [dbo].[Cuenta] ([IdCuenta])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Cuenta]
GO
/****** Object:  ForeignKey [FK_Cuenta_CategoriaAFIP]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_CategoriaAFIP] FOREIGN KEY([IdCategoriaAFIP])
REFERENCES [dbo].[CategoriaAFIP] ([IdCategoriaAFIP])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_Cuenta_CategoriaAFIP]
GO
/****** Object:  ForeignKey [FK_Cuenta_Localidad]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Localidad] FOREIGN KEY([IdLocalidad])
REFERENCES [dbo].[Localidad] ([Id])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_Cuenta_Localidad]
GO
/****** Object:  ForeignKey [FK_Cuenta_TipoDocumento]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_TipoDocumento] FOREIGN KEY([IdTipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([IdTipoDocumento])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_Cuenta_TipoDocumento]
GO
/****** Object:  ForeignKey [FK_DetalleMovimientoCV_MovimientoCV]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[DetalleMovimientoCV]  WITH CHECK ADD  CONSTRAINT [FK_DetalleMovimientoCV_MovimientoCV] FOREIGN KEY([IdArticulo])
REFERENCES [dbo].[Articulos] ([Id])
GO
ALTER TABLE [dbo].[DetalleMovimientoCV] CHECK CONSTRAINT [FK_DetalleMovimientoCV_MovimientoCV]
GO
/****** Object:  ForeignKey [FK_Empresas_CategoriaAFIP]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[Empresas]  WITH NOCHECK ADD  CONSTRAINT [FK_Empresas_CategoriaAFIP] FOREIGN KEY([IdCategoriaAFIP])
REFERENCES [dbo].[CategoriaAFIP] ([IdCategoriaAFIP])
GO
ALTER TABLE [dbo].[Empresas] NOCHECK CONSTRAINT [FK_Empresas_CategoriaAFIP]
GO
/****** Object:  ForeignKey [FK_Impresoras_TipoComprobante]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[Impresoras]  WITH CHECK ADD  CONSTRAINT [FK_Impresoras_TipoComprobante] FOREIGN KEY([IdTipoComprobante])
REFERENCES [dbo].[TipoComprobante] ([Id])
GO
ALTER TABLE [dbo].[Impresoras] CHECK CONSTRAINT [FK_Impresoras_TipoComprobante]
GO
/****** Object:  ForeignKey [FK_Localidad_Provincia]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[Localidad]  WITH NOCHECK ADD  CONSTRAINT [FK_Localidad_Provincia] FOREIGN KEY([IdProvincia])
REFERENCES [dbo].[Provincia] ([Id])
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [FK_Localidad_Provincia]
GO
/****** Object:  ForeignKey [FK_MovimientoCV_CondicionPago]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[MovimientoCV]  WITH CHECK ADD  CONSTRAINT [FK_MovimientoCV_CondicionPago] FOREIGN KEY([IdCondicionPago])
REFERENCES [dbo].[CondicionPago] ([Id])
GO
ALTER TABLE [dbo].[MovimientoCV] CHECK CONSTRAINT [FK_MovimientoCV_CondicionPago]
GO
/****** Object:  ForeignKey [FK_MovimientoCV_Cuenta]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[MovimientoCV]  WITH CHECK ADD  CONSTRAINT [FK_MovimientoCV_Cuenta] FOREIGN KEY([IdCuenta])
REFERENCES [dbo].[Cuenta] ([IdCuenta])
GO
ALTER TABLE [dbo].[MovimientoCV] CHECK CONSTRAINT [FK_MovimientoCV_Cuenta]
GO
/****** Object:  ForeignKey [FK_MovimientoCV_TipoMovimiento]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[MovimientoCV]  WITH CHECK ADD  CONSTRAINT [FK_MovimientoCV_TipoMovimiento] FOREIGN KEY([IdTipoMov])
REFERENCES [dbo].[TipoMovimiento] ([Id])
GO
ALTER TABLE [dbo].[MovimientoCV] CHECK CONSTRAINT [FK_MovimientoCV_TipoMovimiento]
GO
/****** Object:  ForeignKey [FK_Provincia_Pais]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[Provincia]  WITH CHECK ADD  CONSTRAINT [FK_Provincia_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([Id])
GO
ALTER TABLE [dbo].[Provincia] CHECK CONSTRAINT [FK_Provincia_Pais]
GO
/****** Object:  ForeignKey [FK_TipoMovimientoCV_TipoComprobante]    Script Date: 12/28/2015 19:47:07 ******/
ALTER TABLE [dbo].[TipoMovimiento]  WITH CHECK ADD  CONSTRAINT [FK_TipoMovimientoCV_TipoComprobante] FOREIGN KEY([IdTipoComprobante])
REFERENCES [dbo].[TipoComprobante] ([Id])
GO
ALTER TABLE [dbo].[TipoMovimiento] CHECK CONSTRAINT [FK_TipoMovimientoCV_TipoComprobante]
GO
