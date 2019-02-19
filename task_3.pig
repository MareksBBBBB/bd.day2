a = load 'NYSE_daily' using PigStorage('\t') as (name, listings, date:date, morning:float, midday:float, afternoon:float, evening:float, volume:int, previous_average:float)
store a into 'data/NYSE_daily' PigStorage(',');

