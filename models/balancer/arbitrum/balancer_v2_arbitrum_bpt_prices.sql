{% set blockchain = 'arbitrum' %}

{{
    config(
        schema = 'balancer_v2_arbitrum',
        alias = 'bpt_prices',        
        materialized = 'table',
        file_format = 'delta'
    )
}}


{{ 
    balancer_bpt_prices_macro(
        blockchain = blockchain
    )
}}
