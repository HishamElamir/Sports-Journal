CREATE TABLE [dbo].[ArticleTags]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [article_id] INT NOT NULL, 
    [tag_id] INT NOT NULL, 
    CONSTRAINT [FK_ArticleTags_ToArticles] FOREIGN KEY ([article_id]) REFERENCES [Articles]([id]), 
    CONSTRAINT [FK_ArticleTags_ToTags] FOREIGN KEY ([tag_id]) REFERENCES [Tags]([id])
)
