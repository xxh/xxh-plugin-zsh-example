## Create your zsh xxh plugin
1. Fork this repo
2. Edit the plugin files:
    * `pluginrc.zsh` -  this script will be executed on the host when you connect to the host. Put here your functions, environment variables, aliases and whatever you need.
    * `build.sh` - this script should be executed to prepare the plugin on local xxh. It will be executed automatically if `build` directory is not exists.
    * `env` - see description below     
3. Replace this list to description of your xxh plugin (review other xxh plugins)
4. Push your commits and rename your repo to `xxh-plugin-zsh-yourtitle`
5. Install the plugin to your xxh home:
```
xxh +I xxh-plugin-zsh-yourtitle+git+https://github.com/yourname/xxh-plugin-zsh-yourtitle
```
6. Try connect in update mode: `xxh [user@]host[:port] +s zsh +if`

## `env` file
The xxh has seamless environment mode which allows to pass variable from your current shell session 
to the xxh host session. For example if you have `ZSH_THEME` variable with your shell color theme you shouldn't
worry about passing it manually. Add it to `env` file (one variable name per line) and you can do the magic by using `source xxh.zsh` command:
```
home> echo $ZSH_THEME
agnoster
home> source xxh.zsh myhost
myhost> echo $ZSH_THEME
agnoster
``` 
This very useful when you want to use the same tools on your local and remote host. 

## Examples
Pinned xxh zsh plugins: [ohmyzsh](https://github.com/xxh/xxh-plugin-zsh-ohmyzsh), [powerlevel10k](https://github.com/xxh/xxh-plugin-zsh-powerlevel10k)

🔎 [Search xxh plugins on Github](https://github.com/search?q=xxh-plugin-zsh&type=Repositories) or [Bitbucket](https://bitbucket.org/repo/all?name=xxh-plugin-zsh) or 💡 [Create xxh plugin](https://github.com/xxh/xxh-plugin-zsh-example)
