a = load 'NYSE_daily' using PigStorage('\t') as (name, listings, date:date, morning:float, midday:float, afternoon:float, evening:float, volume:int, previous_average:float)
describe a;


