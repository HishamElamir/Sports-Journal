CREATE TABLE [dbo].[Articles]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [title] VARCHAR(50) NOT NULL, 
    [slug] VARCHAR(50) NULL, 
    [body] TEXT NOT NULL, 
    [img_url] VARCHAR(100) NULL, 
    [status] INT NOT NULL DEFAULT 1, 
    [created_at] DATE NULL, 
    [updated_at] DATE NULL
)

GO


CREATE COLUMNSTORE INDEX [CStoreIX_ArticlesSlug] ON [dbo].[Articles] ([slug])
