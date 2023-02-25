# TODO
- [x] setup and document fuzzy search across files
- [x] setup lua statusline
- [x] fix wrong lsp settings
- [x] setup git symbols in the gutter
- [x] remove annoying symbols from LSP in the gutter
- [x] make Fidget work 
- [x] setup devicons
- [x] setup some file-tree manage (NERDTree or something better, maybe for Telescope)
- [x] make Solargraph work
- [x] setup jj for Esc
- [x] setup lsp `Format` command to apply rubocop or other formatters
- [ ] setup telescope recent files keymap
- [ ] check out telescope frecency options
- [ ] setup tabs plugin for my workflow with two vertical splits
- [ ] setup golden-ratio plugin

- [ ] setup and document keymaps for LSP (see kickstart)
- [ ] do not delete cmp-path [check that it works] (see lsp-zero readme)
- [ ] setup and check cmd-cmdline
- [ ] setup and check cmd-buffer
- [ ] refactor diagnostics settings to appropriate place

- [ ] learn about friendly-snippets
- [ ] fix formatting of lua code in this config
- [ ] setup and document how to move selected lines up/down
- [ ] configure ruby snippets 
- [ ] write my configurations for which-key

## Notes
For telescope live_grep to work do `brew install ripgrep`

## Fuzzy search

### Telescope
- double space - fuzzy search by file name (only git files)
- <leader>fa - the same, but all files, not only git 
- <leader>fz - fuzzy search files content
- <leader>fc - find for term under the [c]ursor 
- <leader>fg - grep files contents via ripgrep (NOT FUZZY but works with REGEXP)

Plus I have telescope-fzf-native installed. It adds fzf syntax to telescope picker:

| Token     | Match type                 | Description                          |
| --------- | -------------------------- | ------------------------------------ |
| `sbtrkt`  | fuzzy-match                | Items that match `sbtrkt`            |
| `'wild`   | exact-match (quoted)       | Items that include `wild`            |
| `^music`  | prefix-exact-match         | Items that start with `music`        |
| `.mp3$`   | suffix-exact-match         | Items that end with `.mp3`           |
| `!fire`   | inverse-exact-match        | Items that do not include `fire`     |
| `!^music` | inverse-prefix-exact-match | Items that do not start with `music` |
| `!.mp3$`  | inverse-suffix-exact-match | Items that do not end with `.mp3`    |

### Font
For icons to work we need to install some of Nerd fonts. https://www.nerdfonts.com

I use `Meslo LGM Nerd Font Regular` (not Mono, Mono icons look smaller than they should)

Font settings in Neovim are the same as in Iterm2 in general.
