-- Problem: Unfinished Parts (Tesla)
-- Objective: List parts that have started assembly but have no completion date.

SELECT
  part,
  assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;
