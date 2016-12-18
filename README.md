# My NVIM-configuration

## Requirement
* at least NVIM 0.2.0
* AG (SilverSearcher) for searching in files
* JS-Beautify for autoformatting
* Tern for JavaScript-autosuggestions

## Installation
1. Install NVIM with at least version 0.2.0 on current machine
  * apt-get on Ubuntu or brew on OSX: https://github.com/neovim/neovim/wiki/Installing-Neovim
  * Make sure install related python modules with it - for help see: `:help provider-python` in vim
2. After installing, open up NVIM, do `:CheckHealth` and resolve eventual missing dependencies
3. Clone this repo to `~/.config/nvim`
  * NVIM should automatically recognize the configurations thanks to the `XDG_Base_Directory` conventions
4. Install `vim-plug`, our plugin manager
  * `mkdir ~/.config/nvim/autoload`
  * clone https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim into there
5. Open init.vim with NVIM and do `:PlugInstall`
  * Make sure all the Plugins install successfully, resolve eventual problems
  * After installing, do `:PlugUpdate` do update all plugins
6. To make use of text-search, we need to install AG (aka SilverSearcher)
  * apt-get on Ubuntu or brew on OSX: https://github.com/ggreer/the_silver_searcher
7. Enable JavaSript-Autosuggestions by installing Tern
  * `npm install -g tern`
7. For automatic formatting of files we need JS-Beautify
  * `npm install -g js-beautify`
8. Make sure your terminal supports 256 colors (e.g. on mac: xterm-256color in iterm2)
9. Install a custom font of your choice to make text look good (e.g. Sauce Code Powerline light)

## Installing new plugins
For example install vim-fugitive just add the plugin-source (see [examples](https://github.com/junegunn/vim-plug#example)) to the `init.vim`-file and execute `:PlugInstall`

## Structure
* `init.vim`-file contains global configurations
  * List of Plugin definitons
  * Global code-style settings (indenting, scrolling, etc.)
  * Custom, global colors for the terminal (only works properly if terminal supports it)
  * Most of the general, custom keybinds
* .agignore
  * Contains global search-ignore-patterns for `<Leader>f`
* plugged/
  * Location of installed plugin-files
* ftplugin/
  * Files containing settings for specific file-types
* plugin/
  * Files with plugin-specific settings (e.g. plugin customization and individual shortcuts)
* indent/
  * Files containing filetype-specific indentation-settings
* syntax/
  * Filetype-specific color-settings
* UltiSnips/
  * Filetype-specific snippets
  
## Searching
We are using [FZF](https://github.com/junegunn/fzf) with [FZF.vim](https://github.com/junegunn/fzf.vim) for fuzzy file searching as well as for text searches.
For text searches, FZF acts as a wrapper for AG (SilverSearcher). 

There are two ways to specify what files to ignore:

1. Add them to the global `.agignore`-file located in the `nvim`-folder. Suited well for common files like `node-modules` or minified files
2. Add them to a local .agignore-file in the root of your project-folder. Suited well for project-specific ignore-patterns.

## Autosuggestion
All filetypes have autosuggestions powered by Deoplete. Additionally, JavaScript-files get improved suggestions through code analysis by Tern.
To enable this, you need to have Tern installed globally (see above) and also have a `.tern-project`-file inside your current working directory, otherwise you only get standard suggestions

A sample file could look like this:
```
{
  "ecmaVersion": 6,
  "libs": [
      "browser",
      "jquery"
    ],
  "loadEagerly": [
      "src/scripts/vendor/jquery-2.2.0.js",
      "src/scripts/lib/**/*.js"
    ]
}
```

## Formatting
JS-Files will automatically get formatted on save. To enable this, JS-Beautify has to be installed globally.

## Linting
If a local installation of `eslint` is present in the working directory, it will automatically be recognized and used to lint all JavaScript-files on save.
