export PATH="/bin:/usr/bin:/usr/local/bin:/usr/sbin:/sbin:~/.node/bin:$PATH"

# Expose ruby gem folder in home directory
if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

# Load the dotfiles
for file in ~/.{aliases,env.bash,exports,functions}
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

