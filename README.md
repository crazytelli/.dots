# Gerenciando dotfiles com git --bare

## Clonando o repositório

- usando ssh:
`git clone --bare git@github.com:crazytelli/.dots.git`

## Iniciando do zero

```
git init --bare $HOME/.cfg
alias cfg='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
cfg config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'" >> $HOME/.bashrc
```
## Importando
A etapa `alias cfg` é o importante para correta execução. Se não estiver iniciando do zero,
basta executar o alias temporariamente `alias cfg='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'`
e seguir os próximos passos.


Em seguida realizar:
`cfg checkout`

Talvez haja conflito caso já haja algum arquivo nos diretórios, para isso basta
mover essas configurações para um arquivo como `.config-backup` ou usar esse
script abaixo:

```
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```
Agora pode-se executar novamente `cfg checkout`

Importante executar também:

`cfg config --local status.showUntrackedFiles no`

A explicação pode ser vista no
[DistroTube](https://www.youtube.com/watch?v=tBoLDpTWVOM) e também no artigo
[How to manage dotfiles](https://www.atlassian.com/git/tutorials/dotfiles) que
explica passo a passo como configurar o repositório.
