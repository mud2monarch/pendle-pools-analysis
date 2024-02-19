-- GoogleSQL

SELECT
  timestamp,
  symbol,
  avg(price) as price -- averaging once per timestamp (which is hella small anyways) to cut down on the # rows.
FROM `cex.binance_trades_SPOT`
where symbol in ('PENDLEUSDT', 'ETHUSDT')
group by 1, 2
order by 1 desc