
## Thesis Reports

In this repository you can find the latest PDF files for the [literature report](https://github.com/GijsGroote/thesis/blob/main/literature-report/report.pdf) and the [thesis report](https://github.com/GijsGroote/thesis/blob/main/thesis-report/report.pdf).

Or compile the PDF files yourself (requires [pdflatex](https://www.latex-project.org/get/#tex-distributions)):
```bash
cd thesis-report        # or literature-report
pdflatex report.tex     # create .aux file (report will miss all references) 
pdflatex report.tex     # create .pdf file
```

## thesis presentation

An you can find the latest PDF presentation in the [thesis presentation](https://github.com/GijsGroote/thesis/blob/main/thesis-presentation/presentation.pdf).


Or compile the PDF presentation yourself:
```bash
cd thesis-presentation
make # create presentation
```
