# dev-config

## Setup

### Linux

```
# setup everything use Stow
$ brew install stow
# or
$ sudo apt install stow
# e.g: stow nvim
```

### Window

```
# FZF
$ choco install fzf
$ Install-Module -Name PSFzf -RequiredVersion 2.5.14
# replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:
$ Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
```

