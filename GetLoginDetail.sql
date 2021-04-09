CREATE PROC GetLoginDetail
@email VARCHAR(255)

AS 

SELECT LoginDetailid
      ,Email
      ,EmailConfirmed
      ,PasswordHash
      ,[TwoFactorEnabled]
      ,[IsLockOut]
      ,[IsLockOutDate]
 FROM tblLoginDetail
 WHERE Email = @email