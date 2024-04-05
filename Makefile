## Delete all compiled Python files
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete


## Set up python interpreter environment
create_environment:
	@if ! pyenv virtualenvs | grep -q 'birdclef2024-lewagon-1601'; then \
	    pyenv virtualenv 3.10.6 birdclef2024-lewagon-1601; \
	fi
	pyenv local birdclef2024-lewagon-1601
	pip install --upgrade pip
	pip install -r requirements.txt
