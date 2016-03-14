.SHELLFLAGS = -e
.PHONY: docker-build
.NOTPARALLEL:

default: slideshow

slideshow:
	jupyter nbconvert apscheduler.ipynb --to slides --stdout > index.html

serve:
	jupyter nbconvert apscheduler.ipynb --to slides --post serve
