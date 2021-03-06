--question 6
Select agents.city, SUM(agent_transactions.amount) AS transaction_volume
    FROM agent_transactions, agents
    WHERE (agent_transactions.when_created = DATE_TRUNC ('week', CURRENT_TIMESTAMP - interval '1 week'))
    AND agent_transactions.when_created < DATE_TRUNC('week', CURRENT_TIMESTAMP)
    GROUP BY city;