TWITTER = load 'data/tw.txt' AS (USER_ID:INT, FOLLOWER_ID:INT);
GRP = GROUP TWITTER BY USER_ID;
RESULT = FOREACH GRP GENERATE group, COUNT(TWITTER);
ARBITRARY = filter RESULT by $1>2;
DUMP ARBITRARY;