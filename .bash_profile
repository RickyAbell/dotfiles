export PATH="/bin:/usr/bin:/usr/local/bin:/usr/sbin:/sbin:~/.node/bin:$PATH"

# Load the dotfiles
for file in ~/.{aliases,env.bash,exports,functions}
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

