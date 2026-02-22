-- 1. Identifying High-Volatility Assets (Top 10)
-- This replaces: df %>% mutate(range = high-low) %>% arrange(desc(range))
SELECT 
    ticker, 
    Date, 
    ((High - Low) / Open) * 100 AS daily_volatility_pct
FROM daily_prices
WHERE Date > '2023-01-01'
ORDER BY daily_volatility_pct DESC
LIMIT 10;

-- 2. Calculating 5-Day Moving Average using a Window Function
-- This is a "Senior-level" SQL skill that proves you aren't a beginner.
SELECT 
    ticker, 
    Date, 
    Close,
    AVG(Close) OVER (PARTITION BY ticker ORDER BY Date ROWS BETWEEN 4 PRECEDING AND CURRENT ROW) AS moving_avg_5d
FROM daily_prices;

-- 3. Data Integrity Check: Finding Missing Price Points
-- This shows "Operations" thinking.
SELECT 
    ticker, 
    COUNT(*) as trading_days
FROM daily_prices
GROUP BY ticker
HAVING COUNT(*) < 252; -- Flags stocks with incomplete yearly data
