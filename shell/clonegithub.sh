mkdir -p ~/Coding/GitHub/
cd ~/Coding/GitHub/
curl -s https://api.github.com/users/adebar/repos | ruby -rubygems -e 'require "json"; JSON.load(STDIN.read).each { |repo| %x[git clone #{repo["ssh_url"]} ]}'
