CREATE TABLE [dbo].[content_message] (
    [id]       UNIQUEIDENTIFIER DEFAULT (newsequentialid()) NOT NULL,
    [sub_id]   UNIQUEIDENTIFIER NOT NULL,
    [sequence] INT              NOT NULL,
    [type]     VARCHAR (20)     NOT NULL,
    [message]  NVARCHAR (MAX)   NOT NULL,
    CONSTRAINT [PK_content_message_content_message_id] PRIMARY KEY NONCLUSTERED ([id] ASC, [sub_id] ASC),
    CONSTRAINT [FK_content_message_account] FOREIGN KEY ([sub_id]) REFERENCES [dbo].[account] ([id]),
    CONSTRAINT [FK_content_message_content] FOREIGN KEY ([sub_id]) REFERENCES [dbo].[content] ([id])
);

