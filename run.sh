#/bin/zsh

if [[ -n VIRTUAL_ENV ]]; then
	source ./env/bin/activate
else
	python -m venv env
fi

pip install -r requirements.txt

python ./src/main.py

pip freeze > requirements.txt
