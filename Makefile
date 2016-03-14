.SHELLFLAGS = -e
.PHONY: docker-build
.NOTPARALLEL:

default: slideshow

slideshow:
	jupyter nbconvert apscheduler.ipynb --to slides

serve:
	jupyter nbconvert apscheduler.ipynb --to slides --post serve
