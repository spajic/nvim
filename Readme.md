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
- [x] setup tabs plugin for my workflow with two vertical splits
- [x] turn on relative lines numbering
- [x] setup restore session
- [x] setup telescope frecent files to <leader><leader>
- [x] setup telescope search over current buffer
- [x] setup telescope recent files keymap
- [x] setup more convenient keymap to save the current file
- [x] setup golden-ratio plugin
- [x] setup copilot
- [x] setup telescope-bookmarks
- [x] setup clipboard of vim to be the same as system clipboard
- [x] setup my telescope keymaps in which-key 
- [x] go on with primeagen video on his remaps
- [x] setup and document how to move selected lines up/down
- [x] install file-tree plugin
- [x] setup smartcase search
- [x] setup tpope/vim-commentary
- [x] setup `map <Leader>cp :let @+=@% <CR>` to copy current path
- [x] setup bufdelete



- [ ] setup of grouping specs "tabs" together in the bufferline


- [ ] LEARN: how to show git blame and write it down in this Readme
- [ ] LEARN: everyday git operations with Fugitive
- [ ] setup keymaps for bufferline in which-key
  - [ ] close all tabs except current
- [ ] SETUP AND LEARN ror.nvim on example Rails pet project (telegram bot)
- [ ] setup git flow like in this video: https://www.youtube.com/watch?v=IyBAuDPzdFY

- [ ] setup and document keymaps for LSP (see kickstart config)
- [ ] setup code folding, document remaps
- [ ] LEARN: setup filetree and learn to use it
- [ ] LEARN: how to use code snippets (esp for ruby)
- [ ] LEARN: figure out tabs, indenting, auto-formatting with =
- [ ] LEARN: vim + dash = killer documentation (see bookmarks)
- [ ] check out awesome-neovim github repo
- [ ] начать добавлять в lobanov типы и прикрутить LSP для работы с ними
- [ ] setup NeoTest + rspec 
  - [ ] see thoughtbot/vim-rspec

- [ ] check if solargraph for lobanov works with correct rubocop config

- [ ] configure autocomplete keymaps
- [ ] do not delete cmp-path [check that it works] (see lsp-zero readme)
- [ ] setup and check cmd-cmdline
- [ ] setup and check cmd-buffer
- [ ] fix autocomplete weird color

- [ ] setup trouble

- [ ] free ctrl+space keymap of Spotlight search


- [ ] learn to user telescope-file-browser for FS manipulation
- [ ] apply consistent and nice formatting to packer.lua
- [ ] check out plugin from cickstart for better work with tabs and spaces

- [ ] refactor diagnostics settings to appropriate place


- [ ] learn vim-fugitive features
- [ ] learn Treesitter motions, text-objects

- [ ] learn about friendly-snippets
- [ ] fix formatting of lua code in this config
- [ ] configure ruby snippets that I often use
- [ ] write my configurations for which-key

## Smart moves
i", i{, ... inside different quotes, brackets, etc...
iW - inside long::word
ip - indise paragraph
i may be replaced with a - that way it would include the brackets 

so, it is very handy to
- ciw - change a word 
- dap - delete a paragraph
- yi{ - yank inside braces
- viW - visually select long::word
- das - delete a sentence

% - jump to the corresponding bracket
~ - change case of selected letters (lower - upper - lower)

I can move visually selected lines with up/down with J/K (see remap)

## Copy current path to clipboard
`<Leader>cp` -- [C]opy [P]ath

## Smart comments
tpope/vim-commentary

- gc - main command, comment/uncomment a selection in Visual mode
- gcc - comment current line
- gcap - comment a paragraph (accept any motion target)
- use `.` to repeat (useful to toggle comment/uncomment)

## Spellcheck
Works for Russian and English

- [s - previous spelling error
- ]s - next spelling error
- z= - suggest correction

## Russian layout
`Ctrl-^` switches vim to type russian without switching the system layout.

## Backlog
- [ ] check out solargraph-rails (later, than I will have rails pet-project)

## Tabs/Buffers
- ctrl+j - previous tab (buffer)
- ctrl+k - next tab (buffer)
- ctrl+x - close current tab (buffer)
- <Leader>bp - [B]uffer [P]ick

Buffer - opened file
Window - split
Tabs - group of windows (like another view or perspective)

So what is Tabline in other editors is Bufferline in vim.

I overall like plugin `bufferline.nvim`, it's beautiful and feature-rich.

But also where is `zefei/vim-wintabs` plugin - it's not so fancy, but it ties buffers to windows! So you can have a set of buffers for each split, that resembles other editors.

But where is also `tiagovla/scope.nvim` plugin, that makes buffers belong to tabs.

So I'll give a try for `bufferline` + `scope`.

If scoupe could tie tabs to windows that would be perfect.

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
