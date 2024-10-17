@echo off
:: requirements.bat - Installiert alle erforderlichen Python-Pakete und Tools

:: Überprüft, ob Python installiert ist
python --version >nul 2>&1
IF ERRORLEVEL 1 (
    echo Python ist nicht installiert. Bitte installiere Python 3.x und versuche es erneut.
    pause
    exit /b
)

:: Aktualisiert pip auf die neueste Version
echo Aktualisiere pip...
python -m pip install --upgrade pip

:: Installiert die erforderlichen Bibliotheken
set LIBRARIES=scapy nmap netifaces pywifi speedtest-cli requests networkx matplotlib ttkthemes sqlite3 torch transformers pandas

for %%L in (%LIBRARIES%) do (
    echo Installiere %%L...
    python -m pip install %%L
)

echo Alle Bibliotheken wurden erfolgreich installiert.
pause
