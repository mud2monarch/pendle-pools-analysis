-- Dune.com
-- just note that much of the development for this code was done in dune.
select
    block_time,
    token_bought_amount,
    token_bought_symbol,
    token_sold_amount,
    token_sold_symbol,
    tx_hash,
    case
        when project_contract_address = 0x57af956d3e2cca3b86f3d8c6772c03ddca3eaacb then 'L1_30bps'
        when project_contract_address = 0x50fe1432a9127b25d81ba12d739b744f84111134 then 'L1_100bps'
        when project_contract_address = 0xdbaeb7f0dfe3a0aafd798ccecb5b22e708f7852c then 'ARB_30bps'
        when project_contract_address = 0xe8629b6a488f366d27dad801d1b5b445199e2ada then 'ARB_100bps'
    end as pool,
    case
        when token_bought_symbol = 'PENDLE' THEN token_sold_amount / token_bought_amount
        when token_sold_symbol = 'PENDLE' THEN token_bought_amount / token_sold_amount
    end as DEX_PENDLE_WETH_px
from dex.trades
where project_contract_address in (
    0x57af956d3e2cca3b86f3d8c6772c03ddca3eaacb, -- PENDLE<>WETH 30 bps	ETH L1	
    0x50fe1432a9127b25d81ba12d739b744f84111134, -- PENDLE<>WETH 100 bps	ETH L1	
    0xdbaeb7f0dfe3a0aafd798ccecb5b22e708f7852c, -- PENDLE<>WETH 30 bps	Arbitrum	
    0xe8629b6a488f366d27dad801d1b5b445199e2ada -- PENDLE<>WETH 100 bps	Arbitrum
    )
    and block_time between cast('2024-01-28' as date) and cast('2024-02-18' as date)
order by 1
