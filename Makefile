build: thesis.tex classicthesis-config.tex
	pdflatex -synctex=1 -interaction=nonstopmode thesis.tex
	bibtex thesis.aux
	pdflatex -synctex=1 -interaction=nonstopmode thesis.tex
	pdflatex -synctex=1 -interaction=nonstopmode thesis.tex

clean:
	rm -f thesis.aux thesis.bbl thesis.bcf thesis.blg thesis.fdb_latexmk thesis.fls thesis.loa thesis.lof thesis.log thesis.lol thesis.lot thesis.out thesis.pdf thesis.run.xml thesis.synctex.gz thesis.toc thesis-blx.bib

rebuild:
	$(MAKE) clean build