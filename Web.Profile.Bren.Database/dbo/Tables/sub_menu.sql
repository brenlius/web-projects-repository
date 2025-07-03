CREATE TABLE [dbo].[sub_menu] (
    [id]            UNIQUEIDENTIFIER DEFAULT (newsequentialid()) NOT NULL,
    [menu_name]     VARCHAR (25)     NOT NULL,
    [sub_menu_name] VARCHAR (25)     NOT NULL,
    [description]   VARCHAR (100)    NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_sub_menu_menu] FOREIGN KEY ([menu_name]) REFERENCES [dbo].[menu] ([menu_name]),
    CONSTRAINT [UC_sub_menu] UNIQUE NONCLUSTERED ([menu_name] ASC, [sub_menu_name] ASC)
);

