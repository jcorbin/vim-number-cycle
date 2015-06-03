# number-cycle.vim

Allows for easy cycling between line numbering modes.

The order is:

1. off
2. absolute numbering
3. relative numbering (only in 7.3+, and with absolute current in
   7.4+)

You'll need to define a mapping for it in `.vimrc`:

```
nmap <leader># <Plug>NumberCycle
```
