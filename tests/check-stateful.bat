@ECHO OFF
REM Simple check of a stateful encoding.
REM Usage: check-stateful.bat SRCDIR CHARSET

.\iconv -f %2 -t UTF-8 < %1\%2-snippet > tmp-snippet
fc %1\%2-snippet.UTF-8 tmp-snippet
.\iconv -f UTF-8 -t %2 < %1\%2-snippet.UTF-8 > tmp-snippet
fc %1\%2-snippet tmp-snippet
del tmp-snippet