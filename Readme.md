# TODO
- [x] setup and document fuzzy search across files
- [ ] setup jj for Esc
- [ ] learn about friendly-snippets
- [ ] fix formatting of lua code in this config
- [ ] setup and document how to move selected lines up/down
- [ ] setup devicons
- [ ] configure ruby snippets 
- [ ] write my configurations for which-key
- [ ] setup some file-tree manage (NERDTree or something better, maybe for Telescope)
- [ ] setup golden-ration plugin
- [ ] setup tabs plugin for my workflow with two vertical splits
- [ ] make Fidget work 
- [ ] make Solargraph work

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
