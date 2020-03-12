# Create your zsh xxh plugin
1. Fork this repo
2. Edit the plugin files:
    * `pluginrc.zsh` -  this script will be executed on the host when you connect to the host. Put here your functions, environment variables, aliases and whatever you need.
    * `build.xsh` - this script should be executed to prepare the plugin on local xxh. It will be executed automatically if `build` directory is not exists.
3. Replace this list to description of your xxh plugin
4. Push your commits and rename your repo to `xxh-plugin-zsh-yourtitle`
5. Install the plugin to your xxh home:
```
cd ~/.xxh/xxh/plugins
git clone --depth 1 https://github.com/yourname/xxh-plugin-zsh-yourtitle

# build it if needed
./xxh-plugin-zsh-yourtitle/build.xsh
```
6. Try connect in update mode: `xxh [user@]host[:port] +s zsh +if`
