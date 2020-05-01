SELECT *
FROM players
join countries
on players.country_id = countries.id
where countries.name = "日本"
and players.height >= 180
;
