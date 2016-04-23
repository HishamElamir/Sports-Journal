CREATE TABLE [dbo].[FeedBacks]
(
	[Id] INT NOT NULL , 
    [article_id] INT NOT NULL, 
    [user_id] INT NOT NULL, 
    [comment] TEXT NOT NULL, 
    [created_at] DATE NULL, 
    [updated_at] DATE NULL, 
    PRIMARY KEY ([Id])
)

GO

CREATE INDEX [article_id] ON [dbo].[FeedBacks] ([article_id])

GO

CREATE INDEX [user_id] ON [dbo].[FeedBacks] ([user_id])
