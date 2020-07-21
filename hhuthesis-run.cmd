
del hhuthesis-example.pdf
xelatex -no-pdf --interaction=nonstopmode hhuthesis-example 
bibtex hhuthesis-example
xelatex -no-pdf --interaction=nonstopmode hhuthesis-example
xelatex --interaction=nonstopmode hhuthesis-example

start "" "hhuthesis-example.pdf"

