## Delete all compiled Python files
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete


## Set up python interpreter environment
create_environment:
	@if ! pyenv virtualenvs | grep -q 'birdclef'; then \
	    pyenv virtualenv 3.10.6 birdclef; \
	fi
	pyenv local birdclef
	pip install --upgrade pip
	pip install -r requirements.txt
