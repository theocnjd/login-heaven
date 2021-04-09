CREATE PROC UpdateLoginDetail
    @EmailConfirmed BIT = 0
    ,@PasswordHash VARCHAR(255)
    ,@TwoFactorEnabled BIT = 0
    ,@IsLockOut BIT = 0
    ,@LoginDetailid INT


AS


UPDATE [dbo].[tblLoginDetail]
   SET PasswordHash = HASHBYTES('SHA_512',@PasswordHash)
       ,EmailConfirmed  = @EmailConfirmed
       ,TwoFactorEnabled = @TwoFactorEnabled
       ,IsLockOut = @IsLockOut
       ,IsLockOutDate = CASE WHEN @IsLockOut = 1 THEN GETDATE() ELSE NULL END
  WHERE LoginDetailid = @LoginDetailid