select salary.PlayerName,
  salary.SeasonStartYear,
  round(PTS/G, 2) as PPG,
  round(TRB/G, 2) as REB, 
  round(AST/G, 2) as AST, 
  round(STL/G, 2) as STL, 
  round(BLK/G, 2) as BLK, 
  round(TOV/G, 2) as TOV, 
round(ifnull(PTS/nullif(2*(FGA + 0.44*FTA),0),0), 2) as `TS%`, 
round((PTS+AST+TRB+STL+BLK-TOV*2)*4*(ifnull(PTS/nullif(2*(FGA + 0.44*FTA),0),0))/G, 2) as PerformanceMetric,
InflationAdjSalary, Tm as Team, Pos as Position, Age
from `nba-stats-491805.NBA_data.Stats` as stats
inner join `nba-stats-491805.NBA_data.Salary` as salary
on salary.PlayerName=stats.Player AND salary.SeasonStartYear=stats.Season
where salary.SeasonStartYear>=2010
order by PerformanceMetric DESC
