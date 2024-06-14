setup:
	virtualenv venv

install:
	source ./venv/bin/activate && \
	pip install --upgrade twine && \
	pip install --upgrade build

build:
	source ./venv/bin/activate && \
	python -m build && \
	twine check dist/*

publish-test:
	source ./venv/bin/activate && \
	python -m twine upload --repository testpypi dist/*

publish:
	source ./venv/bin/activate && \
	python -m twine upload dist/*
