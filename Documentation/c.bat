@REM set home=%~dp0
@REM echo %home%
pdflatex main.tex
bibtex main
pdflatex main.tex
cls
