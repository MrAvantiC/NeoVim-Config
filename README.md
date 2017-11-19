# My NVIM-configuration

## Requirement
* installed version of NVIM
* AG (SilverSearcher) 

## Installation
1. Install NVIM with at least version 0.2.0 on current machine
  * apt-get on Ubuntu or brew on OSX: https://github.com/neovim/neovim/wiki/Installing-Neovim
  * Make sure install related python modules with it - for help see: `:help provider-python` in vim
2. After installing, open up NVIM, do `:CheckHealth` and resolve eventual missing dependencies
3. Clone this repo to `~/.config/nvim`
  * NVIM should automatically recognize the configurations thanks to the `XDG_Base_Directory` conventions
4. Open init.vim with NVIM and do `:PlugInstall` to install plugins via vim-plug
  * Make sure all the Plugins install successfully, resolve eventual problems
  * After installing, do `:PlugUpdate` do update all plugins
5. To make use of text-search, we need to install AG (aka SilverSearcher)
  * apt-get on Ubuntu or brew on OSX: https://github.com/ggreer/the_silver_searcher
6. Make sure your terminal supports 256 colors (e.g. on mac: xterm-256color in iterm2)
7. Install a custom font of your choice to make text look good (e.g. Sauce Code Powerline light)
  * Note: To get the Devicons inside NerdTree working you need to install a patched font: https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## Installing new plugins
For example install vim-fugitive just add the plugin-source (see [examples](https://github.com/junegunn/vim-plug#example)) to the `init.vim`-file and execute `:PlugInstall`

## Structure
* `init.vim`-file contains global configurations
  * List of Plugin definitons
  * Global code-style settings (indenting, scrolling, etc.)
  * Custom, global colors for the terminal (only works properly if terminal supports it)
  * Most of the general, custom keybinds
* .ignore
  * Contains global search-ignore-patterns for FZF and AG
* plugged/
  * Location of installed plugin-files
* ftplugin/
  * Files containing settings for specific file-types
* plugin/
  * Files with plugin-specific settings (e.g. plugin customization and individual shortcuts)
* syntax/
  * Filetype-specific color-settings
* UltiSnips/
  * Filetype-specific snippets
  
## Searching
We are using [FZF](https://github.com/junegunn/fzf) with [FZF.vim](https://github.com/junegunn/fzf.vim) for fuzzy file searching as well as for text searches.
For text searches, FZF acts as a wrapper for AG (SilverSearcher). 

There are two ways to specify what files to ignore:

1. Add them to the global `.ignore`-file located in the `nvim`-folder. Suited well for common files like `node-modules` or minified files
2. Add them to a local .ignore-file in the root of your project-folder. Suited well for project-specific ignore-patterns.

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

## Linting
We are using [ALE](https://github.com/w0rp/ale) for linting.

The plugin detects the current filetype and looks for linters to execute.
Currently all javascript files will automatically be linted with if ESLint is available globally or locally in the working directory, like with: `npm install -D eslint`
The Linters default behaviour is to look in a `.eslintrc` in the root of the project and lint all JavaScript-files on save.

Calling `:ALEFix` inside NVIM will automatically fix most of the simple linting issues.

## Formatting
[ALE](https://github.com/w0rp/ale) can also be used for formatting, e.g. using ESLint with a prettier-plugin.
All you need to do is install the dependencies to the project you need formatting on: 
`npm install -D prettier eslint-plugin-prettier eslint-config-prettier`
(also install ESLint if you haven't already)

After that modify the `.eslintrc` like the following:
```
{
  “extends”: [
    ...
    “prettier”
  ],
  “plugins”: [
    “prettier”
  ],
  “rules”: {
    “prettier/prettier”: “error”
  }
}
```
_Note: Make sure to put prettier-extension last so it can overried the configuration of other extensions._

Again, running `:ALEFix` will allow you to fix occurring errors and warnings.
