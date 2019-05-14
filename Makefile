target: 
	java -jar saxon9he.jar -o:.tmp cv.xml xsl/cv.xsl
	
	mv francais/cv_fr.tex .
	mv francais/ru* .
	pdflatex cv_fr.tex
	mv ru* francais/tex
	mv cv_fr.tex francais/tex
	mv cv_fr.pdf francais
	mv cv_fr.* francais/aux
	
	mv anglais/cv_en.tex .
	mv anglais/ru* .
	pdflatex cv_en.tex
	mv ru* anglais/tex
	mv cv_en.tex anglais/tex
	mv cv_en.pdf anglais
	mv cv_en.* anglais/aux
