CREATE TABLE [dbo].[menu] (
    [id]          UNIQUEIDENTIFIER DEFAULT (newsequentialid()) NOT NULL,
    [menu_name]   VARCHAR (25)     NOT NULL,
    [description] VARCHAR (100)    NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [UC_menu] UNIQUE NONCLUSTERED ([menu_name] ASC)
);

