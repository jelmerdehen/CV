CV ?= jelmerdehen

build:
	touch out.xmpdata
	xelatex -jobname=out -shell-escape -output-driver="xdvipdfmx -z 0" $(CV).tex
	exiftool -all= -overwrite_original out.pdf
	qpdf --linearize --replace-input out.pdf
	mv out.pdf $(CV).pdf

clean:
	rm -fv out.* pdfa.xmpi
