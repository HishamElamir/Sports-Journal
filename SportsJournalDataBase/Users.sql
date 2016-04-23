CREATE TABLE [dbo].[Users]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [username] VARCHAR(50) NOT NULL, 
    [password] VARCHAR(50) NOT NULL, 
    [email] VARCHAR(64) NOT NULL, 
    [password_reset] VARCHAR(50) NOT NULL, 
    [status] INT NOT NULL DEFAULT 1, 
    [created_at] DATE NULL, 
    [updated_at] DATE NULL, 
    [role_id] INT NOT NULL, 
    CONSTRAINT [FK_Users_ToRole] FOREIGN KEY ([role_id]) REFERENCES [Role]([id])
)
