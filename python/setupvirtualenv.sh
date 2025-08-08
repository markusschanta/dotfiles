pushd .
mkdir -p ~/.virtualenvs
python -m venv ~/.virtualenvs/dev
source ~/.virtualenvs/dev/bin/activate
python -m pip install -r ~/.dotfiles/python/requirements.txt
popd
