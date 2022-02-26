SELECT
  concat(emp1.ename, " works for ", emp2.ename) AS emps_and_mgrs
FROM
  sql_cookbook.emp AS emp1
  INNER JOIN sql_cookbook.emp AS emp2 ON emp1.mgr = emp2.empno
