#!/bin/bash


echo '$ node --inspect-brk index.js bigbird88 60b725f10c9c85c70d97880dfe8191b3' | tee output.txt
node --inspect-brk index.js bigbird88 60b725f10c9c85c70d97880dfe8191b3 |& tee -a output.txt

