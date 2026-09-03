@echo off
REM ============================================================
REM  Iniciar Totem - Operacao CSI
REM  Abre o index.html em modo kiosk, com impressao automatica
REM  (sem o dialogo de impressao do navegador).
REM ============================================================

set "PASTA=%~dp0"
set "ARQUIVO=%PASTA%index.html"

set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
set "CHROME_X86=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
set "EDGE=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
set "EDGE_X64=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"

if exist "%CHROME%" (
    start "" "%CHROME%" --kiosk --kiosk-printing --disable-pinch --overscroll-history-navigation=0 "%ARQUIVO%"
    goto :eof
)
if exist "%CHROME_X86%" (
    start "" "%CHROME_X86%" --kiosk --kiosk-printing --disable-pinch --overscroll-history-navigation=0 "%ARQUIVO%"
    goto :eof
)
if exist "%EDGE%" (
    start "" "%EDGE%" --kiosk --kiosk-printing --disable-pinch --overscroll-history-navigation=0 "%ARQUIVO%"
    goto :eof
)
if exist "%EDGE_X64%" (
    start "" "%EDGE_X64%" --kiosk --kiosk-printing --disable-pinch --overscroll-history-navigation=0 "%ARQUIVO%"
    goto :eof
)

echo Nao foi possivel encontrar o Chrome ou o Edge instalados nos caminhos padrao.
echo Abra manualmente e ajuste os caminhos deste arquivo .bat.
pause
