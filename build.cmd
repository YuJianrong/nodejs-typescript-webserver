@echo off

rem copy static files
copy /y .\src\lib.d.ts .\bin\
copy /y .\src\typescript.js .\bin\

rem compile FileServer
tsc --out ./bin/FileServer.js src/FileServer.ts

