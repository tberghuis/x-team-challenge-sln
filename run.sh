#!/bin/bash


echo '$ node index.js bigbird88 60b725f10c9c85c70d97880dfe8191b3' | tee output.txt
node index.js bigbird88 60b725f10c9c85c70d97880dfe8191b3 |& tee -a output.txt

echo | tee -a output.txt
echo '$ node index.js theRealElmo' | tee -a output.txt
node index.js theRealElmo |& tee -a output.txt

echo | tee -a output.txt
echo '$ node index.js alice 3b5d5c3712955042212316173ccf37be' | tee -a output.txt
node index.js alice 3b5d5c3712955042212316173ccf37be |& tee -a output.txt

echo | tee -a output.txt
echo '$ node index.js bigbird88' | tee -a output.txt
node index.js bigbird88 |& tee -a output.txt
