USE [DigitalBankP]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 1/04/2024 2:42:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre_usuario] [varchar](100) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[sexo] [char](1) NOT NULL,
 CONSTRAINT [PK_usuaori] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Log]    Script Date: 1/04/2024 2:42:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Log](
	[id_log] [int] IDENTITY(1,1) NOT NULL,
	[codLog] [varchar](50) NULL,
	[msg] [varchar](max) NULL,
	[fecha] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Get_AllUsusario]    Script Date: 1/04/2024 2:42:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Johan Fori>
-- Create date: <20/03/2024>
-- Description:	<Procedimiento almacenado para consulta de la tabla Usuario>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AllUsusario] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id,nombre_usuario,fecha_nacimiento,sexo FROM Usuario
	WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[Get_AllUsusarios]    Script Date: 1/04/2024 2:42:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Johan Fori>
-- Create date: <20/03/2024>
-- Description:	<Procedimiento almacenado para consultar todos los usuarios>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AllUsusarios] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id,nombre_usuario,fecha_nacimiento,sexo FROM Usuario
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete_usuario]    Script Date: 1/04/2024 2:42:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Johan Fori>
-- Create date: <20/03/2024>
-- Description:	<Procedimiento almacenado para borrar datos de la tabla Usuario>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Delete_usuario] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM Usuario
	WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_usuario]    Script Date: 1/04/2024 2:42:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Johan Fori>
-- Create date: <20/03/2024>
-- Description:	<Procedimiento almacenado para ingresar datos a la tabla Usuario>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Insert_usuario] 
	-- Add the parameters for the stored procedure here
	@nombre_usuario varchar(100),
	@fecha_nacimiento date,
	@sexo char(1)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Usuario
	(nombre_usuario,fecha_nacimiento,sexo)
	VALUES(@nombre_usuario,@fecha_nacimiento,@sexo)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_usuario]    Script Date: 1/04/2024 2:42:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Johan Fori>
-- Create date: <20/03/2024>
-- Description:	<Procedimiento almacenado para actualizar datos de la tabla Usuario>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Update_usuario] 
	-- Add the parameters for the stored procedure here
	@id int,
	@nombre_usuario varchar(100),
	@fecha_nacimiento date,
	@sexo char(1)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Usuario SET
	nombre_usuario=@nombre_usuario,
	fecha_nacimiento=@fecha_nacimiento,
	sexo=@sexo
	WHERE id = @id
END
GO
