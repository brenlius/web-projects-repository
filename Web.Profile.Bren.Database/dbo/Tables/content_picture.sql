CREATE TABLE [dbo].[content_picture] (
    [id]           UNIQUEIDENTIFIER DEFAULT (newsequentialid()) NOT NULL,
    [sub_id]       UNIQUEIDENTIFIER NOT NULL,
    [sequence]     INT              NOT NULL,
    [picture_name] VARCHAR (25)     NOT NULL,
    CONSTRAINT [PK_content_content_id] PRIMARY KEY NONCLUSTERED ([id] ASC, [sub_id] ASC),
    CONSTRAINT [FK_content_picture_account] FOREIGN KEY ([sub_id]) REFERENCES [dbo].[account] ([id]),
    CONSTRAINT [FK_content_picture_content] FOREIGN KEY ([sub_id]) REFERENCES [dbo].[content] ([id]),
    CONSTRAINT [FK_content_picture_gallery] FOREIGN KEY ([picture_name]) REFERENCES [dbo].[gallery] ([picture_name])
);

