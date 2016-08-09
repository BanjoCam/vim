#### Surrounding things with other thing

- surround an entire line: yss__something__
- surround a word: ysiw__something__
- change existing ones: cs instead of ys

#### open buffer as vertical split:
- :vert sb N
    - where N is the buffer number

#### see _vimrc for shortcuts you've made.
- like, commaNT to trigger nerdtree
- or commaBG to cycle between dark and light backgrounds.

#### replace all:
`:%s/find/replace`

#### strip trailing whitespace
(defined in vimrc)
{% codeblock %}
,W
{% endcodeblock %}


#### jump to end of pasted content
When you paste text, you have marks [ and ] set to the beginning and end of pasted text. Therefore you can use `[ and `] to move the cursor to begin/end of pasted content.
note, I remapped p to automatically push `] so we jump automatically

#### Helpful autocomplete tips ####
[useful stackoverflow answer](http://superuser.com/questions/343443/are-there-any-autocompletion-plugins-for-vim)

#### replace all instances of currently highlited text ####
[Useful reddit post](https://www.reddit.com/r/vim/comments/19sm9v/replace_all_instances_of_currently_highlighted/)
[Useful SO post](http://stackoverflow.com/questions/5541253/in-vim-replace-all-occurrences-of-current-term-under-cursor)

#### Search inside entire folder ####
- using the magic of grep!
`:grep -F -r thing_to_search *.xyz`

#### Copy paste ####
[Useful copy-paste register link](http://stackoverflow.com/questions/1497958/how-do-i-use-vim-registers)
[General vim useful commands](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/)
[You don't need multiple cursors!](https://medium.com/@schtoeffel/you-don-t-need-more-than-one-cursor-in-vim-2c44117d51db#.7dvc7df8m)
`:reg` shows a list of registers
`"0` only grabs stuff from y (yank) command, whereas "" is the default register
"*p or "+p is paste from actual computer clipboard

#### Macros! ####
[Macro overview. Awesome!](http://vim.wikia.com/wiki/Macros)
- start recording: qg (where g is the name of register)
- stop: q again
- @g : run the macro
- @@ : keep repeating the macro




