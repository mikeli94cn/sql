To get the last day date in MySQL, you can use different built-in functions depending on what you mean by "last day" (the last day of the month, or literally yesterday).

1. Last Day of the Month

To get the last day of the month for any specific date or the current date, use the LAST_DAY() function. [1] (/goto?url=CAESdAHEIkXXPHRJ7CDrMd_KnHODI1uoulO9TtajMhEV6WgxoYi3-4MqhBIVZ4FnBF05SptloFq2TdHlpZpUOvwMLA30R58r8-ljLcyHVcMC4mh5B2JUWBRzwHgheKwyKIm_Apb4Y0X7_665l8rx8LoOkOrmINuv)
• For the current month:sql
SELECT LAST_DAY(CURDATE());
-- If today is 2026-11-05, this returns '2026-11-30'
Use code with caution.
• For a specific date:sql
SELECT LAST_DAY('2024-02-10');
-- Automatically handles leap years and returns '2024-02-29'
Use code with caution.

2. Yesterday (The Previous Day)

If you are looking to get the date of literally the last day that passed (yesterday), you can subtract an interval from the current date using DATE_SUB(): [1] (/goto?url=CAESfwHEIkXXEw-GDi_TrvoF83LoOlB_swJ-p9GkQg4HvDy-9gfsJ2bw1vlpvUyxwMLrozhb3wJdgDPBPo4wcGxDiO4wWfX750NFbJH0NLCw1gqoAW3EPF9ndumlIZNEe9Nrvp3tbZOb-u6zH_tz4maoTDJ9qbP32Mo7PfD4zQR4h40)
sql
SELECT DATE_SUB(CURDATE(), INTERVAL 1 DAY);
-- Returns yesterday's date (e.g., '2026-11-04')
Use code with caution.
Alternatively, you can use the shorthand subtraction operator: [1] (/goto?url=CAESoAEBxCJF1yaLWsmq8dTLwmsPvxb0Ukc26hq0Q83OvvSFJxj6rGQhu6spDg9wynYcyvtJalRf9AxFcsPLHC0yzxvuLg3fEKLgmOS9ssLfsYgjnzVsnkYKrqZFawo2Wit4DCUvgYcRYuONav_lGxjDo9kxBUFXZMNwzyZBtX0vuhxZ29W7Sp7c5FYOVDLHNr1fJpMFaNox2rtIzuS3lR8oqgZS)
sql
SELECT CURDATE() - INTERVAL 1 DAY;
Use code with caution.
Which one of these matches what you are trying to build? If you are trying to calculate the last day of a year, quarter, or week, let me know so I can give you the exact query!
