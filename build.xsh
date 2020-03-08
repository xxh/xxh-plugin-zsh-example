#!/usr/bin/env xonsh
#
# This script should be executed to prepare the plugin on local xxh.
#
# Example:
#  * https://github.com/xxh/xxh-plugin-zsh-ohmyzsh
#

plugin_path = pf"{__file__}".absolute().parent
plugin_build_path = plugin_path / 'build'

mkdir -p @(plugin_build_path)

pluginrc_file = plugin_path/'pluginrc.zsh'
if pluginrc_file.exists():
    cp @(pluginrc_file) @(plugin_build_path)
