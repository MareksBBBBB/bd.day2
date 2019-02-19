teksts = load 'data/words.txt' as (line);
words = foreach teksts generate flatten(TOKENIZE(line)) as word;
substr = foreach words generate SUBSTRING(word, 0, 1) as letter;
grouped = group substr by letter;
result = foreach grouped generate group, COUNT(substr);
dump result; 




