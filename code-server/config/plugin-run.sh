#! /bin/bash
set -eux
echo "安装插件开始"
/usr/local/bin/code-server	--install-extension /config/vsix/MS-CEINTL.vscode-language-pack-zh-hans-1.51.2.vsix
/usr/local/bin/code-server	--install-extension /config/vsix/k--kato.intellij-idea-keybindings-0.2.41.vsix
/usr/local/bin/code-server	--install-extension /config/vsix/vscjava.vscode-java-pack-0.12.1.vsix
/usr/local/bin/code-server	--install-extension /config/vsix/Pivotal.vscode-boot-dev-pack-0.0.8.vsix
/usr/local/bin/code-server	--install-extension /config/vsix/richardwillis.vscode-gradle-extension-pack-0.0.2.vsix
/usr/local/bin/code-server	--install-extension /config/vsix/donjayamanne.git-extension-pack-0.1.3.vsix
echo "安装插件完成"