extensions=(
    PeterJausovec.vscode-docker
    Rubymaniac.vscode-paste-and-indent
    TsumiNa.Seti-theme
    christian-kohler.path-intellisense
    dbaeumer.vscode-eslint
    donjayamanne.python
    formulahendry.auto-close-tag
    mohsen1.prettify-json
    ms-vscode.csharp
    ms-vscode.sublime-keybindings
    msjsdiag.debugger-for-chrome
    qinjia.seti-icons
    redhat.java
    robertohuertasm.vscode-icons
    yzane.markdown-pdf
)

for i in "${extensions[@]}"
do
    code --install-extension $i
done
