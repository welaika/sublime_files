weLaika's Sublime Files
===============================

Common packages and configurations for easy sharing and setup

## Installation:

Prerequisites: Sublime must be previously installed and the package control plugin [already installed](https://packagecontrol.io/installation)

1. Fork
2. Clone your fork into "~/.sublime_files":
   `git clone https://github.com/YOURNAME/sublime_files.git ~/.sublime_files`
3. Install:
  `cd ~/.sublime_files && bash install.sh`
5. Edit to suit your needs

This will backup all the sublime_files that you are using in the `~/.sublime_files/backup`
directory and will symlink the `User` foder inside your sublime folder (Mac and Linux supported, the latter poorly tested)

## Features

* sublime text packages. At the moment we're serving the following packages:

  ```
    ├── Color\ Highlighter
    ├── Default\ (Linux).sublime-keymap
    ├── Default\ (OSX).sublime-keymap
    ├── GitGutter.sublime-settings
    ├── MarkdownPreview.sublime-settings
    ├── PHP\ Haml.sublime-settings
    ├── PHP.sublime-settings
    ├── Package\ Control.cache
    ├── Package\ Control.last-run
    ├── Package\ Control.merged-ca-bundle
    ├── Package\ Control.sublime-settings
    ├── Package\ Control.system-ca-bundle
    ├── Package\ Control.user-ca-bundle
    ├── Preferences.sublime-settings
    ├── Ruby\ Haml.sublime-settings
    ├── Ruby\ Slim.sublime-settings
    ├── Ruby.sublime-settings
    ├── RubyTest.last-run
    ├── RubyTest.sublime-settings
    ├── Sass.sublime-settings
    ├── SimpleCov
    ├── SublimeLinter
    ├── SublimeLinter.sublime-settings
    └── Terminal.sublime-settings
    ```

* Pr0nz0rz fresh key maps
  * "\\" to comment
  * "super+k", "super+r" to easylly run ruby tests
  * "super+shift+w" to close all buffs
  * rockstar moves:

  ```
    { "keys": ["ctrl+alt+up"], "command": "scroll_lines", "args": {"amount": 5.0} },
    { "keys": ["ctrl+alt+down"], "command": "scroll_lines", "args": {"amount": -5.0} },
    { "keys": ["ctrl+up"], "command": "move", "args": {"by": "stops", "empty_line": true, "forward": false} },
    { "keys": ["ctrl+down"], "command": "move", "args": {"by": "stops", "empty_line": true, "forward": true} },
    { "keys": ["super+k", "super+c"], "command": "show_at_center" },
  ```

* Sane configurations as garnish.
