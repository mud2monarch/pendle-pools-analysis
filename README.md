# LP Profitability Analysis
The November 2022 article ["Usage of Markout to Calculate LP Profitability in Uniswap v3,"](https://crocswap.medium.com/usage-of-markout-to-calculate-lp-profitability-in-uniswap-v3-e32773b1a88e) by 0xfbifemboy, analyzes the LP profitability of LPs in the 5 bps and 30 bps USDC<>ETH Uniswap v3 pools (ETH L1).

While compelling, the findings in the article are potentially worst-case in the context of intuition and other learnings:
- ETH L1 has 12s blocks, which should lead to more toxic flow than pools with faster block times, all else equal. When blocks are shorter, there are fewer arbitrage opportunities where the value of the arbitrage is greater than the LP fee.
- USDC<>ETH 5 bps is one of the highest TVL pools, so it is likely to be a less profitable pool in which to LP (obviously there are a lot of factors at play here).
- Intuitively, because USDC<>ETH is the highest volume trading pool on Uniswap v3, the value of an *automated* market maker is at its lowest. Because the *automated* market maker is less valuable, liquidity providers are less well compensated.

We want to replicate the analysis for another asset market with more favorable characteristics for LPs. We're considering analyzing the PENDLE<>USDC pair in four variations:
|Pair|Network|Address|f dsf

|----|-------|-------|
|PENDLE<>USDC 30 bps|ETH L1|0x57af956d3e2cca3b86f3d8c6772c03ddca3eaacb|
|PENDLE<>USDC 100 bps|ETH L1|0x50fe1432a9127b25d81ba12d739b744f84111134|
|PENDLE<>USDC 30 bps|Arbitrum|0xdbaeb7f0dfe3a0aafd798ccecb5b22e708f7852c|
|PENDLE<>USDC 100 bps|Arbitrum|0xe8629b6a488f366d27dad801d1b5b445199e2ada|

The real goal for the author (@mud2monarch) is to build skills and knowledge. I expect to learn more about the following:
1. **Python:** Will use Polars and Seaborn.
2. **Uniswap:** Will likely learn about how to access pool data, the smart contract/event design, etc.
3. **Financial concepts:** Will learn about markout, LP profitability, etc.

*These are my independent thoughts and do not necessarily represent the views of my employer.*