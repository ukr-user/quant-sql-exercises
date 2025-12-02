-- Total traded volume (shares) per symbol

SELECT
    symbol,
    SUM(quantity) AS total_quantity
FROM trades
GROUP BY symbol
ORDER BY total_quantity DESC;


-- Total traded notional (price * quantity) per symbol

SELECT
    symbol,
    SUM(quantity * price) AS total_notional
FROM trades
GROUP BY symbol
ORDER BY total_notional DESC;
