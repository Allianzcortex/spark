-- This file is automatically generated by LogicalPlanToSQLSuite.
SELECT key, value,
MAX(value) OVER (PARTITION BY key % 5 ORDER BY key DESC) AS max
FROM parquet_t1 GROUP BY key, value HAVING key > 5
--------------------------------------------------------------------------------
SELECT `gen_attr` AS `key`, `gen_attr` AS `value`, `gen_attr` AS `max` FROM (SELECT `gen_attr`, `gen_attr`, `gen_attr` FROM (SELECT gen_subquery_1.`gen_attr`, gen_subquery_1.`gen_attr`, gen_subquery_1.`gen_attr`, max(`gen_attr`) OVER (PARTITION BY `gen_attr` ORDER BY `gen_attr` DESC RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS `gen_attr` FROM (SELECT `gen_attr`, `gen_attr`, (`gen_attr` % CAST(5 AS BIGINT)) AS `gen_attr` FROM (SELECT `key` AS `gen_attr`, `value` AS `gen_attr` FROM `default`.`parquet_t1`) AS gen_subquery_0 GROUP BY `gen_attr`, `gen_attr` HAVING (`gen_attr` > CAST(5 AS BIGINT))) AS gen_subquery_1) AS gen_subquery_2) AS parquet_t1
