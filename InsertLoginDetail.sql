CREATE PROC InsertLoginDetail
@email VARCHAR(255)
,@PasswordHash VARCHAR(255)


AS 

INSERT tblLoginDetail
     ( [Email]
      ,[PasswordHash]
      )


SELECT @email
      , HASHBYTES('SHA2_512', @PasswordHash)