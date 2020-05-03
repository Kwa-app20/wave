--question 8
SELECT agents.country, SUM(transfer.send_amount_scalar) AS transaction_scalar,transfer.kind  AS transfer_kind
FROM transfer, agents, agent_transactions
WHERE (agent_transactions.when_created >= DATE_TRUNC('week', CURRENT_TIMESTAMP - interval '1 week'))
AND agent_transactions.when_created < DATE_TRUNC('week', CURRENT_TIMESTAMP)
GROUP BY country, kind, city;