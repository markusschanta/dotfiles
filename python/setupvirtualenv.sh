pushd .
mkdir -p ~/.pyenvs
mkvirtualenv -a ~/.pyenvs python
pip install -r ~/.dotfiles/python/requirements.txt
popd
