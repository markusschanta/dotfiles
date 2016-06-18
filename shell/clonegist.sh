pushd .
mkdir -p ~/Coding/Gist/
cd ~/Coding/Gist/
curl -s https://api.github.com/users/adebar/gists | ruby -rubygems -e 'require "json"; require "shellwords"; JSON.load(STDIN.read).each { |repo| dir = (repo["description"] + " - " + repo["id"]).shellescape ; %x[ mkdir -p #{dir} ; cd #{dir} ; git clone #{repo["git_pull_url"]} . ]}'
popd
