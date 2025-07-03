CREATE TABLE [dbo].[content] (
    [id]            UNIQUEIDENTIFIER DEFAULT (newsequentialid()) NOT NULL,
    [menu_name]     VARCHAR (25)     NOT NULL,
    [sub_menu_name] VARCHAR (25)     NULL,
    [title]         VARCHAR (50)     NOT NULL,
    [description]   VARCHAR (100)    NULL,
    [event_date]    DATE             NULL,
    [created_date]  DATE             NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_content_menu] FOREIGN KEY ([menu_name]) REFERENCES [dbo].[menu] ([menu_name]),
    CONSTRAINT [FK_content_sub_menu] FOREIGN KEY ([menu_name], [sub_menu_name]) REFERENCES [dbo].[sub_menu] ([menu_name], [sub_menu_name])
);

