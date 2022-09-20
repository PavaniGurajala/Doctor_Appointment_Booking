/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [user_id]
      ,[first_name]
      ,[last_name]
      ,[email]
      ,[password]
  FROM [AppointmentDB].[dbo].[Register_Details]