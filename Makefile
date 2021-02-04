PYTHON := python
VENV := venv
KERNEL := of-venv
NOTEBOOK := analysis.ipynb

start: install
	jupyter notebook $(NOTEBOOK)

run: install
	# nbconvert runs in the directory of the notebook
	EXPORT_LATEX=1 jupyter nbconvert --to notebook --stdout --execute $(NOTEBOOK)

install: requirements.txt
	$(PYTHON) -m pip install -r requirements.txt
	$(PYTHON) -m IPython kernel install --user --name=$(KERNEL)

requirements.txt: requirements.in
	$(PYTHON) -m pip install pip-tools
	$(PYTHON) -m piptools compile requirements.in

nb-clean: $(NOTEBOOK)
	$(PYTHON) -m pip install nb-clean
	$(PYTHON) -m nb_clean clean $(NOTEBOOK)

$(VENV):
	virtualenv -p 3.8 $@

clean:
	-jupyter kernelspec uninstall $(KERNEL)
	-rm -r $(VENV)

.PHONY: start run install nb-clean clean
