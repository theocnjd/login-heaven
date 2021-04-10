

CREATE TABLE tblLoginDetail
    (
        LoginDetailid int constraint[PK_LoginDetailid] PRIMARY KEY IDENTITY(1,1),
        Email varchar(max)  CONSTRAINT[UQ_LoginDetail_Email] not null,
        EmailConfirmed BIT CONSTRAINT[DF_LoginDetail_EmailConfirmed] default(0),
        PasswordHash NVARCHAR(max),
        TwoFactorEnabled BIT CONSTRAINT[DF_LoginDetail_TwoFactorEnabled] default(0),
        IsLockOut BIT CONSTRAINT[DF_LoginDetail_IsLockOut] default(0),
        IsLockOutDate DATETIME,
        CreatedDate DATETIME CONSTRAINT[DF_LoginDetail_CreatedDate0] DEFAULT(Getdate())
    )
