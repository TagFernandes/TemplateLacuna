VENV = .venv
ACTIVATE = $(VENV)/bin/activate
PYTHON = $(VENV)/bin/python

install:
	python3 -m venv $(VENV)
	. $(ACTIVATE) && pip install -r requirements.txt

run:
	. $(ACTIVATE) && pip freeze > requirements.txt
	. $(ACTIVATE) && python3 app/main.py

clean:
	rm -rf $(VENV)
	rm -rf __pycache__
	rm -rf *.pyc