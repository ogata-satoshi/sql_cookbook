-- 手元の Postgresql では soundex が存在しないということで動かなかった。
SELECT
  an1.a_name AS name1,
  an2.a_name AS name2,
  soundex(an1.a_name) AS Soundex_Name
FROM
  author_names AS an1
  JOIN author_names AS an2 ON soundex(an1.a_name) = soundex(an2.a_name)
  AND an1.a_name <> an2.a_name
