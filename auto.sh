#!/bin/bash
# Script For Auto-Delegate from validator kreios 
while true
        do
                #replace cosmos1qm7knjdln0ap9fpykdu5rcajm9cf2esvp8ey2v with your own cosmosaddr
                STEAK=`gaiacli query account --chain-id=genki-2000 cosmos1qm7knjdln0ap9fpykdu5rcajm9cf2esvp8ey2v --trust-node | jq ".value.coins" | jq ".[0].amount" | bc`
                passphrase=""
                echo ""
                echo "Got ""$((STEAK - 1))"" Reward-STAKE"
                Zahl="$((STEAK - 1))"
                #replace --from "main" with your own keyname and cosmosvaloper1qm7knjdln0ap9fpykdu5rcajm9cf2esvynd3xl with the output from gaiacli keys show yourkeyname --bech=val

                echo $passphrase|gaiacli tx stake delegate --from "main" --validator "cosmosvaloper1qm7knjdln0ap9fpykdu5rcajm9cf2esvynd3xl" --chain-id "genki-2000" --amount "$Zahl""STAKE" 
                sleep 6s
                echo ""
                echo ""
                gaiacli status | jq ".[].voting_power"
                echo ""
                echo ""
                sleep 4s
        done
