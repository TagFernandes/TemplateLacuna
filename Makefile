VENV = venv
ACTIVATE = $(VENV)/bin/activate
PYTHON = $(VENV)/bin/python

install:
	python3 -m venv $(VENV)
	. $(ACTIVATE) && pip install -r requirements.txt

run:
	. $(ACTIVATE) && ./app/python3 main.py

clean:
	rm -rf $(VENV)
	rm -rf __pycache__
	rm -rf *.pyc

print:
	echo "teste"