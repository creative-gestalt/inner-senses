#!/bin/bash
cd /seth_front || exit
npm run build
serve -s dist -l 8080 \
#& cd /seth_back && node dist/main