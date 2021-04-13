default:
	make pdf

# File gen
report.dvi: report.tex
	platex -interaction=nonstopmode -shell-escape report.tex > /dev/null
	platex -interaction=nonstopmode -shell-escape report.tex > /dev/null

report.pdf: report.dvi
	dvipdfmx -f ptex-ipaex.map report.dvi

# Commands
pdf:
	make report.pdf && make clean

clean:
	rm -f *.log *.aux *.cls *.dvi