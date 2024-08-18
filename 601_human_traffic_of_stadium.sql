# Write your MySQL query statement below
# 1. visit_id hasa unique values (not id)
# 2. id increases, visit_date increase
# 3. Records with 3 or more rows with consecutive ids, number of people >= 100 for each
SELECT
    DISTINCT s1.*
FROM Stadium s1 JOIN Stadium s2 JOIN Stadium s3
ON (s1.id = s2.id - 1 AND s1.id = s3.id - 2) OR
(s1.id = s2.id + 1 AND s1.id = s3.id - 1) OR
(s1.id = s2.id + 1 AND s1.id = s3.id + 2)
WHERE s1.people >= 100 AND s2.people >= 100 AND s3.people >= 100
ORDER BY s1.visit_date ASC;
