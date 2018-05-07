# automatic generation of the docs .HTML files
RMD_FILES := $(wildcard *.Rmd)
DOC_FILES := $(patsubst %.Rmd,docs/%.html,$(RMD_FILES))

all: docs solutions

docs: $(DOC_FILES)

docs/%.html: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_dir = 'docs')"
	
# automatic copying of solutions files to solutions directory
# note: keep spaces out of file names
SOLUTIONS_DIR := ../assignment-solutions/
REPO_NAME := $(patsubst assignment-%,%,$(shell basename $(CURDIR)))
EXTS := Rmd R html
SOLUTION_HTML := $(patsubst %.Rmd,docs/%.html,$(wildcard *solution*.Rmd))
SOLUTION_FILES := $(foreach ext,$(EXTS),$(patsubst %.$(ext),$(SOLUTIONS_DIR)%_$(REPO_NAME).$(ext),$(wildcard *solution*.$(ext))) $(patsubst %.$(ext),$(SOLUTIONS_DIR)%_$(REPO_NAME).$(ext),$(wildcard */*solution*.$(ext))))

solutions: $(SOLUTION_HTML) $(SOLUTION_FILES)

$(SOLUTIONS_DIR)%_$(REPO_NAME).Rmd : %.Rmd
	@cp -f -v "$<" "$@"

$(SOLUTIONS_DIR)%_$(REPO_NAME).html : %.html
	@cp -f -v "$<" "$@"

$(SOLUTIONS_DIR)%_$(REPO_NAME).R : %.R
	@cp -f -v "$<" "$@"

