CREATE TABLE [dbo].[gallery] (
    [id]           UNIQUEIDENTIFIER DEFAULT (newsequentialid()) NOT NULL,
    [picture_name] VARCHAR (25)     NOT NULL,
    [description]  VARCHAR (100)    NULL,
    [dimension]    VARCHAR (25)     NOT NULL,
    [type]         VARCHAR (10)     NOT NULL,
    [captured_by]  VARCHAR (25)     NOT NULL,
    CONSTRAINT [PK_gallery_pictured_id] PRIMARY KEY NONCLUSTERED ([id] ASC),
    CONSTRAINT [UC_gallery] UNIQUE NONCLUSTERED ([picture_name] ASC)
);

