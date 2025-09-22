WITH ordered_txn AS (
    SELECT
        transaction_id,
        merchant_id,
        credit_card_id,
        amount,
        transaction_timestamp,
        LAG(transaction_timestamp) OVER (
			PARTITION BY merchant_id,credit_card_id,amount
			ORDER BY transaction_timestamp
		) AS prev_txn_time
    FROM dpd_duplicate
)
SELECT COUNT(*) AS payment_count
FROM ordered_txn
WHERE prev_txn_time IS NOT NULL
	AND transaction_timestamp <= prev_txn_time + INTERVAL '10 minutes';

