data = load 'numbers.txt' as (nmbr:int);

grpd = group data all;

aggs = foreach grpd generate
         MIN(data.nmbr) as min,
         AVG(data.nmbr) as avg,
         MAX(data.nmbr) as max;

aggd = foreach data generate nmbr, aggs.min, aggs.avg, aggs.max;

dump aggd;

