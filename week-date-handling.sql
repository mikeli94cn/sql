select now();
select DATE_FORMAT(now(), "%x-%v");
select CONCAT(DATE_FORMAT(now(), "%x-%v"), ' Monday');
select STR_TO_DATE(CONCAT(DATE_FORMAT(now(), "%x-%v"), ' Monday'), '%x-%v %w'); -- week_start_date
select DATE_ADD(STR_TO_DATE(CONCAT(DATE_FORMAT(now(), "%x-%v"), ' Monday'), '%x-%v %w'), INTERVAL 6 DAY); -- week_end_date
