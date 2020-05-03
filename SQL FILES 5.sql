--QUESTION 5
SELECT SUM(
            CASE
            WHEN amount < 0 THEN
                1
            ELSE
                0
            END
        ) AS "net_depositors_count",
            SUM(
            CASE
            WHEN amount > 0 THEN
                1
            ELSE
                0
            END
        ) AS "net_withdrawers_count"
        FROM agent_transactions
        WHERE (when_created >= DATE_TRUNC('week', CURRENT_TIMESTAMP -interval '1 week'))
        AND  (when_created<DATE_TRUNC('week', CURRENT_TIMESTAMP));