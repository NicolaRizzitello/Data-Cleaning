----------------------------------------------------------------------------------------
--Populate Team data
select a.name, a.team, b.name, b.team, ISNULL(a.team,b.team)
from athlete_events a
join athlete_events b
	on a.name = b.name
	and a.[ID] = b.[ID]
where a.team is null;

Update a
set Team = ISNULL(a.Team,b.Team)
from athlete_events a
join athlete_events b
	on a.name = b.name
	and a.[ID]=b.[ID]
where a.Team is null;

select name, team
from athlete_events
where team is null;

----------------------------------------------------------------------------------------
--Breaking out Games into Individual Columns (Year, Season)
select Games
from athlete_events; 

select Games,
SUBSTRING(Games, 1, CHARINDEX(',',Games) -1) as Year,
SUBSTRING(Games, CHARINDEX(',',Games) +1, len(Games)) as Season
from athlete_events;

Alter Table athlete_events
Add y Nvarchar(255);

Update athlete_events
set y = SUBSTRING(Games, 1, CHARINDEX(',',Games) -1);

Alter Table athlete_events
Add Season Nvarchar(255);

Update athlete_events
set Season = SUBSTRING(Games, CHARINDEX(',',Games) +1, len(Games));

select * from athlete_events;

----------------------------------------------------------------------------------------
--Change Y and N to Yes and No in "Medal" field
select Distinct(Medal), count(Medal)
from athlete_events
group by Medal
order by 2

select Medal
, case when Medal= 'Y' then 'Yes'
 	   when Medal = 'N' then 'No'
	   else Medal
	   end
from athlete_events

Update athlete_events
SET Medal = case when Medal= 'Y' then 'Yes'
 	   when Medal = 'N' then 'No'
	   else Medal
	   end