-- GoogleSQL

SELECT
  timestamp,
  symbol,
  price
FROM `cex.binance_trades_SPOT`
where symbol in ('PENDLEUSDT', 'USDCUSDT')
order by 1 desc