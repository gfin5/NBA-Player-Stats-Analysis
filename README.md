# NBA-Player-Stats-Analysis
An Analysis of NBA player data using BigQuery/SQL and Excel

This is a personal project to demonstrate proficiency with BigQuery, SQL, and Excel Dashboards. The data is from Kaggle and can be found in the 'data' folder. The raw data includes player statistics and information such as age and position in each year since 1950 and going until 2022. The other file I used included player salaries and inflation-adjusted salaries. The goal of this project was to find a metric to base players' contract value on and give assessment of different archetypes of players based on it.

Data was cleaned in Excel. I needed to remove duplicate rows in both files. Then, I moved the data to BigQuery, where I:
- Joined both files
- Narrowed the data to since 2010
- Defined a metric for player performance (PTS+REB+AST+STL+BLK-2*TOV)*TS%
- Grouped the player positions by their primary position

I exported the results to Excel and made the Dashboard. The Dashboard has charts based on contract value, which I defined as their performance metric divided by their inflation-adjusted salary. Additionally it has a list of the top 10 players in the performance metric based on the slicers.

# Results
- There is a positive correlation between a player's performance and their salary
- The highest contract value age is 23, likely because the players are at the end of their rookie-scale contract, but are playing better with a few years of experience
- Young players have very high contract value with the exception of point guards, who may have difficulty adapting their game to the pace of the league
- The point guards do make up for it as they are the highest contract value position starting at age 22, either because they have adjusted to the league or the ones who haven't have been weeded out
- 2019 was a very talented year in the league, with two of the top three years by performance (Giannis Antetokounmpo and James Harden) and the highest average performance since 2010
