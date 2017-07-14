#!/bin/bash


echo '$ node index.js bigbird88 60b725f10c9c85c70d97880dfe8191b3' | tee output.txt
node index.js bigbird88 60b725f10c9c85c70d97880dfe8191b3 |& tee -a output.txt

echo | tee -a output.txt
echo '$ node index.js theRealElmo' | tee -a output.txt
node index.js theRealElmo 60b725f10c9c85c70d97880dfe8191b3 |& tee -a output.txt
