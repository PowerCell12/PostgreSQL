create view view_river_info as
select concat_ws(' ', 'The river', river_name, 'flows into the', outflow, 'and is', "length", 'kilometers long.') as "River Information" from rivers order by river_name ASC;
