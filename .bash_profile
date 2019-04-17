export PATH="/bin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:~/.node/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

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

export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
