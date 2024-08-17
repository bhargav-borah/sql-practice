CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N - 1;
  RETURN (
      SELECT DISTINCT salary -- if there's a tie between two salaries, then both should have the same rank
      FROM Employee
      ORDER BY salary DESC
      LIMIT 1 OFFSET N
  );
END;
