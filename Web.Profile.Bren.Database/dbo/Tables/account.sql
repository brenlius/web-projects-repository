CREATE TABLE [dbo].[account] (
    [id]         UNIQUEIDENTIFIER DEFAULT (newsequentialid()) NOT NULL,
    [first_name] VARCHAR (25)     NOT NULL,
    [last_name]  VARCHAR (25)     NOT NULL,
    [job_title]  VARCHAR (50)     NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [UC_user] UNIQUE NONCLUSTERED ([first_name] ASC, [last_name] ASC)
);

