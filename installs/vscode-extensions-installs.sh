extensions=(
    christian-kohler.path-intellisense
    dbaeumer.vscode-eslint
    esbenp.prettier-vscode
    mrmlnc.vscode-scss
    ms-python.python
    ms-vscode.vscode-typescript-tslint-plugin
    ms-vsliveshare.vsliveshare
    robinbentley.sass-indented
    yzane.markdown-pdf
)

for i in "${extensions[@]}"
do
    code --install-extension $i
done
