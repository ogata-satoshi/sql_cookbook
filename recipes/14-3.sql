SELECT
  substr(
    msg,
    instr(msg, '[', 1, 1) + 1,
    instr(msg, ']', 1, 1) - instr(msg, '[', 1, 1) -1
  ) AS first_val,
  substr(
    msg,
    instr(msg, '[', 1, 2) + 1,
    instr(msg, ']', 1, 2) - instr(msg, '[', 1, 2) -1
  ) AS first_val,
  substr(
    msg,
    instr(msg, '[', 1, 3) + 1,
    instr(msg, ']', 1, 3) - instr(msg, '[', 1, 3) -1
  ) AS first_val,
FROM
  sql_cookbook.V
