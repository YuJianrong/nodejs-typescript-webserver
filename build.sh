#!bash

# copy static files
cp src/lib.d.ts ./bin/
cp src/typescript.js ./bin/

# compile FileServer
tsc --out ./bin/FileServer.js src/FileServer.ts

