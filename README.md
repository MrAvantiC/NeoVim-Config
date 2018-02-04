# My NVIM-configuration

## Requirement
* installed version of NVIM
* AG (SilverSearcher) 
* Node and NPM (for plugin post-install hook)

## Installation
1. Install NVIM 
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

## Autocompletion
All filetypes have autocompletion powered by Deoplete. Additionally, JavaScript-files get improved completion through code analysis through TernJS.
To enable this, you need to have Tern installed globallyand also have a `.tern-project`-file inside your current working directory, otherwise you only get default completions.

A sample file could look like this:
```
{
  "ecmaVersion": 7,
  "libs": [
    "ecmascript",
    "browser",
    "react"
  ],
  "loadEagerly": [
    "node_modules/react/dist/react.js",
    "node_modules/react-dom/dist/react-dom.js",
    "node_modules/react-dom/dist/react-dom-server.js",
    "node_modules/whatwg-fetch/fetch.js",
    "node_modules/moment/moment.js"
  ],
  "plugins": {
    "node": { },
    "modules": { },
    "es_modules" : { },
    "doc_comment": { "fullDocs": true },
    "complete_strings": {}
  }
}
```

## Linting
We are using [ALE](https://github.com/w0rp/ale) for linting.

The plugin detects the current filetype and looks for linters to execute.
Currently all JavaScript-files will automatically be linted with if ESLint is available globally or locally in the working directory, like with: `npm install -D eslint`
The Linters default behaviour is to look in a `.eslintrc` in the root of the project and lint all JavaScript-files on save.

## Formatting
[ALE](https://github.com/w0rp/ale) can also be used for formatting, e.g. using Prettier and/or ESLint.
All you need to do is install the dependencies, either globally or locally in the working directory:
`npm install -D prettier eslint`

After that every save on a JavaScript or JSX file will automatically cause formatting by prettier and remaining linter-warnings and -errors will be fixed by ESLint.
