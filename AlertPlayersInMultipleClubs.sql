USE [msdb]
GO

/************************************* 
Object:  Alert [PlayersInMultipleTeams]    
Script Date: 8/11/2018 1:09:30 PM 
*************************************/

EXEC msdb.dbo.sp_add_alert @name=N'PlayersInMultipleMovie', 
		@message_id=0, 
		@severity=10, 
		@enabled=1, 
		@delay_between_responses=1800, 
		@include_event_description_in=1, 
		@notification_message=N'Players playing in multiple Teams Failed ', 
		@event_description_keyword=N'Players playing in multiple Teams Failed', 
		@category_name=N'[Uncategorized]', 
		@job_id=N'00000000-0000-0000-0000-000000000000'
GO