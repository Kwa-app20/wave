--question 10
select transfer.source_wallet_id, transfer send_amount_scalar from transfer
where send_amount_currency = 'CFA'
and send_amount_scalar > 10000000