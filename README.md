<p align="center">
  <a href="#gh-dark-mode-only" target="_blank" rel="noopener noreferrer">
    <img src=".github/assets/night.svg" alt="adonisjs.plugin.zsh">
  </a>

  <a href="#gh-light-mode-only" target="_blank" rel="noopener noreferrer">
    <img src=".github/assets/day.svg" alt="adonisjs.plugin.zsh">
  </a>
</p>

Plugin for skipping the `node` part from the `ace` command. Supports AdonisJS v5 and v6.

## Preview

![](.github/assets/preview.gif)

## Installation

#### [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)

```shell
git clone https://github.com/baliestridev/adonisjs.plugin.zsh.git $ZSH_CUSTOM/plugins/adonisjs
```

```shell
~/.zshrc
plugins=(... adonisjs)
```

#### [zinit](https://github.com/zdharma-continuum/zinit)

```shell
zinit light baliestridev/adonisjs.plugin.zsh
```

#### [zi](https://github.com/z-shell/zi)

```shell
zi light baliestridev/adonisjs.plugin.zsh
```

#### [zgenom](https://github.com/jandamm/zgenom)

```shell
zgenom load baliestridev/adonisjs.plugin.zsh
```

#### [zplug](https://github.com/zplug/zplug)

```shell
zplug baliestridev/adonisjs.plugin.zsh
```

## Usage

```shell
cd /path/to/adonisjs/project # or adonis subdirectory
ace # instead of node ace
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details.
