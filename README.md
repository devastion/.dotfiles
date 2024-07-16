<div align="center">
  <h1>.dotfiles</h1>
</div>

> [!TIP]
> Use GNU Stow to symlink the files

```sh
git clone https://github.com/devastion/dotfiles.git && brew install stow && cd ~/.dotfiles && stow . -t $HOME
```

To remove symbolic links use

```sh
cd ~/ && stow -D .
```

## How it works

`GNU Stow` by default assumes that the target directory is the parent. So if we write verbosely the command it will look like this

```sh
stow --dir=~/.dotfiles --target=~/

# or

stow -d ~/.dotfiles -t ~/
```
