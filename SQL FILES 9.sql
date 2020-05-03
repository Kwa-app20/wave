--question 9
SELECT agents.country,
COUNT(agent_transactions.amount) , transfer.kind AS transfer_kind,
COUNT(DISTINCT(transfer.transfer_id)) 
FROM transfer, agents, agent_transactions
WHERE (agent_transactions.when_created >= DATE_TRUNC('week', CURRENT_TIMESTAMP - interval '1 week'))
AND agent_transactions.when_created < DATE_TRUNC('week', CURRENT_TIMESTAMP)
GROUP BY country, kind, city;