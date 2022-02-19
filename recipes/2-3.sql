select
  ename,
  job
from
  emp
order by
  right(job, 2);
/* 別解
select
  ename,
  job
from
  emp
order by
  substring(job, length(job) - 1);
*/
