target: 
	java -jar ~/bin/saxon9ee.jar -o:.tmp cv.xml xsl/cv.xsl
	
	mv francais/ru* .
	pdflatex francais/cv_fr.tex
	mv cv_fr.*/francais/.tmp
	mv francais/.tmp/cv_fr.tex francais/tex
	mv francais/.tmp/cv_fr.pdf francais/
	mv francais/.tmp/cv_fr.* francais/aux
	
	pdflatex anglais/cv_en.tex
	mv cv_en.pdf .tmp/
	mv *.tex tex/
	mv cv_en.* aux/
	mv .tmp/* .
