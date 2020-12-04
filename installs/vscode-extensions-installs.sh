extensions=(
    christian-kohler.path-intellisense
    dbaeumer.vscode-eslint
    esbenp.prettier-vscode
    mrmlnc.vscode-scss
    ms-python.python
    robinbentley.sass-indented
)

for i in "${extensions[@]}"
do
    code --install-extension $i
done
