SELECT 
	id,
	expression
FROM df_math_expr
WHERE expression ~ '(\d+(\.\d+)?[\+\-\*/\^\%\(\)]+)+\d+(\.\d+)?';
