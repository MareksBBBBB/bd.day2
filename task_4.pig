teksts = load 'data/words.txt' as (line);
words = foreach teksts generate flatten(TOKENIZE(line)) as word;
grrp = group words by word;
cont = foreach grrp generate group, COUNT(words);
dump cont;


